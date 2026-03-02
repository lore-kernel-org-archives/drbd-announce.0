Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id A46991622C8
	for <drbd-announce@lists.linbit.com>;
	Mon,  2 Mar 2026 22:47:45 +0100 (CET)
Received: by mail-wm1-f48.google.com with SMTP id
	5b1f17b1804b1-48370174e18so28517705e9.2
	for <drbd-announce@lists.linbit.com>;
	Mon, 02 Mar 2026 13:47:45 -0800 (PST)
Received: from ryzen9 (192-164-131-220.hdsl.highway.telekom.at.
	[192.164.131.220]) by smtp.gmail.com with ESMTPSA id
	5b1f17b1804b1-483bd6f26d7sm451075855e9.3.2026.03.02.13.47.43
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 02 Mar 2026 13:47:43 -0800 (PST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.3.1-rc.1 and drbd-9.2.17-rc.1
Date: Mon, 02 Mar 2026 22:47:42 +0100
Message-ID: <86zf4pnbsx.fsf@linbit.com>
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


Hello DRBD-users,

I am preparing another double release. 9.2.17-rc.1 brings a bit more
bug-fixes as in the last development cycles, but in nature they are
following the trend we see since quite some time. It is the unusual
corner cases.

The 9.3.1-rc.1 brings fundamental modernization to how DRBD handles
I/O. From now on, DRBD can allocate compound pages from the kernel as
I/O buffers. When you make large I/O requests or streaming accesses,
that can speed things up.

This is a release candidate. Please help test it. If everything goes by
plan, I will do the final release in one week.

9.3.1-rc.1 (api:genl2/proto:86-101,118-124/transport:21)
--------
 * Use compound pages to optimize large I/O performance
 * New option for setting the discard granularity exposed on
   diskless nodes
 * Add per-peer_device tiebreaker config flag for quorum
 * Fix compat-8.4 /proc/drbd output for connected resources
 * All fixes from 9.2.17
  - Fix a kernel crash triggered by a crafted/invalid netlink message
  - Fix a crash when resyncing with a peer supporting proto 121,
    e.g. drbd-9.1.23
  - Fixed two corner case regressions regarding bitmap lifetime
    (introduced with 9.2.16)
  - Add a static analyzer that checks for correctly handling bitmap
    object lifetime; it identified 6 bugs
  - Correctly request BLK_FEAT_STABLE_WRITES from the kernel; Kernels
    side changes lead to this queue flag not being active
  - Fix lb-tcp to not corrupt data when it reassembles a data chunk, it
    split for sending over multiple paths in parallel
  - Add a special case to ensure LINSTOR re-provisioned nodes with thin
    volumes get the necessary incremental resync
  - Always do a two-phase-commit for attach, closes a race that could
    lead to an inconsistent repl states
  - Skip unnecessary resync when a missed end-of-resync has 0 bits;
    before that fix, DRBD could end up in inconsistent repl states
  - Fix a case where a send error was ignored on congested connections
  - Make detection of missed end-of-resync symmetric; the bug led to
    inconsistent repl states
  - Make the RDMA transport compatible with RXE (software RoCE),
    and some mainly performance-related fixes


https://pkg.linbit.com//downloads/drbd/9/drbd-9.3.1-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/98a1c0ba529fc793ee3639e50913ac02f75eb1ce

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.17-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/51216114a53e066dd41537a6a1e50736c5c0a31b

cheers,
 Philipp
