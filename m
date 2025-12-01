Return-Path: <philipp.reisner@linbit.com>
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
	[209.85.218.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 0930F1627BB
	for <drbd-announce@lists.linbit.com>;
	Mon,  1 Dec 2025 17:16:12 +0100 (CET)
Received: by mail-ej1-f54.google.com with SMTP id
	a640c23a62f3a-b7633027cb2so600724266b.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 01 Dec 2025 08:16:11 -0800 (PST)
Received: from ryzen9 (213-147-178-163.hdsl.highway.telekom.at.
	[213.147.178.163]) by smtp.gmail.com with ESMTPSA id
	a640c23a62f3a-b76f519e8f4sm1277227966b.22.2025.12.01.08.16.09
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 01 Dec 2025 08:16:10 -0800 (PST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.3.0
Date: Mon, 01 Dec 2025 17:16:09 +0100
Message-ID: <86qzte41py.fsf@linbit.com>
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

I'm proud to announce drbd-9.3. The most recent branch that adds new
functionality.
Some of it needed much more time to ripen than I expected when I did the
first release candidate. But now, it feels good. We can't make it
produce any issues in our automated testing: not with the CI tests, not
with the nightly stability tests, nor with the endurance tests.
We rolled out the 6th release candidate to our internal production
systems, in line with the eat-your-own-dogfood methodology. It is
running fine. It is ready for prime time.

The two most noticeable features are: resync without replication, and
variable bitmap block sizes.
Resync without replication speeds up the resync process, especially on
volumes under heavy application I/O.
The variable bitmap block size allows you to tune DRBD to use a single
bit in the out-of-sync bitmap for more than 4KiB of storage (e.g., 8KiB,
16KiB, ... 1MiB), reducing DRBD's memory footprint.


9.3.0 (api:genl2/proto:86-101,118-123/transport:19)
--------
 * was forked off between 9.2.12 and 9.2.13
 * Implemented resync without replication and made it the default; the
   previous (drbd-9.2 and earlier) behavior is still available via a
   config option. With that, the resync operation begins with
   mirroring of application writes disabled, and it performs multiple
   resync passes, clearing bits in the bitmap. It enables application
   write mirroring when the resync is nearly complete. That reduces
   the I/O load during resync, and in most cases, it reduces resync
   time.
 * Implemented support for bitmap granularity between 4k and 1M,
   including exchanging bitmaps with peers with a different bitmap
   block size
 * Give filesystems mounted on DRBD a chance to bring their on-disk
   representations into a consistent state before suspending I/O.
 * Add support for omitting bitmap allocation for standalone devices
 * Explicit config option for drbd8-api-compatibility mode
 * Dropped support for RHEL7 and support for kernels older than 3.10.
 * All fixes from 9.2.13 to 9.2.16
 * Compatibility with Linux-6.18


https://github.com/LINBIT/drbd/commit/f5e0e7ebfa6112db11a7fa0bc755af85c89d968d
https://pkg.linbit.com//downloads/drbd/9/drbd-9.3.0.tar.gz

Cheers,
 Philipp
