Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.53
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793731289;
	b=GlzKQ1BPcLNZbF+n05le+linCLEr98128399Kft133NGJU9oRFxOQKCukvoqf/DuB9GT
	 OPnOqqGPTJql7UrGOs7YNQPNAXuMD3T5RWE5itI1OK9ZNm/4lW5ETo4o0F5/WfWIx7I3o
	 NjbRkZL9bifxTmEXA9Yx3OghJIO2pv5glcMW0GAauPJVsmy+bijL0x5XYeZf6oyBCIiS6
	 afs/i1a2HjtvASvL5hzOEG8JBQN3rNCghBeoSJyzwMnJHnkwP2RcMENyEKva2pbugVxfe
	 radr4c+UgxRG5aJoK+hSqDwX3jcoRydFfLMgNLr9Ay3h+bDh3b0ZxHfOY139XCg+coQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793731289;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
	bh=hXJow5k16FHXkX33+DCGDLTgmd0weuP9ACO08T2u+II=;
	b=MQVxlJDXefnKALZbPIzLsV0ff/kvPA8DbPG9H8v1vpERJzuGkztkT3vUWunU0OwhBOmG
	 d8Q0lefiifkgRfvj59vdnDkwDkvzRso/2Sp+WUBmre3QC2pGqepGwAoxcgNtuHjeTNRDx
	 W5iDuakp5qtJ0HjHIg9+AAz2lWkze8ljplN+MCRkCJJHeFJ7y8I2kBnkVmsNbOCAaPfaN
	 I7XgZ01JCZOYcy1Gkm+qfgLRWNLlvsC+pYQmuEAau4N5fmW74f+2demXOAAJ5EouV7lqt
	 A8kkpme84lnfZ6j6r6g2XUUXxqLnhvBWCVDKjOrI8dtaxCaO5zcYJDMtFmJg5cwL3zw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linbit.com;
	spf=pass smtp.mailfrom=linbit.com;
	dkim=pass header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=BoUUhtcL;
	arc=none smtp.remote-ip=209.85.128.53
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA08606A31B
	for <drbd-announce@lists.linux.dev>; Tue,  3 Nov 2026 18:41:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 4FA08606A31B
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=BoUUhtcL
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4a210470b49so36088455e9.2
        for <drbd-announce@lists.linux.dev>; Tue, 03 Nov 2026 10:41:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit.com; s=google; t=1793731287; x=1794336087; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hXJow5k16FHXkX33+DCGDLTgmd0weuP9ACO08T2u+II=;
        b=BoUUhtcLdzJi+JDlX/r6zAFY9luHqdkkus9LFfPFlr4VqFLRJ15yNjcfhpaUoFP1Us
         7sF1fYtKzppDeGIchck4Di6dDVNtzC4764jwaZM7oHiACtffnnfg+60w85N0qfndWahw
         EgSmmNzS750Q2iLnTauSSIhbwt1PqvCfM2GMz5CB3w93w5nzvcjf74kxmjvTGUay3z6s
         TyB4O8MvdN5MVAQZOOn3wQ7A/NwYV+wCU6hHua7j7PQN+xZNZLUIswS+axiDxRKQd6bZ
         8KZAE2syeFKiAqG6MEWdHnw+cY4kh3elfIR9rBaYoyYivoGuy5q44koBdx5VBTdklJEn
         m88A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793731287; x=1794336087;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hXJow5k16FHXkX33+DCGDLTgmd0weuP9ACO08T2u+II=;
        b=g1EMwvijqVRAeHN+nJ4jneLi/ibA22x1nA6BTUplNXHJB9T31U5/6hDPm64JfdibAq
         fFReqCLMd2fF4nk38brD+pgjr/vlpIPs9bKyYrcpGqIonrMjHORcpesIJoBHM7Mqj6aT
         AkGKpvwu8h/XgHegzuFvKZakirR5RsDUwIpVOANAPnpUA0wXpLUqXRhz6IaJ5GZjkX48
         yEOgk6O8F/toChTHz8EHdjsyUSo2U2awKdSNlHZu4Bv/qvpXTy/fKwRRExNZZuPLai5/
         3S20jLLv0sm6yITivjpmrVYlBg8s4u13F1FRzVOG6lp9wwhnntypYJtStl/CXDFoeXFH
         0Nhg==
X-Gm-Message-State: APuU4Z96bRTL7HhhMNXQdGczyHrgsYI2BPJOAukbRRKi/PgpnGeZafm3
	yCx2M0oNgu/irOUZGyKrK4DCwq/7O7/8QwNiY6CmRwoxgFHZf0C3Xf5wNmMiknYivixYOJRumDV
	ErshSUFs=
