Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.46
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794988808;
	b=uTlP+1rkqIy2OQzMlEGU4icaEymiaFxfkpz64Ene4hrTEROKqoI8uWtRW1/6HEoLn8U2
	 1hGBZmJqdyAddh15z5Gu1wVyQuduYYhVE32JrCw/wVLINbJO4vkTNIfRXhKBzY2sIukfq
	 V7XIlhmlLrNGpCE7RzYtXcRHFcoBnDqSewPkxrLqYsZJZRoLsye13VANZRswu+0BYuTJC
	 Jvf9U5NhiRuG78OVwNBeWRpZqjbfP8I6lPrkcUiF4J/BPaRJF71V833UDMfZo/YzgJ2Mf
	 22Gx+k/Vmla71E4VUxMrQ3H8ysmHkCcX38rSh2c5NZOp4sysndRETHhPpDUahLk10bw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794988808;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
	bh=D1omRrIkNmPJbhjzScL6TmwdlHKDbHLACxBiy2faMP4=;
	b=BAKiIWF60vJ8MYg+FA6EOTtaX1ZcR4JEPCfHssBaaBssPWtfk9QXoOpNS+eNI3MY/a8v
	 be5GlH/tdjcirqzQk4TJ+25JOz0jJRl/Xo16Gv5FvKB9mNRRqAXtfnB2Kk/qvmx3O9ruF
	 DxFwOKWopVDYGPLPXmnBsHO8q6m3RDWEIjI5Rf/6aqwXVW5P1oAvf897cubyHFmmnbM/K
	 5ku9kNKzUKviGk2Rb3L1/XFsoinMpYyeYVYK6btImKIdTe8iBwfubf6ovwq9Il6i0BmK3
	 5Y3uvKpY00lnvv745WoAKPR4fAnRL1ni5eCArMmPbFnYt8fxBXr9C/SFHexMF1twk4g==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linbit.com;
	spf=pass smtp.mailfrom=linbit.com;
	dkim=pass header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=ntJDqaFh;
	arc=none smtp.remote-ip=209.85.128.46
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669BA606A32A
	for <drbd-announce@lists.linux.dev>; Wed, 18 Nov 2026 08:00:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 669BA606A32A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=ntJDqaFh
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4ba013938d7so6061485e9.2
        for <drbd-announce@lists.linux.dev>; Wed, 18 Nov 2026 00:00:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit.com; s=google; t=1794988806; x=1795593606; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=D1omRrIkNmPJbhjzScL6TmwdlHKDbHLACxBiy2faMP4=;
        b=ntJDqaFhsDmo3sg9FeY+G8T+g5ZhjiOZ4JENWqYeVYY2sNlbmKMNhdzUyAqfFmNkB0
         6H/3I/jxNfAwnT9BoqRaLYSnt/rHt+r+NCCBFyfVWVOhq7XKgmYNHvShUp5dEVUGEp0P
         itzPgHl5dOTE3Eq/Y9Jpys/WTT112VipsUvpB7okN1GTzD8BmCIgvfwBkE9s2Xg4rpvS
         wSXelEDoblMRa/XLh6z0veqNGGWcnjKhmuwX10M2zoX58MHNIhtNWSywC9q7s+exgwKQ
         ue5aAEWSrcUdhUYclVnzcfVjPyMGgMu5UP56Tn7rqIKfWPX35qHu73eggsZTdO/wFL9X
         MBgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794988806; x=1795593606;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=D1omRrIkNmPJbhjzScL6TmwdlHKDbHLACxBiy2faMP4=;
        b=zF4InXKP33Up5x0tO0jx21W7ILFqi0Dn61JFM3p9Pn5AYyrs6IyYJLVdJfcMcynxez
         q7kagR9+9jKOPeBi5oIt+F8zT3P4eokyAJ96k9920bjB7C15VZiJ5aObbINH7xPBrdEV
         3FvAQSt+5Wo8S46lPzKgz1/+UX43J2RkcPjQIfOUZICdjIO1uiTldUfG6jCxjeL1MJ1z
         fMjGengqEVk2JaQj02kp855RRKs5McnQnHtepDqGmsHvOoUk3F+2yIbKWPCkQSqCbnBU
         z/+BpJMZ06cYHYg0nhc1RkOJlAYZjWGQDzk9caKWVofc18Cw7x0XIIj8QE6tKAfkwwPq
         aC+A==
X-Gm-Message-State: APuU4Z/M6bhwwSqxNOCBDOOO09RG3aXnvg4V4cXTptHyWg9E3e6Gy3KN
	2O4oFP+a2wGG7pX+SaY0qm3mjgQIb82S1MDZEMT5e3Im9gm32WETOBbRJ2P/HEeBfeCcTiiKzGh
	wqyi3
