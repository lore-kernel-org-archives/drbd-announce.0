Return-Path: <philipp.reisner@linbit.com>
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
	[209.85.218.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 6AA8D42018E
	for <drbd-announce@lists.linbit.com>;
	Wed,  9 Aug 2023 16:50:25 +0200 (CEST)
Received: by mail-ej1-f49.google.com with SMTP id
	a640c23a62f3a-99cce6f7de2so562562766b.3
	for <drbd-announce@lists.linbit.com>;
	Wed, 09 Aug 2023 07:50:25 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 09 Aug 2023 16:50:23 +0200
Message-ID: <86ttt8e0cw.fsf@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.16 and drbd-9.2.5
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

Here are the final drbd-9.1.16 and drbd-9.2.5 releases. No regression
was found during the release candidate week.

This is a boring release because we fixed no exceptional bugs. All the
addressed bugs need very particular conditions to trigger. Nearly all of
them have consequences that you can work around easily.

Of course, they consume the attention of the operations teams when they
trigger, so we need to fix them. That becomes increasingly important as
our customers use DRBD and DRBD controlled by LINSTOR or other
orchestration tools on larger and larger scales.

An outstanding fact is that we had not a single bug fix specific to
drbd-9.2 in this cycle.

9.1.16 (api:genl2/proto:86-121/transport:18)
9.2.5 (api:genl2/proto:86-122/transport:18)
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

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.16.tar.gz
https://github.com/LINBIT/drbd/commit/288abda1fb8c93e385960af01ab28729fefdaa38

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.5.tar.gz
https://github.com/LINBIT/drbd/commit/b44520271e63d4b6f359a6642eb4d475b7cc04e0

cheers,
 Philipp