X-Gm-Gg: AYBFou1LniHlcNLbz7k4jvEymrHn/EPQPLdIACL4VS67ZmZbmXnBLMTxq8NbwQ7Rrfy
	WljvoGjWCeRTY68l2Vioe1WEIGVJtzPq/eTeRNylukHKVPzT8u7u8b8swbvnz4JbUMvVJbB3bGk
	lyeZef8acTGe1whQOedLMPjurYtDkWzKwSsc3MitpaS4vOfwCLnpqlIm3yYLUIaTq6cWXBlvGtM
	6nUeNk8XiiEPw3XVxWGNuPaUxwm6lPTtkFyhanFN7u7/hOpUuCP6peDwtkT0NKy2q/xb0auZTt3
	q4f7OQkVMFKibeIGWtzK69VjvhamE1L1UFY0ZtqzIXx3z1q5xvBKN8lUAWaU76yqwTn87wVp8AT
	WRTeI+y0pKakkzZAVk4SA+/noK0xDRC7SBRKWAUOMIib/zUdJaJ2xLR+1Rblwo5wxGQkwQ8vIb3
	mxymm4Kluv/awGg87n8rxEgsT0beIIFhrbf2r9QCu7qW/SChKY/ag4UPozMEqaSwER+5xjm4Q4h
	E7vLQY96ER+5/iPZciay81AQY0SpHXn78MJXNz63px+0Pokdiu9FVELH83pVN5OMSUgVlrTROC1
	YAbeJnXfytE1y8fZ9P92l3iA15DyOqW0gUd6+r9yiPjf6U/hac7HDzDmTxjpoXrW4YiM8DHHI9K
	KyiqpjSHdESA=
X-Received: by 2002:a05:600c:3b1a:b0:4a8:b8b4:6226 with SMTP id 5b1f17b1804b1-4ac18c73d17mr323125505e9.28.1793731286571;
        Tue, 03 Nov 2026 10:41:26 -0800 (PST)
