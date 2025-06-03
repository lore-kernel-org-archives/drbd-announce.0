Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 32BDA16095D
	for <drbd-announce@lists.linbit.com>;
	Tue,  3 Jun 2025 17:48:09 +0200 (CEST)
Received: by mail-wr1-f53.google.com with SMTP id
	ffacd0b85a97d-3a3798794d3so4891604f8f.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 03 Jun 2025 08:48:09 -0700 (PDT)
Received: from ryzen9 (192-164-20-231.hdsl.highway.telekom.at.
	[192.164.20.231]) by smtp.gmail.com with ESMTPSA id
	ffacd0b85a97d-3a4efe73fbcsm18563487f8f.48.2025.06.03.08.48.06
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 03 Jun 2025 08:48:06 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.2.14
Date: Tue, 03 Jun 2025 17:48:05 +0200
Message-ID: <86o6v4n7wq.fsf@linbit.com>
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

I am pleased to announce the 9.2.14 release.
What happened to 9.3.0? -- We discovered some test failures in our
nightly endurance tests. So, the release process for 9.3 is on hold
until we have a complete understanding of these failures.
Among the bug fixes included in this release, the most critical one
addresses a race condition between very short resyncs (empty resyncs)
and application write requests. The window is small, so it is unlikely
to hit, but the consequence is a write missing on the resync target
node.
The bug that is cured by the second fix on the list is triggered by a
very slow network or a network hiccup with the correct timing and only
when taking snapshots on the primary and secondary nodes concurrently
(as LINSTOR does).
The third item on the list is a bug fix for a range of kernels
(4.19-6.x, where 1 < x < 12), where DRBD sometimes amplified a small
memory leak significantly in a very low percentage of resync operations.

I recommend upgrading to 9.2.14.

9.2.14 (api:genl2/proto:86-101,118-122/transport:19)
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

https://github.com/LINBIT/drbd/commit/a1e7c10e591a844b327da120d169df7da7c933b7
https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.14.tar.gz

cheers,
 Philipp
