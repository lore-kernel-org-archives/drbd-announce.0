Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 36FF6420385
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 Mar 2020 14:40:57 +0100 (CET)
Received: by mail-wm1-f47.google.com with SMTP id d198so3240787wmd.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 Mar 2020 06:40:57 -0700 (PDT)
Date: Tue, 24 Mar 2020 14:32:48 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20200324133248.GT9241@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox-5.0.0
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <https://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <https://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Dear PVE users,

This is a feature release that will bring 1 very useful feature, but
also breaks (very legacy) compatibility with older plugins.

- The feature:
What this does is to try to create the DRBD resource diskfully if it is
possible on the node where the VM will be started.

A common setup might consist of 3 nodes, where all have a given storage pool,
with a replica count of 2. By just auto-placing the resource, it might happened
that the storage is placed on nodes A and C, but the VM is actually executed on
B. This is fine, the plugin creates a diskless DRBD resource on B, and all data
is read and written via the network. Still, it is obviously preferable to have
local storage.

What happens is that the plugin tries to create a diskful resource on the node
that will run the VM (with the same storage pool as defined in the RG (resource
group)).

If this fails: Ignore it, run an auto-place (as we always did). It might find
another placement.
If this succeeds: Cool, still run auto-place, we might need to create other
replicas on other nodes to fulfill the overall replica count.

As this is a new behavior (i.e., storage is no longer equally distributed, but
the local node is preferred), this behavior has to be enabled as follows:

drbd: drbdboth
   content images,rootdir
   controller 192.168.122.94
   resourcegroup onboth
   preferlocal yes

You will need the latest stable LINSTOR for that to work!

- What we remove:
This new feature is very much coupled to LINSTOR RGs. As this is the preferred
method to configure DRBD/LINSTOR storage for some time, this commit also
removes the old legacy options (setting "redundancy" and "storagepool" via
/etc/pve/storage.cfg). These (and all other LINSTOR/DRBD) options have to be
set on RG level. Updating from 4.x is described here:
https://www.linbit.com/drbd-user-guide/users-guide-linstor/#s-proxmox-ls-upgrades

https://www.linbit.com/downloads/connectors/linstor-proxmox-5.0.0.tar.gz
https://github.com/LINBIT/linstor-proxmox/commit/8d6660aadb9f94503d4d733b58b84c53908856f0

Regards, rck
