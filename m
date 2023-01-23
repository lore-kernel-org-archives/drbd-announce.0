Return-Path: <philipp.reisner@linbit.com>
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
	[209.85.208.175])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 0EFEF4201A2
	for <drbd-announce@lists.linbit.com>;
	Mon, 23 Jan 2023 17:25:06 +0100 (CET)
Received: by mail-lj1-f175.google.com with SMTP id e16so13707249ljn.3
	for <drbd-announce@lists.linbit.com>;
	Mon, 23 Jan 2023 08:25:06 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 23 Jan 2023 17:24:54 +0100
Message-ID: <CADGDV=WWAOK-ux31Ektp79xgdN-O4c0KbDXUu4B9EHRNoffRkA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] (no subject)
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

Dear DRBD-users,

This is release candidate one of drbd-9.1.13 and drbd-9.2.2. In the
number of changed lines, the work on improving quorum is the most
significant change in this upcoming release. Here is a minor example
that highlights the improvement.

Consider nodes A, B, and C with ascending node IDs.

        C       | C is diskless
       / \      | A is Secondary and has a backing disk
      A---B     | B is Secondary, having a backing disk

Step 1: A does a graceful disconnect from B

        C       | C is diskless and has quorum
       / \      | A is Secondary with disk and has quorum
      A   B     | B is Secondary with disk and has quorum

Step 2: A disconnects unexpectedly from C (with --force or crash)

        C       | C is with quorum since it is part of 2 out of 3
         \      | A is **without** quorum
      A   B     | B is with quorum since it is part of 2 out of 3

Step 3: C disconnects unexpectedly from B (with --force or crash)

        C       | C is without quorum
                | A is without quorum
      A   B     | B is ...

With earlier versions of DRBD B had lost quorum as well. Starting
with drbd-9.1.13 (drbd drbd-9.2.2) DRBD keeps quorum in this situation.
It can do that because it knows that A can not have quorum.


**Important news regarding drbd-9.2:**

We fixed all known regressions of drbd-9.2.0. drbd-9.2 has heavily
improved resync behavior when coordinating between application I/O and
resync I/O, and handling resyncs of thinly provisioned backing
storage. It has improved latency for all write requests.

Please help test the release candidates.

9.1.13-rc.1 (api:genl2/proto:110-121/transport:17)
--------
 * when calculating if a partition has quorum, take into account if
   the missing nodes might have a quorum
 * fix forget-peer for diskless peers
 * clear the resync_again counter upon disconnect
 * also call the unfence handler when no resync happens
 * do not set bitmap bits when attaching to an up-to-date disk (late)
 * work on bringing the out-of-tree DRBD9 closer to DRBD in the upstream
   kernel; Use lru_cahche.ko from the installed kernel whenever possible

9.2.2-rc.1 (api:genl2/proto:110-121/transport:18)
--------
 * fix spurious PingAck timeout a second time; we need to use a drbd
   owned workqueue to guarantee the required low-latency replies
 * Fix connection abort during resync with log message
   "Unexpected resync write ack at ..." a regression of drbd-9.2
 * merged changes from drbd-9.1.13
  - when calculating if a partition has quorum, take into account if
    the missing nodes might have a quorum
  - fix forget-peer for diskless peers
  - clear the resync_again counter upon disconnect
  - also call the unfence handler when no resync happens
  - do not set bitmap bits when attaching to an up-to-date disk (late)
  - work on bringing the out-of-tree DRBD9 closer to DRBD in the upstream
    kernel; Use lru_cahche.ko from the installed kernel whenever possible

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.13-rc.1.tar.gz
https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.2-rc.1.tar.gz

https://github.com/LINBIT/drbd/commit/4b882c56cfe8095bff585605c227356562ef8e44
https://github.com/LINBIT/drbd/commit/66e12539362b98d7d0b7bfb9f3b36af846457363

-Phil
