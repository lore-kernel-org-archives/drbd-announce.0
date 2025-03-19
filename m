Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id F21C516087F
	for <drbd-announce@lists.linbit.com>;
	Wed, 19 Mar 2025 18:44:05 +0100 (CET)
Received: by mail-wm1-f45.google.com with SMTP id
	5b1f17b1804b1-43d0618746bso37783185e9.2
	for <drbd-announce@lists.linbit.com>;
	Wed, 19 Mar 2025 10:44:05 -0700 (PDT)
Received: from ryzen9 (193-81-174-222.hdsl.highway.telekom.at.
	[193.81.174.222]) by smtp.gmail.com with ESMTPSA id
	ffacd0b85a97d-395cb7eb9d7sm21220812f8f.89.2025.03.19.10.44.04
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 19 Mar 2025 10:44:04 -0700 (PDT)
Date: Wed, 19 Mar 2025 18:44:03 +0100
Message-Id: <865xk4rk4c.fsf@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.2.13-rc.2
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

Hello,

Due to a few last-minute fixes, I am doing a short rc.2 before the
9.2.13 final release.

This is a release candidate.
The final release will come on Monday, March 24, if everything goes as
planned.


9.2.13-rc.2 (api:genl2/proto:86-101,118-122/transport:19)
--------
 * Fix for a race condition between new writes getting submitted and a
   connection getting abandoned due to a send error; when it triggered,
   DRBD failed to complete a (or multiple) write request(s)
 * Add a docker recipe for sles15

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

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.13-rc.2.tar.gz
https://github.com/LINBIT/drbd/commit/6146eb95546e5105f4fed617ae60c88249c75245

cheers,
 Phil
