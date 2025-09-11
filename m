Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2A1DC16228C
	for <drbd-announce@lists.linbit.com>;
	Thu, 11 Sep 2025 16:56:32 +0200 (CEST)
Received: by mail-wr1-f53.google.com with SMTP id
	ffacd0b85a97d-3e2055ce973so479692f8f.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 11 Sep 2025 07:56:32 -0700 (PDT)
Received: from ryzen9 (193-80-33-59.hdsl.highway.telekom.at. [193.80.33.59])
	by smtp.gmail.com with ESMTPSA id
	ffacd0b85a97d-3e7607cd0a7sm2705286f8f.39.2025.09.11.07.56.30
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 11 Sep 2025 07:56:30 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.2.15-rc.1
Date: Thu, 11 Sep 2025 16:56:29 +0200
Message-ID: <86frctdoma.fsf@linbit.com>
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


Hi DRBD-uses,

This release includes the usual number of fixes, triggered by various
corner cases, each of which affected only a small part of our user
base. As usual, we added tests covering such corner cases to our test
suite where it seems reasonable.

One of the larger changes is support for compatibility with drbd v8. We
kept protocol compatibility since we forked off drbd v9. However, we
intentionally broke the /proc/drbd interface and the drbdsetup command
line, for good reasons. We are now reintroducing this compatibility, on
an optional basis. You need to enable it at compile time by passing
"CONFIG_DRBD_COMPAT_84=y" on the make command line. This is a
preparation step for submitting drbd-9 as an update of drbd v8.4 in the
upstream Linux kernel.

I also need to mention that drbd-9.2.14 has a slight performance
regression compared to drbd-9.2.13. The receiver thread can consume up
to 5% more CPU (relative to earlier releases). This is a consequence of
removing the 'open-coded custom page pool'. This is the first step in a
larger plan to enable drbd to use compound pages as I/O buffers, and it
will also enable zero-copy receive from TCP. With that, such a page pool
becomes unnecessary, and it will reduce CPU usage below that of
drbd-9.2.13.
We did not address this slight performance regression in drbd-9.2.15 as
I consider it temporarily acceptable.


This is a release candidate.
The final release is scheduled for September 22.


9.2.15-rc.1 (api:genl2/proto:86-101,118-122/transport:19)
--------
 * Fixed the regression introduced with 9.2.13, where a DRBD primary
   resource never finishes a resync with a newly added peer
 * Make DRBD's ability to discard(trim) blocks on a resync-target if
   they are all zero on the sync source compatible with block devices
   that have a lower max_hw_sectors_kb value than the rs-discard-granularity
 * A bunch of fixes for the RDMA transport: A potential BUG() when
   removing the transport_rdma module, a memory leak upon a send
   failure, a race between re-creating rx descriptors and
   disconnecting, and a NULL ptr deref as a consequence of a race
   between removing a path and accepting a connection
 * Add the kernel side of drbd v8 compatibility, which includes
   drbdsetup command line compatibility, reading and writing of v8
   metadata, and v8 style /proc/drbd. By default, this is not compiled in
 * Verified compatibility for Linux-6.16 and 6.17-rc5


https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.15-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/4eb73b3c9a03ea4d1b5a1ae8ab1bc1fc1797006f

cheers,
 Philipp
