Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 41EB1420207
	for <drbd-announce@lists.linbit.com>;
	Wed,  2 Aug 2023 11:14:21 +0200 (CEST)
Received: by mail-wm1-f41.google.com with SMTP id
	5b1f17b1804b1-3fbc5d5742eso70537505e9.3
	for <drbd-announce@lists.linbit.com>;
	Wed, 02 Aug 2023 02:14:21 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 02 Aug 2023 11:14:20 +0200
Message-ID: <86wmydergz.fsf@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.16-rc.1 and drbd-9.2.5-rc.1
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

Following the usual about eight-week release cadence, here are
drbd-9.1.16-rc.1 and drbd-9.2.5-rc.1 comming.

This is a boring release because we fixed no exceptional bugs. All the
addressed bugs need very particular conditions to trigger. Nearly all of
them have consequences that you can work around easily.

Of course, they consume the attention of the operations teams when they
trigger, so we need to fix them. That becomes increasingly important as
our customers use DRBD and DRBD controlled by LINSTOR or other
orchestration tools on larger and larger scales.

An outstanding fact is that we had not a single bug fix specific to
drbd-9.2 in this cycle.

Please help test the release candidate.

9.1.16-rc.1 (api:genl2/proto:86-121/transport:18)
9.2.5-rc.1 (api:genl2/proto:86-122/transport:18)
--------
 * shorten times DRBD keeps IRQs on one CPU disabled. Could lead
   to connection interruption under specific conditions
 * fix a corner case where resync did not start after resync-pause
   state flapped
 * fix online adding of volumes/minors to an already connected resource
 * fix a possible split-brain situation with quorum enabled with
   ping-timeout set to (unusual) high value
 * fix a locking problem that could lead to kernel OOPS
 * ensure resync can continue (bitmap-based) after interruption
   also when it started as a full-resync first
 * correctly handle meta-data when forgetting diskless peers
 * fix a possibility of getting a split-brain although quorum enabled
 * correctly propagate UUIDs after resync following a resize operation.
   Consequence could be a full resync instead of a bitmap-based one
 * fix a rare race condition that can cause a drbd device to end up
   with WFBitMapS/Established replication states

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.16-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/355239f7ace131cc5e61f82a5d6d7d2cd80352fb

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.5-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/6a1961ca9a5accedbd02d5766c3191e728c8e2c3

cheers,
 Philipp
