Received: from mail-wm2-f13.google.com (mail-wm2-f13.google.com [74.125.225.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8CFE3CFF72
	for <drbd-announce@lists.linux.dev>; Tue, 15 Sep 2026 20:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.225.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789504377; cv=none; b=gMM3xplZSqVpXAsKFB2pf2Nfgk6HLavJx9hi+QwkMoZxAc9rN/x4XSynJTPQ2D8Gsfqub6kLVUl4EYllKDsBEjCCsGTRc1V4vnk7unpV2UIuLOeMyqOaq4llK2w8S/6/uojidNpAZBBxUuag80vD+buN+3EeHlVYqNpBBDvwPAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789504377; c=relaxed/simple;
	bh=+DSMtl4NuaWSCsowqJ6ej3PhTtJKJt7uS0DifdmfEQY=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=PTE0vYRrthcxp8wgFLD402pLShe0krzTy6EG5/Bm5CIc6wXgpbARlrHw42JjB5k0jQOM+j3fc0lWshuqLQN7BupXCX5vYPz46UmUROl3dAIs3PTLxePBkDaJ194jsRm2IiM7NehLbxQU74/UAgfM8M8FcfxvZ375v5AmaRHH4bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=cWhw6whi; arc=none smtp.client-ip=74.125.225.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="cWhw6whi"
Received: by mail-wm2-f13.google.com with SMTP id 5b1f17b1804b1-49e7bcb94d3so1764315e9.2
        for <drbd-announce@lists.linux.dev>; Tue, 15 Sep 2026 13:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1789504373; x=1790109173; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8qYMxC+APBHQKqgWD0Os9mRR2v9w1HHs3ihHfyADu40=;
        b=cWhw6whiQ3wF6+qLv0oVmlkPCMm5zL3Gr0/Lm6taosMveSmAeaIJUkc7iWBC2EbBHq
         K2oLZ8xCkPwpLyaJTs6MZ1pU8OJvwr2qdpiP25+WOIxkDK/ooGFoEpGpF03WSE7zL6Vu
         6dtlcm+xSSuM0+rDxVEjS7KG/gkfpDw6ITzD+12HP7MR++Z7uO6tLl4jULzopHGEP4RM
         dc4yjHpfxLjU3uyaTvxESgI2hFW8PyEIoRR/LcL1YFNxixRVOwDBCQ/yTEzVhxR5wNuL
         t1t8HISJdKQkn2gygb+j3cTpZWDUp9DbtVBTKjnVUHwtTiGN1ZcjWWvIJ2gFsOKd4Yg4
         8r6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789504373; x=1790109173;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8qYMxC+APBHQKqgWD0Os9mRR2v9w1HHs3ihHfyADu40=;
        b=ex1R2iiRo2u3c7EAn5yG4WREfJ+fYGZAsHFOm9hUORi42NrjWfEoQcc7F7Azni96FV
         Ubb8ZGXlSUwDuKQm4i5u4u5PE0WV2B0Ej0OAGl75FchM8ciqWWoYHgb2m+ZqOQRcA+fq
         /a8kpGEJ/p22tecFF/aIW+Im2Py45x9V6wfLedj4gcaA1J/3geXcKizFussFJ31WP4pU
         caAVkjkW15V9hZs15sch0yVlYu4DvTYxYcpIWb5BoOIpXPDWALEJQwmtPLZXur+IxyU5
         vPiXC3whcin1A2Brp/LL7EJtNtrJx/r/eEOKRk5riDB0hViSKFXdrSStAAAgMcK4aKlt
         QTcQ==
X-Gm-Message-State: AFuF++m6udzRd8WKiUGlnsh3nWDUXwDdwW/DNVzOqqllQz+2u+4lWOMp
	a2sq3KlqEmTGeiGkeyJ1pRX3JC8DfJaOszZUAy14NbyXvBbbLAFeBJGSVk/+lDvhe6j155x90Db
	qrejJnmU=
X-Gm-Gg: AYBFou1dDu5A4oq7Gc0l+mIPPIdthR5fhn5Q3v+WYc5Ipd82kSCIiIKrDIU2cH6vBuQ
	bEsdCr7vBQVSThhKl4gPMrgtgudXQjButL45BJ6yE3zjJiUDhcwFtty61UAveMpCXAt0nCtrUju
	xzcatez9ksGnq1wnOBV0g9GNj1QSnp6iPLc6huJ0VbcpvF6GDSsBr6S3kcyRm9Bnv1AyV5Ymx3p
	nXlOTqZVmy2drvI1jFV6VZix5zjGa/8n+EAuCi7hJvtDA7JHOHXCMiZ56d2O2vxHiP1e4tzqP4T
	QWEpgzheDfQxqQvdAp/YuwSkSiwgezdIZ8Kq2yZyx/ebVTkXWkJqblfZHjLRF95Bj/yJrd1w1Ml
	LsijnrB8GDw9ZyvnkQQRAIDXyKp7t8ph/4uUF81cgeKGWYXDROFZiPDZlBiyLA/oDKRtk3zEmTf
	9n39KwVbnus75t7zg2VSDyhMAL8fO1lW3Y+E7A4a28kaXuISCen87fBFoXnA4giNh3qPhMrN6Gv
	G330XepOx0vgVdDVw1pEvQJNPqpXO8+SLXEBzKaUNgGGA==
X-Received: by 2002:a05:600c:8b57:b0:49e:799a:8952 with SMTP id 5b1f17b1804b1-49e8228f451mr29976975e9.26.1789504372948;
        Tue, 15 Sep 2026 13:32:52 -0700 (PDT)
Received: from ryzen9 (192-164-131-220.hdsl.highway.telekom.at. [192.164.131.220])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e83fc3da0sm11910625e9.1.2026.09.15.13.32.52
        for <drbd-announce@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 13:32:52 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: drbd-9.2.20 and drbd-9.3.4
Date: Tue, 15 Sep 2026 22:32:51 +0200
Message-ID: <8633vajlvw.fsf@linbit.com>
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Hi,

This is an unusual release. This time, we fixed more issues than in
any previous development cycle. This is because the team has used
ClaudeCode since the start of the Year. It took about half a year,
from our first experiments with it, to get to the point where we can
do much more in a cycle than before.

It helps extract the important needle from a haystack of loglines. It
also helps us write reproducers super quickly using our testing
framework. It enabled us to create new static analyzers tailored for
DRBD. It enabled us to create a simulator that lets us test the DRBD
code deterministically against unusual timings that are very hard to
reproduce on regular VMs.

Last but not least, it is much quicker than a human at coming up with
patch proposals. Even if you have to reject three, you may be
impressed by the solution when you review the fourth proposal.

I recommend upgrading to this version because of the number of fixes it
includes.

PS: I plan to discontinue the 9.2.x series soon. Expect only one more
    release. We can=E2=80=99t wait to start the 9.4 series with exciting new
    features. Maintaining 3 branches in parallel would be too much.

9.3.4 (api:genl2/proto:86-101,118-125/transport:22)
--------
 * Fix drbdsetup failing with "Operation not supported" on every command
   that names a peer; a regression of the YNL-generated netlink code in
   9.3.4-rc.1
 * Generate the netlink interface code with the upstream YNL generator
   instead of the genl_magic macro system
 * Fix a ProtocolError disconnect loop ("BAD! BarrierAck received with
   n_writes=3D...") when two volumes of one connection replicate and
   resync without replication at the same time
 * Tolerate a verify-alg mismatch when connecting, and refuse to start
   an online verify while the algorithms differ, instead of rejecting
   the connection outright
 * Fix several bitmap lifetime bugs around attach and detach: a NULL
   bitmap dereference in the peer device statistics, a missing bitmap
   in drbd_set_sync(), concurrent drbd_bm_free() callers, and freeing
   a bitmap that a later attach published
 * Fix a device reference leak and a NULL pointer dereference when a
   peer request's bio allocation fails under memory pressure
 * Hold state_rwlock while walking the transfer log from debugfs
 * All fixes from 9.2.20
  - Fix a secondary that stayed with the primary ending up Outdated for
    good after an isolated peer returns: an equal-UUID reconcile is now
    sourced from the node that has a primary neighbour
  - Fix two nodes ending UpToDate with different data after a reconnect
    with equal current UUIDs and out-of-sync bits standing: such bits now
    survive a resync-free connect and drive a reconciliation resync
  - Fix divergence around the end of a resync
  - Fix a node losing its obligation to start a new data generation and
    ending in a split brain
  - Fix a number of aspects of online resize
  - Fix a sync target overwriting acknowledged writes with older resync
    data when the sync source lost the diskless primary; such writes are
    now held back or postponed (new feature flag WRITE_POSTPONE) instead
    of being silently rolled back
  - Fix data corruption when a peer bitmap that is being cleared by a
    running resync was copied for a second peer
  - Fix several ways a Primary lost its obligation to start a new data
    generation after losing a peer, each ending in silent divergence,
    and a spurious I/O error when a deferred generation resumes; the
    obligation is now tracked per volume and logged
  - Fix a diskless Primary losing a peer: rotate the current UUID so the
    stale peer resyncs on return, outdate far-away members before
    resuming I/O, and keep the sole UpToDate survivor UpToDate; also
    fixes promotions freezing I/O on nodes not connected to every member
  - Fix a resync target ending with stale data or an old data generation
    when a crashed primary rejoins or a diskless primary announces a new
    generation mid-resync
  - Fix al-updates=3Dno: honour it at attach time, and mark all bitmap
    slots out of sync after a primary crash
  - Fix kernel memory corruption by a malicious or man-in-the-middle
    peer sending out-of-range payload, drain or digest sizes, and a
    divide error caused by bogus peer block sizes
  - Fix a use-after-free of the resource when a connections dump is
    interrupted, and a refcount imbalance flooding the log with put_ldev
    assertions after a resync request allocation failure
  - Fix soft lockups: the sender thread pinning a CPU while its
    connection is down, and IRQ-disabled bitmap scans on multi-TiB
    volumes
  - Fix several deadlocks and hangs: whole-bitmap IO vs clear_peer_slot()
    or online resize, WFBitMapS on an equal-UUID reconnect with leftover
    out-of-sync bits, demotion starved by a failing connect handshake,
    and connection teardown blocked behind an unacknowledged resync
    conflict
  - Fix many two-phase-commit issues: stale replies answering the wrong
    transaction, prepared peers that disconnected, forwarding node
    handling, a state_sem leak on timeout, and unbounded connect
    retries; log which volume a connect is waiting for
  - Fix resyncs stalling short of completion, and a connection dropping
    to StandAlone when a crashed primary rejoins during a resync
  - Fix drbd_suspend_io() not waiting for in-flight writes; a detach
    hanging on a dead backing device stays interruptible
  - Fix restoring quorum after a reboot when the remaining members are
    diskless
  - Fix connection losses: online resize ending in ProtocolError,
    volume-less connections reconnecting every ping-timeout, lb-tcp
    "drbdadm down" stalling for a connect-int, and a TLS control socket
    close going unnoticed
  - Declare a connection broken where a two-phase-commit send failed,
    and repeat a disconnect without delay and with a bound; together
    they end a hanging "drbdadm disconnect"
  - Do not account requests as waiting for the activity log while it is
    suspended; the stale counters throttled resync to c-min-rate and
    drained the epoch for every incoming peer write

https://pkg.linbit.com//downloads/drbd/9/drbd-9.3.4.tar.gz
https://github.com/LINBIT/drbd/commit/e59b287b199f7224468af85b68a10e83c6821=
3f5

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.20.tar.gz
https://github.com/LINBIT/drbd/commit/1b4ee6780a6072d423b05e8424438dd187fb0=
b99

best regards,
 Phil
