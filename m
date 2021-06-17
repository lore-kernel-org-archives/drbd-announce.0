Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B56F94202EC
	for <drbd-announce@lists.linbit.com>;
	Thu, 17 Jun 2021 15:06:17 +0200 (CEST)
Received: by mail-wm1-f45.google.com with SMTP id m3so3385832wms.4
	for <drbd-announce@lists.linbit.com>;
	Thu, 17 Jun 2021 06:06:17 -0700 (PDT)
Date: Thu, 17 Jun 2021 15:06:15 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210617130615.GP1398@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox v5.1.6
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

Dear DRBD on Proxmox users,

This is version 5.1.6 of the PVE Plugin for LINSTOR.

If you are satisfied with your current cluster, you don't need to update.

Quoting the commit message that triggered that release:

Proxmox queries the status of all storages every few seconds. There is a cache
they pass in, but that only makes sense for multiple storages of one storage
type (i.e., 'drbd'). One can then use that passed in cache for a "query loop"
of all storages of that particular type. That helps, but still the plugin's
status function gets called every few seconds with a cold cache.

On large clusters (~10 nodes, a few hundred resources), executing the
expensive "storage-pool list" query in LINSTOR every few seconds on all nodes
saturates the LINSTOR REST-API/controller and the cluster becomes
slow/unusable.

As the plugin gets instantiated over and over again, it is not possible to keep
a "plugin global" cache, so moving the cache to the file system looks like a
good fit.

The new option 'statuscache' can be set to a positive number of seconds and
will then keep a status cache (currently only the storage pools) for that
number of seconds. If one wants to make use of this, the option has to be set
on *all* drbd storages in /etc/pve/storage.cfg.

The cache is written to the file system in /var/cache/linstor-proxmox/. Just
having the cache and using it was good enough to fix that particular customer's
issues. You also might want to use a tmpfs for that directory, but that is up
to you.

GIT: https://github.com/LINBIT/linstor-proxmox/commit/b337aa846bcb526cc384dd588e6026b61dffcac1
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-5.1.6.tar.gz

Regards, rck
