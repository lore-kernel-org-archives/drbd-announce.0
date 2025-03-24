Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 23470160650
	for <drbd-announce@lists.linbit.com>;
	Mon, 24 Mar 2025 14:13:30 +0100 (CET)
Received: by mail-wr1-f49.google.com with SMTP id
	ffacd0b85a97d-3913fdd0120so2350320f8f.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 24 Mar 2025 06:13:30 -0700 (PDT)
Received: from ryzen9 (193-81-174-222.hdsl.highway.telekom.at.
	[193.81.174.222]) by smtp.gmail.com with ESMTPSA id
	5b1f17b1804b1-43d43f47196sm169633585e9.16.2025.03.24.06.13.29
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 24 Mar 2025 06:13:29 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.2.13
Date: Mon, 24 Mar 2025 14:13:28 +0100
Message-ID: <8634f2r2pz.fsf@linbit.com>
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

This release brings a bunch of important fixes. The first one affects
only resources with three (or more) replicas when rs-discard-granularity
is enabled and in a specific resync scenario.

     A-->B
      \  |
       \ |
        vv
         C

A has active resyncs from A to B and from A to C, while the connection
B to C is in a paused resync state.

LINSTOR enables quorum in a 3-node system. With quorum enabled, such
a resync scenario can not occur during regular operations but only when
"re-creating" a resource, e.g., restoring a backup. We discovered this
while working on tests for our CI loop and will test this scenario as
well moving forward.

The machine freezes mentioned below were a completely different story.
Only a customer was able to reproduce them about once a day. With the
information that drbd-9.1 does not produce these machine freezes, we
finally identified a wrong use of a kernel function that led to such bad
error behavior.

I recommend upgrading to this release from older 9.2.x or 9.1.x releases.


9.2.13 (api:genl2/proto:86-101,118-122/transport:19)
--------
 * Fix a bug in the rs-discard-granularity feature; when having three
   or more replicas and after a particular resync scenario in the
   final consequence, it led to inconsistencies in the mirroring aka
   data corruption
 * Fix a bug that causes drbd not to finish a write request; DRBD
   noticed that the request did not finish and abandoned the
   connection; it happened only on resync-target primaries
 * Fix a bug that causes machine freeze (without OOPS message) under
   particular heavy network load conditions (a missing call to
   skb_abort_seq_read())
 * An up-to-date node no longer gets outdated by a far (not a
   neighbor) primary that is incapable (I.e. has an inconsistent disk
   and no access to up-to-date data)
 * Fix for a race condition between new writes getting submitted and a
   connection getting abandoned due to a send error; when it triggered,
   DRBD failed to complete a (or multiple) write request(s)
 * Fix a (never observed) race condition that causes false ping timeouts
 * Fix a minor memory leak; it failed to free the memory allocated for
   a specific class of state change log messages
 * Fix a reference counting bug in the RDMA transport upon address or
   route resolution errors
 * Fix detecting dead peers on idle connections in the RDMA transport
 * Enable TCP keepalive packets by default in the TCP transports
 * Add a DKMS package for RPM-based Linux distributions
 * Add a docker recipe for sles15
 * Compatibility with coccinelle 1.2
 * Compatibility with Linux 6.13


https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.13.tar.gz
https://github.com/LINBIT/drbd/commit/0457237e0448663529fe161781873b356f17b3c5