X-Gm-Gg: AYBFou3iyzWDqT0mgInpnDcLCIYzJfe1wziMKmZjIf3gLc8Uenvvzr8E6N9QvnJb3x8
	pft1qlUQxCgpiEtrT8uUfaTNsI42zfk3yx2TlH26utb6eC4nUbM46oKM75jkewTON95m7JV9l+y
	x71rhET+5tzqULREYtB7oLnJ1mQpNBch59lxQ4jhkM3F0k/QDB7kU7XprqsbNU/tCLtzCZQw5Ro
	IvWxtYbLc99wlVbTOQkgw91nIRZbTfKbo7Y4cqU99JmWsDPkoS+m9l3yjX1vJK57t0bKJvTwmlu
	43LjmhowQCCVm/R+L1totsmpXEFRx5cA/kuOXnufvoKUGjSN+I2WfAQSSINb5P71P87wFrrQztC
	WPfi0qPZgYuT/ZGnKnWGBonwqFUBYCW9fv/BABglIKqycHqxZpDAJ/60VSx/ieXyDPQikG2I7w6
	gWONv+/nd0TrXlkwlJ3MvmNcmFmWX9RTqptsUBvHNCJtvfplucRwqlNDbp4kN2FL3UJSmlPxO2n
	jW4vgak62RZeMvIMTY9PNVLM54KMbfsipmbmyufkR1/k58uClYKXdYiE7e8q+V67kmkPs9nWFaS
	O06Wlt9u9BgjjEVUPGgxKLeI+AVFBKO39nqpRTcc2XikNHYVMlyuK0WpCoO/n1G0FvYlzg==
X-Received: by 2002:a05:600c:3485:b0:4bb:741d:eba with SMTP id 5b1f17b1804b1-4bb7da1b79fmr31961135e9.13.1794988805271;
        Wed, 18 Nov 2026 00:00:05 -0800 (PST)
Received: from fw13 (91.141.113.101.wireless.dyn.drei.com. [91.141.113.101])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb783f8154sm136493085e9.4.2026.11.18.00.00.03
        for <drbd-announce@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 00:00:04 -0800 (PST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: drbd-9.2.21 and drbd-9.3.5
Date: Wed, 18 Nov 2026 08:59:30 +0100
Message-ID: <86v75ulgd9.fsf@linbit.com>
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

The DRBD-9.3.5 release brings two new features. First, it adds an
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


9.3.5 (api:genl2/proto:86-101,118-125/transport:23)
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
 * Serve changed block tracking on the drbd netlink family too, so that
   it works on kernels without the drbd2 family (before 6.2)
 * Fix a Primary staying Ahead after the congestion clears: the peer
   stayed Outdated and no resync started until the next write
 * Fix rdma breaking every resync with data on kernels before 5.1
   (RHEL 8.2)
 * All fixes from 9.2.21
  - Fix writes that completed with success but never reached a peer, or
    that a later resync overwrote: a frozen write toward a peer that got
    the new data generation from a third node, a write admitted just
    before a peer was lost, and frozen writes resumed by a state change
    that also starts an io-error policy
  - Fix the receiver waiting forever for application writes after the
    link is lost: during a handshake bitmap change, a bitmap slot clear
    or copy, a weak-source switch, a peer demotion, an online resize
    commit, and on P_SIZES
  - Fix a resync target returning at the predecessor of a deferred new
    current UUID, which left a diskless Primary suspended
  - Fix a Primary and an UpToDate Secondary at equal current UUIDs never
    connecting, and two such nodes that become stable together waiting
    in WFBitMapT
  - Fix a block missing after a power loss with external meta data: flush
    the backing device before an AL transaction evicts an extent
  - Fix a slow start of every resync on kernels before Linux 6.3 with
    bio-based backing devices (LVM), and the resync queue of a slow
    backing device growing without bound with c-min-rate 0
  - Fix a sync source running out of memory when the sync target
    requests faster than it can read: a target with rs-discard-granularity
    keeps its requests within max-buffers, and the source allocates the
    pages of a resync read only when it submits the read
  - Fix resyncs in opposite directions stopping for good with
    max-parallel-resyncs: only the requesting side takes a slot
  - Fix an attaching node waiting in WFBitMapT forever while its peer
    decided there is nothing to sync
  - Fix a failed local write-zeroes leaving the old data on a disk that
    stays UpToDate
  - Fix auto-promote giving up long before auto-promote-timeout
  - Fix disconnect: the peer going to NetworkFailure instead of
    Disconnecting, and "drbdadm disconnect" failing with -18 when the
    peer tears down first
  - Fix TLS: two nodes stalling in the handshake until the TLS timeout,
    and going StandAlone when the peer resets the connection during the
    handshake
  - Fix a use-after-free of the rdma control timer on teardown
  - Fix the build on kernels before 4.17 (RHEL 7) and with Linux 7.4,
    and the send buffer not growing during a resync on Linux 7.4
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


https://pkg.linbit.com//downloads/drbd/9/drbd-9.3.5.tar.gz
https://github.com/LINBIT/drbd/commit/b85d6fd444480f63070f8003b288151af0a9e=
b11

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.21.tar.gz
https://github.com/LINBIT/drbd/commit/91232a5e4a391bd3975c8cd0a0a70ad959997=
d67

cheers,
 Phil
