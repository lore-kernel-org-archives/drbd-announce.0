Return-Path: <philipp.reisner@linbit.com>
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 00DFA4202BE
	for <drbd-announce@lists.linbit.com>;
	Mon,  5 Jun 2023 11:20:26 +0200 (CEST)
Received: by mail-ed1-f43.google.com with SMTP id
	4fb4d7f45d1cf-5147f7d045bso6737889a12.2
	for <drbd-announce@lists.linbit.com>;
	Mon, 05 Jun 2023 02:20:26 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 05 Jun 2023 11:20:24 +0200
Message-ID: <86bkhu1d0n.fsf@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.15 and drbd-9.2.4
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

Hello DRBD users,

I am glad to announce yet another release, drbd-9.1.15 and drbd-9.2.4.

Our 'eat your own dog food' policy led to another bug we were able to
fix shortly before the release (during the rc.1 phase). It reproduces on
drbd-9.2. On drbd-9.1 it reproduces only with a non-default CPU mask
configured.

I know that users of recent kernels are eagerly waiting for this
release. Even if a previous DRBD release was compile-time compatible
with Linux-6.2 and later, the resulting module crashed your
system. This got fixed.

You find bug fixes at the top of the changelog with bitter
consequences, like locking up a resource or causing an OOPS. What they
have in common is that they are about very rare edge cases. The bugs
have been in the code for a very long time.

As usual, when fixing these bugs, we improved the test-suite as well,
which runs 82 tests on every commit by now. Recently I learned that by
running these tests, we cover 92.1% of all functions of the DRBD
kernel code and 78.6% of all code lines. It might be that the real
number is even higher since that first coverage analysis did not
include the test runs, where we test protocol compatibility with older
DRBD releases.

Due to the number of fixes of bugs that have severe consequences,
I recommend upgrading.

9.1.15 (api:genl2/proto:110-121/transport:17)
--------
 * fix how flush requests are marked when submitted to the Linux IO
   stack on the secondary node
 * when establishing a connection failed with a two-pc timeout, a
   receiver thread deadlocked, causing drbdsetup calls to block on
   that resource (difficult to trigger)
 * fixed a NULL-ptr deref (a OOPS) caused by a rare race condition
   while taking a resource down
 * fix a possible hard kernel-lockup, can only be triggerd when a
   CPU-mask is configured
 * updated kernel compatibility to at least Linux head and also fixed
   a bug in the compat checks/rules that caused OOPSes of the previous
   drbd releases when compiled with Linux-6.2 (or on RHEL 9.2 kernel).
 * fix an aspect of the data-generation (UUID) handling where DRBD
   failed to do a resync when a diskless node in the remaining
   partition promotes and demotes while a diskful node is isolated
 * fix an aspect of the data-generation (UUID) handling where DRBD
   considered a node to have unrelated data; this bug was triggered by
   a sequence involving removing two nodes from a cluster and readding
   one with the "day-0" UUIDs.
 * do not block specific state changes (promote, demote, attach, and
   detach) when only some nodes add a new minor

9.2.4 (api:genl2/proto:110-122/transport:18)
--------
 * fix a possible deadlock when disconnecting during a resync
 * fix a possible hard kernel-lockup
 * changes merged from drbd-9.1.15
  - fix how flush requests are marked when submitted to the Linux IO
    stack on the secondary node
  - when establishing a connection failed with a two-pc timeout, a
    receiver thread deadlocked, causing drbdsetup calls to block on
    that resource (difficult to trigger)
  - fixed a NULL-ptr deref (a OOPS) caused by a rare race condition
    while taking a resource down
  - updated kernel compatibility to at least Linux head and also fixed
    a bug in the compat checks/rules that caused OOPSes of the previous
    drbd releases when compiled with Linux-6.2 (or on RHEL 9.2 kernel).
  - fix an aspect of the data-generation (UUID) handling where DRBD
    failed to do a resync when a diskless node in the remaining
    partition promotes and demotes while a diskful node is isolated
  - fix an aspect of the data-generation (UUID) handling where DRBD
    considered a node to have unrelated data; this bug was triggered by
    a sequence involving removing two nodes from a cluster and readding
    one with the "day-0" UUIDs.
  - do not block specific state changes (promote, demote, attach, and
    detach) when only some nodes add a new minor


https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.15.tar.gz
https://github.com/LINBIT/drbd/commit/b6d225583f833dc02d3e13cd92864b30f2fd442a

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.4.tar.gz
https://github.com/LINBIT/drbd/commit/460cfc1025ba5abb63ac9ed2895d6cec178bb39c
