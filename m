Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2EF721622C4
	for <drbd-announce@lists.linbit.com>;
	Mon,  9 Mar 2026 18:36:25 +0100 (CET)
Received: by mail-wr1-f47.google.com with SMTP id
	ffacd0b85a97d-439c6fc2910so4118539f8f.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 09 Mar 2026 10:36:25 -0700 (PDT)
Received: from ryzen9 (192-164-131-220.hdsl.highway.telekom.at.
	[192.164.131.220]) by smtp.gmail.com with ESMTPSA id
	ffacd0b85a97d-439dae2bdf8sm29501769f8f.25.2026.03.09.10.36.23
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 09 Mar 2026 10:36:23 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.3.1 and drbd-9.2.17
Date: Mon, 09 Mar 2026 18:36:22 +0100
Message-ID: <86bjgwx5ux.fsf@linbit.com>
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

Here is the final release of drbd-9.2.17 and drbd-9.3.1.

This development cycle brought a slightly higher number of bug fixes
than the previous cycles. In nature, they are following the trend we
have seen for quite some time. It is the unusual corner cases.

The set of tests in the CI loop, nightly test stability tests, and I/O
endurance tests is a good net that catches major bugs before I tag a
release. Of course, we constantly add new tests to further improve the
quality. Also in this cycle, we introduced a static analyzer to
eliminate a whole class lifetime/locking bugs of the bitmap data
structure. And since it checks every future commit, it also guarantees
that we never ever introduce bugs of that class.

The 9.3.1 brings fundamental modernization to how DRBD handles I/O. From
now on, DRBD can allocate compound pages from the kernel as I/O
buffers. When you make large I/O requests or streaming accesses, that
can speed things up.

Do not be shy about switching from the 9.2.x series to the 9.3.x
series. We use 9.3.1 on our internal production system exclusively by
now. As of today, I plan that the 9.2.x series sees its last release in
September 2026.


9.3.1 (api:genl2/proto:86-101,118-124/transport:21)
--------
 * Use compound pages to optimize large I/O performance
 * New option for setting the discard granularity exposed on
   diskless nodes
 * Add per-peer_device tiebreaker config flag for quorum
 * Fix compat-8.4 /proc/drbd output for connected resources
 * Fix a race that could lead that a resyncs stalls when it
   should complete.
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

https://pkg.linbit.com//downloads/drbd/9/drbd-9.3.1.tar.gz
https://github.com/LINBIT/drbd/commit/9eba01aed618878de06ea17f17deddf96ac54d42

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.17.tar.gz
https://github.com/LINBIT/drbd/commit/415cc5153c91efdf4a98bd29510c4921dda7bf24

-Philipp
