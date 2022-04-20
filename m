Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id F0DEA420127
	for <drbd-announce@lists.linbit.com>;
	Wed, 20 Apr 2022 22:33:29 +0200 (CEST)
Received: by mail-wr1-f50.google.com with SMTP id s29so747476wrb.8
	for <drbd-announce@lists.linbit.com>;
	Wed, 20 Apr 2022 13:33:29 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Wed, 20 Apr 2022 22:33:17 +0200
Message-ID: <CADGDV=VTPo8ty8x+8fEACN6UC7yHG22LQRCYedgczoFwqTYHRw@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.7
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

Hello,

Since rc.2 we fixed the issue on Linux 5.15. Other than that I am
repeating the text I wrote for rc.2: We were working on smaller
issues with unfreezing IO-requests after quorum loss and regaining
quorum. At this point, one thing gave the other. We discovered how difficult
it is to gracefully recover a primary node that lost quorum. It was like a
super narrow path, where every misstep led to the need to reboot the
node. Examples:
  * When you did a drbdadm secondary while someone held the device open (a
    mounted FS) -> deadlock [fixed now].
  * You needed to reconfigure 'on-no-quorum' from 'suspend' to 'io-error' and
    then unmount the filesystem
  * Finally, make the node secondary and re-integrate it with the others

Changing the DRBD configuration just for recovering a node is not
practicable when we advertise to use LINSTOR for configuring DRBD. The
end-users are even not aware of LINSTOR but use it through the Kubernetes
and the linstor CSI driver.

The solution: drbdadm secondary --force
Starting with the next drbd-utils v9.21 a forced demotion allows you to make
a primary with suspended IOs secondary. All the frozen IO requests terminate
with IO-errors, causing the filesystem to go into read-only mode. Unmount
it. Recovery finished.
For a similar purpose, it got a new configuration option
'on-suspended-primary-outdated' which you can set to 'force-secondary'. This
enables automatic recovery of such a primary lost quorum IO suspended
node. When it connects to a partition that has a primary with a more recent
data generation it automatically demotes the primary with the older data and
frozen IO.

It also got compatibility with up to Linux 5.15.

9.1.7 (api:genl2/proto:110-121/transport:17)
--------
 * avoid deadlock upon trying to down an io-frozen DRBD device that
   has a file system mounted
 * fix DRBD to not send too large resync requests at multiples of 8TiB
 * fix for a "forgotten" resync after IO was suspended due to lack of quorum
 * refactored IO suspend/resume fixing several bugs; the worst one could
   lead to premature request completion
 * disable discards on diskless if diskful peers do not support it
 * make demote to secondary a two-phase state transition; that guarantees that
   after demotion, DRBD will not write to any meta-data in the cluster
 * enable "--force primary" in for no-quorum situations
 * allow graceful recovery of primary lacking quorum and therefore
   have frozen IO requests; that includes "--force secondary"
 * following upstream changes to DRBD up to Linux 5.15 and updated compat

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.7.tar.gz
https://github.com/LINBIT/drbd/commit/bfd2450739e3e27cfd0a2eece2cde3d94ad993ae
