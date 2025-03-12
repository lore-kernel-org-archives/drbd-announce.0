Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 60FAE160644
	for <drbd-announce@lists.linbit.com>;
	Wed, 12 Mar 2025 16:37:40 +0100 (CET)
Received: by mail-wr1-f47.google.com with SMTP id
	ffacd0b85a97d-3913fdd003bso7564f8f.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 12 Mar 2025 08:37:40 -0700 (PDT)
Received: from ryzen9 (193-81-174-222.hdsl.highway.telekom.at.
	[193.81.174.222]) by smtp.gmail.com with ESMTPSA id
	5b1f17b1804b1-43d0a8c5cf7sm25845055e9.29.2025.03.12.08.37.38
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 12 Mar 2025 08:37:38 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.2.13-rc.1
Date: Wed, 12 Mar 2025 16:37:37 +0100
Message-ID: <86plimmf9a.fsf@linbit.com>
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

A has an active resync from A to B and from A to C. The connection B to
C is in paused resync state.

This is specific, but it can happen. LINSTOR sets the
rs-discard-granularity when the backing devices are thinly provisioned
(lvm-thin or zfs-thin). When it hits, one of the resync skips a few
blocks it should sync. That is an inconsistency in the mirror, a data
corruption later in time.

On the one hand, it is painful that we have found such an issue. On the
other hand, it is good that it was found and fixed. We learned about
that issue while working on our suits of tests for DRBD. This was a
hole in our automated testing coverage. Of course, from now on, we also
test this aspect in the CI loop.

The below-mentioned machine freezes were a completely different story.
Only a customer was able to reproduce it about once a day. With the
information that drbd-9.1 does not produce these machine freezes, we
finally identified a wrong use of a kernel function that led to such a
bad error behavior.

This is a release candidate.
The final release will come in a week if everything goes as planned.


9.2.13-rc.1 (api:genl2/proto:86-101,118-122/transport:19)
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
 * Fix a (never observed) race condition that causes false ping timeouts
 * Fix a minor memory leak; it failed to free the memory allocated for
   a specific class of state change log messages
 * Fix a reference counting bug in the RDMA transport upon address or
   route resolution errors
 * Fix detecting dead peers on idle connections in the RDMA transport
 * Enable TCP keepalive packets by default in the TCP transports
 * Add a DKMS package for RPM-based Linux distributions
 * Compatibility with coccinelle 1.2
 * Compatibility with Linux 6.13


https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.13-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/956c7578dd6f5e0320af15d34cb92264b538f8ae

cheers,
 Philipp
