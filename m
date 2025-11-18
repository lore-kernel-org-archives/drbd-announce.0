Return-Path: <philipp.reisner@linbit.com>
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
	[209.85.218.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2F5FB1609AD
	for <drbd-announce@lists.linbit.com>;
	Wed, 19 Nov 2025 00:29:24 +0100 (CET)
Received: by mail-ej1-f51.google.com with SMTP id
	a640c23a62f3a-b735487129fso973386566b.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 18 Nov 2025 15:29:24 -0800 (PST)
Received: from ryzen9 (213-147-178-163.hdsl.highway.telekom.at.
	[213.147.178.163]) by smtp.gmail.com with ESMTPSA id
	a640c23a62f3a-b734fdae69fsm1426355966b.51.2025.11.18.15.29.23
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 18 Nov 2025 15:29:23 -0800 (PST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.2.16-rc.1 and drbd-9.3.0-rc.5
Date: Wed, 19 Nov 2025 00:29:22 +0100
Message-ID: <86346akjhp.fsf@linbit.com>
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


Hello drbd users,

The next releases are coming soon. Today I have the honour to announce
the availability of release candidate 1 for drbd-9.2.16 and
drbd-9.3.0-rc.5. The latter is already at 5, since we did some internal
release candidates. This time it looks good.
Regarding the fixes, everything is minor and boring.

drbd-9.3 is where the exciting new features are. This time, it got
support for tunable bitmap granularity and for disabling the
change-tracking bitmap entirely.

Please help test the release candidates. I plan to do the final releases
in one week if nobody finds a showstopper.


9.2.16-rc.1 (api:genl2/proto:86-101,118-122/transport:19)
--------
 * Do not trigger the OOM-killer when allocating a too-big dirty
   bitmap during attach; instead, fail the attach operation.
 * Do not flush half-created packets out while closing a connection
 * Fixed a bug that, in rare circumstances, when flapping between
   Ahead and resync, can lead to a divide by zero error.
 * Fixed a bug that caused DRBD to send too many P_PEERS_IN_SYNC
   packets when finishing a resync; on huge devices ( >10TB), that led
   to temporarily higher I/O latencies.
 * Fixed an unhandled corner case to automatically reintegrate an I/O
   frozen primary into a larger partition that created a newer data
   generation
 * Compatibility with Linux-6.17

https://github.com/LINBIT/drbd/commit/7e76d29637ec8118d94961fc6d7b00666a4364a0
https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.16-rc.1.tar.gz


9.3.0-rc.5 (api:genl2/proto:86-101,118-123/transport:19)
--------
 * Implemented support for bitmap granularity between 4k and 1M,
   including exchanging bitmaps with peers with a different bitmap
   block size
 * Add support for omitting bitmap allocation for standalone devices
 * Explicit config option for drbd8-api-compatibility mode
 * Fixes for resync without replication
 * All fixes from 9.2.14, 9.2.15 and 9.2.16
 * Compatibility with Linux-6.17

https://github.com/LINBIT/drbd/commit/980eaa0401adf05726c5a609fb98f2e3c3382332
https://pkg.linbit.com//downloads/drbd/9/drbd-9.3.0-rc.5.tar.gz

cheers,
 philipp
