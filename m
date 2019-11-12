Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 462A34202F7
	for <drbd-announce@lists.linbit.com>;
	Tue, 12 Nov 2019 15:11:44 +0100 (CET)
Received: by mail-wr1-f66.google.com with SMTP id w9so11889013wrr.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 12 Nov 2019 06:11:44 -0800 (PST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 12 Nov 2019 15:01:40 +0100
Message-ID: <2450200.uzZMujXCxL@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.21-1
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

Hi,

With the drbd-9.0.20 release we changed the kernel compat layer. We tested
carefully on the platforms most of our customers and users have:
RHEL/CentOs 6,7,8 and Ubuntu LTS 16.04 & 18.08. No we realize that
Debian was our blind spot. 9.0.20 does not work on Debian's 4.9 kernel:
It causes DRBD's resync to be slower than usual and causes the resync
to get stuck at always the same point. Probably it also causes a memory
leak.

9.0.21-1 (api:genl2/proto:86-116/transport:14)
=2D-------
 * fix compat for write same on linux 4.9 and the Debian users
 * fix kernel compat for linux 4.8 and 4.9; this mainly affected Debian
   users; The symptoms where slow resync and resync getting stuck always at
   the same point
 * enable resync of lost and re-created backing devices (think lost node) w=
hen
   the backing device was thinly provisioned and its current uuid is pre-set
   to a 'day0 UUID' (by LINSTOR); that works by copying a unused bitmap slot
   which tracks all changes since day 0
 * fix attach when bitmap is on PMEM; before it was set to
   'all blocks out-of-sync' upon attach
 * avoid doing reconciliation resync multiple times by updating the
   resync target's dagtag after if completed successfully
 * return disk-state from Outdated to UpToDate when it loses connection
   while in WFBitMapT and we have a stable and UpToDate peer
 * new option --force-resync flag can be passed to new-current-uuid, that
   can be used to trigger initial resync without touching the role

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.21-1.tar.gz
https://github.com/LINBIT/drbd/commit/449d6bf22b01af7d14a297a4ed3e281aa84c9=
4a5

=2DPhil
=2D-=20
LINBIT | Keeping The Digital World Running

DRBD=AE and LINBIT=AE are registered trademarks of LINBIT, Austria.



