Return-Path: <philipp.reisner@linbit.com>
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
	[209.85.208.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D3641162ECF
	for <drbd-announce@lists.linbit.com>;
	Tue, 25 Nov 2025 22:14:33 +0100 (CET)
Received: by mail-ed1-f48.google.com with SMTP id
	4fb4d7f45d1cf-6417313bddaso9340868a12.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 25 Nov 2025 13:14:33 -0800 (PST)
Received: from ryzen9 (213-147-178-163.hdsl.highway.telekom.at.
	[213.147.178.163]) by smtp.gmail.com with ESMTPSA id
	4fb4d7f45d1cf-645363b6075sm15961892a12.10.2025.11.25.13.14.31
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 25 Nov 2025 13:14:31 -0800 (PST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.2.16 and drbd-9.3.0-rc.6
Date: Tue, 25 Nov 2025 22:14:31 +0100
Message-ID: <86zf89izm0.fsf@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain
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

Here is the drbd-9.2.16 final release. The bugs fixed in this release
are mostly exotic corner cases. One fix is that a fatal user error
causes the machine to enter an annoying out-of-memory condition in
previous DRBD releases.

The developers have switched their interest to the 9.3 branch. I want to
roll it out internally, following the so-called 'eat your own dog food'
strategy, before I declare it a final release. I plan to release 9.3.0
early next week.

9.2.16 (api:genl2/proto:86-101,118-122/transport:19)
--------
 * Do not trigger the OOM-killer when allocating a too-big dirty
   bitmap during attach; instead, fail the attach operation.
 * Do not flush half-created packets out while closing a connection
 * Fixed a bug that, in rare circumstances, when flapping between
   Ahead and resync, can lead to a divide by zero error.
 * Fixed a bug that caused DRBD to send too many P_PEERS_IN_SYNC
   packets when finishing a resync; on huge devices ( >10TB), that led
   to temporarily higher I/O latencies.
 * Fixed two unhandled corner case to automatically reintegrate an I/O
   frozen primary into a larger partition that created a newer data
   generation
 * Compatibility with Linux-6.17 and 6.18-rc6

https://github.com/LINBIT/drbd/commit/3a0f974085c481737e13fb39f03ccd85b63eb7df
https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.16.tar.gz

9.3.0-rc.6 (api:genl2/proto:86-101,118-123/transport:19)
--------
 * Implemented support for bitmap granularity between 4k and 1M,
   including exchanging bitmaps with peers with a different bitmap
   block size
 * Add support for omitting bitmap allocation for standalone devices
 * Explicit config option for drbd8-api-compatibility mode
 * Give filesystems mounted on DRBD a chance to bring their on-disk
   representations into a consistent state before suspending I/O.
 * Fixes for resync without replication
 * All fixes from 9.2.14, 9.2.15 and 9.2.16
 * Compatibility with Linux-6.17

https://github.com/LINBIT/drbd/commit/673d0dba8c25319ea84c2ebc71a094b1678906b5
https://pkg.linbit.com//downloads/drbd/9/drbd-9.3.0-rc.6.tar.gz
