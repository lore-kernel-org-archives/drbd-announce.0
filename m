Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 437004203C7
	for <drbd-announce@lists.linbit.com>;
	Wed, 25 Sep 2019 13:33:38 +0200 (CEST)
Received: by mail-wm1-f67.google.com with SMTP id b24so4443160wmj.5
	for <drbd-announce@lists.linbit.com>;
	Wed, 25 Sep 2019 04:33:38 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 25 Sep 2019 13:24:17 +0200
Message-ID: <9937327.lpNjVRovSk@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.20-0rc2
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

Rc1 was broken on recent RHELs. The problem was that some compat
tests were failing for wrong reason, compile-time disabling some features.
Well, and then the running RHEL kernel was sending IO requests with
exactly those feature flags down to DRBD. Not good. That resulted in
DRBD sending stuff on the network the receiving DRBD can not digest.

The other commits touch on building in Proxmox environment,
where the .tgz does not contain a pre-computed compat patch, but the
platform has a working coccinelle package.

Please help testing this pre-release. It nothing serious is found
we will have a final release on October 2nd.

9.0.20-0rc2 (api:genl2/proto:86-115/transport:14)
=2D-------
 * fix a case of false split brain detection if a diskless node promotes
   multiple times, by aligning the rules for generating a new current-UUID
   on a diskless nodes with them on a node with disk
 * check if we still have quorum by exchanging a drbd-ping with peers
   before creating new current UUID after loosing one peer
 * fix after weak handling to not interfere with reconciliation resyncs
 * retry connect when one of the relevant flags changes during UUID exchange
 * fix reconciliation resync if one of the secondary got an current-UUID up=
date
 * fix resync to make progress after it was paused by an other resync opera=
tion
 * fix false split-brains when a resync source changes current-UUID during
   resync operation
 * fix restore of D_OUTDATED when the resource first only attached and
   then the peer objects are created (in contrast to the usual, new-peer,
   attach, connect)
 * abort creating new current-UUID when writing to meta-data fails in
   the moment where the new-current-UUID should be written
 * removed DRBD marking itself as read-only when secondary; this flag
   was exposed using the BLKROGET ioctl; that should be left to user-land
   use; recent KVM checks that flag, and does not dare auto-promote when
   set by DRBD
 * fix a small memory-leak when creating peer devices
 * fix a possible information leak of kernel memory that pads net-link pack=
ets
 * code cleanups, introduced enums for remaining magic numbers
 * new kernel-backward-compatibility framework based on spatch/coccinelle,
   replacing an unmaintainable moloch of C preprocessor hell; Merged the
   complete kernel-compat submodule
 * compat with up to Linux-5.3-rc2

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.20-0rc2.tar.gz
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack
https://github.com/LINBIT/drbd/commit/692f11c2145a03d1a949758400f19b028e370=
40a

best regards,
 Phil

=2D-=20
LINBIT | Keeping The Digital World Running

DRBD=AE and LINBIT=AE are registered trademarks of LINBIT, Austria.



