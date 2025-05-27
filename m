Return-Path: <philipp.reisner@linbit.com>
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2793A160650
	for <drbd-announce@lists.linbit.com>;
	Tue, 27 May 2025 18:47:11 +0200 (CEST)
Received: by mail-ed1-f51.google.com with SMTP id
	4fb4d7f45d1cf-6020ff8d35dso91756a12.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 27 May 2025 09:47:11 -0700 (PDT)
Received: from ryzen9 (192-164-20-231.hdsl.highway.telekom.at.
	[192.164.20.231]) by smtp.gmail.com with ESMTPSA id
	4fb4d7f45d1cf-6048f06d915sm3765211a12.70.2025.05.27.09.47.10
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 27 May 2025 09:47:10 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.2.14-rc.1 and drbd-9.3.0-rc.1
Date: Tue, 27 May 2025 18:47:09 +0200
Message-ID: <86r00am25u.fsf@linbit.com>
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


Hello DRBD users,

I am pleased to announce the release of two new candidates. This time,
we are beginning the 9.3 series. The first new feature is called "resync
without replication". It is beneficial when DRBD resyncs a volume that
is busy handling application I/O requests, especially a write-intensive
workload. With the new behavior, the resync time will be significantly
shorter and result in fewer writes to the resync target.
Among the bug fixes included in these releases, the most critical one
addresses a race condition between very short resyncs (empty resyncs)
and application write requests. The window is small, so it is unlikely
to hit, but the consequence is a write missing on the resync target
node.

This is a release candidate.
The final release will come in a week if everything goes as planned.

9.2.14-rc.1 (api:genl2/proto:86-101,118-122/transport:19)
--------
 * Fix a race condition between write requests and very short resyncs
   that might cause DRBD to fail to resync that racing write.
 * Fix the suspend-IO command so that it waits until all pending
   writes are completed before it returns. From now on, it can be used
   to create consistent snapshots of the primary and the secondary.
 * Improve DRBD's pooling of buffer pages. The old implementation
   stopped freeing any of those buffer pages if the kernel would leak
   a single page reference.
 * Fix corner case CM leaks in the RDMA transport.
 * Fix a warning on recent kernels (RHEL10) regarding DRBD failing to
   set queue parameters for zoned block devices.
 * Dockerfile for RHEL10
 * Compatibility with Linux 6.14 and 6.15

9.3.0-rc.1 (api:genl2/proto:86-101,118-123/transport:19)
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
 * Dropped support for RHEL7 and support for kernels older than 3.10.


https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.14-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/379607b588d34f474c160d64dc81cb4796144016

https://pkg.linbit.com//downloads/drbd/9/drbd-9.3.0-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/e0ab757e92e6149a1fbc3bc0c06d86a01090dfee

cheers,
 Philipp
