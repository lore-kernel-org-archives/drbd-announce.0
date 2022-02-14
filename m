Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 8E74B42036B
	for <drbd-announce@lists.linbit.com>;
	Mon, 14 Feb 2022 18:02:45 +0100 (CET)
Received: by mail-wr1-f49.google.com with SMTP id d27so27938488wrc.6
	for <drbd-announce@lists.linbit.com>;
	Mon, 14 Feb 2022 09:02:45 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 14 Feb 2022 18:02:34 +0100
Message-ID: <CADGDV=Uj9VTP1uFu1QpXS8Une-hars2zVzpUYNA-X0-Fwm6MEA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.6 and drbd-9.2.0-rc.4
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

In this cycle, we learned that DRBD was not dealing correctly with internal
meta-data on backing devices larger than 128TB. Why did we not discover this
earlier? (we pretend that DRBD can hand up to 1PB per volume/device) Well,
we tested with device-mapper-based thinly provisioned LVs. It turns out that
device-mapper considers 0-byte sized write requests valid. The bug was that
DRBD issued writes with a length of 0 bytes. The first customer that used a
SCSI device larger than 128TB then made us aware of the problem.

Considerable effort went into recovering IO and unfreezing requests after
and IO frozen DRBD unfreezes.

Another surprise was that DRBD caused unnecessary allocations in thinly
provisioned backing devices when the resync was throttled. We took the
chance to rework this part of the code. Now it will never cause such
unnecessary allocations. The real resync rate is now closer to the requested
c-max-rate setting than before.

A drawback of the new implementation is that with high discard-granularities
(e.g. 512KB) the slowest it can go is 5MB/sec. I believe that is just an
academic problem, in the real world people want to resync a lot quicker, and
real devices with such high discard granularity are rare.


9.1.6 (api:genl2/proto:110-121/transport:17)
--------
 * fix IO to internal meta-data for backing device larger than 128TB
 * fix resending requests towards diskless peers, this is relevant when
   fencing is enabled, but the connection is re-established before fencing
   succeeds; when the bug triggered it lead to "stuck" requests
 * remove lockless buffer pages handling; it still contained very hard to
   trigger bugs
 * make sure DRBD's resync does not cause unnecessary allocation in a
   thinly provisioned backing device on a resync target node
 * avoid unnecessary resync (or split-brain) due to a wrongly generated
   new current UUID when an already IO frozen DBRD gets new writes
 * small fix to autopromote, when an application tries a read-only open
   before it does a read-write open immediately after the peer primary
   vanished ungracefully
 * split out the secure boot key into a package on its own, that is
   necessary to allow installation of multiple drbd kernel module packages
 * Support for building containers for flacar linux

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.6.tar.gz
https://github.com/LINBIT/drbd/commit/f85adeb71f16a0aead1e875665e2fb68852d94eb
...and drbd-9.2.0-rc.4 contains the same changes.

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.0-rc.4.tar.gz
https://github.com/LINBIT/drbd/commit/5828124e330af6238cec2bf396145b4e04487c5f