Received: from fw13-phil (fixed-077-024-114-001.vkd70.pools.vodafone-ip.de. [77.24.114.1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b2a9faff90sm89085005e9.5.2026.11.03.10.41.25
        for <drbd-announce@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 10:41:26 -0800 (PST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: drbd-9.2.21-rc.1 and drbd-9.3.5-rc.1
Date: Tue, 03 Nov 2026 19:41:25 +0100
Message-ID: <86a4npu59m.fsf@linbit.com>
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Post: <mailto:drbd-announce@lists.linux.dev>
List-Help: <mailto:drbd-announce+help@lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
List-Owner: <mailto:drbd-announce+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Hi,

The DRBD-9.3.5-rc.1 release brings two new features. First, it adds an
interface to use one of DRBD=E2=80=99s change-tracking bitmaps to support b=
ackup
software. Together with the new drbd-utils release, it adds new commands
to enable, reset, and dump tracked changes in an extent-list
format. This is compatible with what many backup software programs can
consume to optimize taking incremental backups. To get this to backup
software, LINSTOR will also support it, and our integrations with
Kubernetes, OpenStack, OpenNebula, and Apache CloudStack (and others if
possible) will support passing the CBT information as well.

The second new feature worth mentioning is a reworked RDMA transport. It
is called rdma2, and it builds on recent work (released with drbd-9.3.1)
allocating receive buffers in large chunks. Under optimal conditions,
that means with large BIOs, I saw lab machines maxing out a 100Gbps link
using Connext-X5 cards while replicating a write stream with DRBD.

Another change is completely transparent for you as users. We are
switching the netlink family to drbd2. This is an important step for
bringing drbd-9 to upstream Linux. It will allow us to have a drbd-9 in
upstream Linux that is compatible with very old drbd-8.4 drbd-utils.

On top of that, the release includes a large number of bug fixes. We
fixed many bugs identified by the community and by us at LINBIT, as we
use more and more LLMs to analyze events in DRBD clusters.

This is a release candidate. Please test it.


9.3.5-rc.1 (api:genl2/proto:86-101,118-125/transport:23)
--------
 * Track changed blocks for incremental backups: a tracking bitmap slot
   records every write to the backing device; cbt-flush and cbt-start
   bracket a snapshot taken while I/O is suspended on all nodes
 * suspend-io now also waits for the barrier ack of the last epoch, so
   that with protocols A and B the writes are on the peers' stable
   storage too; flush-to-peers=3Dno skips that wait
 * Add rdma2, a new RDMA transport that moves all data with one-sided
   RDMA-WRITE, sends bios zero-copy, and fails over to a surviving path
   when a link goes down
 * Serve the new drbd2 netlink family next to the drbd family
 * Optionally serve DRBD 8.4 userland over the netlink family at version
   1 (CONFIG_DRBD_NL_DRBD1, rpmbuild --with nl_drbd1,
   DEB_BUILD_OPTIONS=3Dnl_drbd1); off by default
 * Fix lb-tcp skipping a path for good after the peer closed it first
   during a disconnect, which starved every later handshake
 * Fix spurious and racy "bitmap locked" warnings when bitmap operations
   on different peer slots run concurrently
 * All fixes from 9.2.21-rc.1
  - Fix a resync target staying Inconsistent with nothing left to sync:
    when the Primary cannot reach the sync source, after aborting a weak
    sync source, and when P_RS_CANCEL_AHEAD overtakes the Ahead state
    change
  - Fix a reconciliation resync target waiting in WFBitMapT forever, and
    out-of-sync bits from before a lost diskless Primary being dropped at
    equal dagtags
  - Fix a peer's connect-time upgrade from Outdated going unnoticed,
    which left writes unreplicated
  - Fix an Outdated sync source being marked UpToDate after a resync
    with failed blocks
  - Fix the day0 slots, a regression in 9.2.20: forget-peer left a slot
    that the next UUID bump filled with a later generation, and a peer
    created from the day0 UUID could be refused as unrelated data;
    attach repairs such meta data
  - Fix promoting a peer that holds an older generation of the data a
    diskless Primary exposes
  - Fix P_OUT_OF_SYNC: never sent for Primaries with node-id 8 or higher,
    a crash after del-peer of a Primary, and writes left pending for a
    peer that lost its connection
  - Fix the activity log: AL updates turned off while a crashed Primary
    resyncs, the superblock written too late on "al-updates no", and the
    in-core AL not written when AL updates come back on
  - Fix a dry-run connect (--tentative) establishing the connection
    without a resync
  - Fix the last close returning before the peers have the last write on
    stable storage, and auto-demote failing on a pending signal
  - Fix call-pri-lost-after-sb killing the receiver instead of demoting
  - Fix online resize: drain application I/O before the commit and before
    a participant replies, cache the peers' size answers per volume, and
    refuse a too small peer while syncing from a larger one
  - Fix a receiver deadlock at the end of a resync when the link fails
    while the bitmap is written, and bound the memory a bitmap write-out
    holds
  - Fix resync pacing: the fixed resync-rate (c-plan-ahead 0) holds, the
    resync queue at the backing device is bounded so application I/O does
    not wait behind it, and DRBD logs when max-buffers or c-max-rate
    limit a resync
  - Fix connect and disconnect issues: a spurious NetworkFailure right
    after a handshake, a stale ping timeout dropping the next connect, a
    peer's close while connecting taken as a network error, ko-count 0
    being counted down, and a second peer accepted beside a DRBD 8.4 peer
  - Fix lb-tcp: a NULL pointer dereference in the receiver, a CPU spin
    when the peer closes mid-payload, zero-length data chunks, hot-adding
    paths, and listeners left on unused paths
  - Fix rdma: use-after-free and refcount underflows on teardown during
    connect, a 60 s hang after a failed establish, going StandAlone on an
    interrupted connect, and a crash with a peer running rdma2
  - Fix the TLS handshake compat code (upstream fixes): leaks, refcount
    and use-after-free bugs, and a missing admin check on DONE
  - Fix memory corruption by peer_device flags on 32-bit kernels
  - Fix a negative ap-in-flight after a resend, BarrierAck count warnings,
    sending on after a send failed, and an unsent packet flushed at
    disconnect ("Wrong magic value" on the peer)
  - Fix attach hanging after the node was a verify target, and a double
    release when linking the holder fails
  - Show the submit and sent ages of requests in debugfs again, and mark
    peer writes that completed locally
  - Fix building SUSE KMPs on SLES 16, and the build with
    CONFIG_DRBD_TIMING_STATS

https://pkg.linbit.com/downloads/drbd/9/drbd-9.3.5-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/1f0b40d862abd8246f3d29a7576fd35b9d1f3=
fa2

https://pkg.linbit.com/downloads/drbd/9/drbd-9.2.21-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/e9d24675bf6f1679f4bfde4c6cb38ac9271b5=
af4

cheers,
 Philipp
