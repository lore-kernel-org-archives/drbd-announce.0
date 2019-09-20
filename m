Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 015C9420316
	for <drbd-announce@lists.linbit.com>;
	Fri, 20 Sep 2019 14:58:19 +0200 (CEST)
Received: by mail-wr1-f68.google.com with SMTP id y19so6697607wrd.3
	for <drbd-announce@lists.linbit.com>;
	Fri, 20 Sep 2019 05:58:19 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 20 Sep 2019 14:49:27 +0200
Message-ID: <1717213.ByRUQYXvLB@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.20-0rc1
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

a lot has happened since the last release. We rolled in a new way how
kernel compatibility is handled. It is based on spatch/coccinelle
now. While it was painful to switch we hope that the compat layer
is now easier to understand while we move forward.
Here is a blog-post that describes that in more detail:
https://www.linbit.com/en/how-to-make-drbd-compatible-to-the-linux-kernel/

In this cycle we have a bit more bug fixes that usual. As the bugs
are more sophisticated and non obvious, out method transforms into a
test-driven approach to development. See the new tests in the drbd9
testsuite.

A number of corner-cases that lead to false split-brains has been
resolved.

Please help testing this pre-release.


9.0.20-0rc1 (api:genl2/proto:86-115/transport:14)
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


https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.20-0rc1.tar.gz
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack
https://github.com/LINBIT/drbd/commit/1370004953ad8dad28a0ea4cdab3f9e685f5e=
47e

best regards,
 Phil
=2D-=20
LINBIT | Keeping The Digital World Running

DRBD=AE and LINBIT=AE are registered trademarks of LINBIT, Austria.



