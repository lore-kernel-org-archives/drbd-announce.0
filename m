Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 618934203A1
	for <drbd-announce@lists.linbit.com>;
	Thu, 10 Oct 2019 13:19:57 +0200 (CEST)
Received: by mail-wm1-f65.google.com with SMTP id r17so6897648wme.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 10 Oct 2019 04:19:57 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 10 Oct 2019 13:19:53 +0200
Message-ID: <2821659.NS9FCa6JyO@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.20-1
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

With this release the big news is the new way we deal with compatibility
for older linux kernels. It used to be a mechanism based of #IFDEFs that
tainted the main drbd code more and more.
Now the DRBD code is clean Linux-upstream compatible code. In order that
you can compile it against older and distribution kernels the build
process automatically applies a compat-patch. These compat-patches are
computed using coccinelle/spatch semantic patches. See here for more
information:

https://www.linbit.com/en/how-to-make-drbd-compatible-to-the-linux-kernel/

During the long release-candidate phase of this release we had the idea to
offer spatch as a service. I.e. make sure your build environment may connect
to the internet, building should work and you do not need to care about
installing coccinelle/spatch into your build environment.

Other than that the number of bug-fixes that landed in this release is
higher than in any previous releases. What started as a loosely knit group
of open source uses is now a group of serious enterprise users. This time
we got a lot of feedback during the RC phase that allowed us to iron out
more issues than with any previous releases.

A big thank you to our community!



Here is the changelog:

9.0.20-1 (api:genl2/proto:86-115/transport:14)
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
 * completing implications of "allow-remote-read=3Dno"; i.e.  when not to
   create a new-current-UUID as read-write access to the data set was lost;
   also fail both reads and writes if reads are no longer possible
 * new option value "rr-conflict=3Dretry-connect"; that helps in scenarios =
with
   quorum where stopping a service takes longer than a temporarily network
   outage and DRBD's reconnect
 * code cleanups, introduced enums for remaining magic numbers
 * new kernel-backward-compatibility framework based on spatch/coccinelle,
   replacing an unmaintainable moloch of C preprocessor hell; Merged the
   complete kernel-compat submodule
 * ships with pre-computed compat-patches for main distros' kernels; in case
   an other kernel is found it tries to use local spatch, if that is not
   installed the build process tries to use a LINBIT hosted web service
   to create the compat patch ("spatch-as-a-service").
 * compat with up to Linux-5.3-rc2

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.20-1.tar.gz
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack
https://github.com/LINBIT/drbd/commits/7dce3c8be99f4912f1490f9bb37f5aff6c87=
3335

cheers!
=2D-=20
LINBIT | Keeping The Digital World Running

DRBD=AE and LINBIT=AE are registered trademarks of LINBIT, Austria.



