Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.48
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794414766;
	b=zxmirNh4YxgBGkL6jVWq7VghKCZE78iGKkB/IwdT/CtNR6gHqferJ2g8Y3IxmNPlMszm
	 B+v0uDgJUxsBaaxFzb5ReUTxoFAoeuMtddX+scvBg0tkqWRuDgtmmB2cas4Zl/ofNU1bY
	 rDR60USIKlg6+pIQxgksoT9XecvlQ6X5Sd1qMJCeEmKGE7g6yQsbQ62wNG/G6ODrzbemH
	 4XIeuVFgR2rj8JYTGPXUviD8trawUZIcQD69VvCiR3UbmmNxfmNObfMLK4Mbxgmi9HJ55
	 /phDd9/pRs7QtV5NIlvNgpnKMy1b+ynU8lZP1VkKejJR18FEzeXer1rWq8+YS4Wn0oA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794414766;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type;
	bh=kmXIznHePhW+AgEvorDmWumXThfW+Dj+p+dDAenDRWQ=;
	b=4PdvWVgv2T6h1ey490Xi62ZkW2LfnFj/rnUWdjaFXo3guyKHD1U66G4EI+gxXJKtb9kX
	 Ci4u9ug/g3x8h5sRMoFLdVIhCRHvP9t9ZEgYMTOBYAruYi6C8naP5qTsfQ5rI4Q8migEB
	 eLDHSeI5Zi0odwpRkW36XaR1aDvbOfuQnT79s7jSe8SHW0kisWzcQATpIFIHNKITvD8WJ
	 KBu4fb4ZBCvGbFVGYbvC763UDRu7VoEA6ScADZGtJwL4Ru4aJvSaWdnTqOvDyS69WGahL
	 nXlnLI9COd7y3jB85snlyqKg012r+wHzXkmu3ZlyXBI/4pYPdEy7iAuvv0vqoWyGCpg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linbit.com;
	spf=pass smtp.mailfrom=linbit.com;
	dkim=pass header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=ydlfygbo;
	arc=none smtp.remote-ip=209.85.221.48
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6080606A321
	for <drbd-announce@lists.linux.dev>; Wed, 11 Nov 2026 16:32:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org D6080606A321
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=ydlfygbo
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-492fcbfaa88so2259006f8f.3
        for <drbd-announce@lists.linux.dev>; Wed, 11 Nov 2026 08:32:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit.com; s=google; t=1794414764; x=1795019564; darn=lists.linux.dev;
        h=content-type:mime-version:message-id:date:subject:to:from:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=kmXIznHePhW+AgEvorDmWumXThfW+Dj+p+dDAenDRWQ=;
        b=ydlfygbob7LRLvle0J5PzKHt+kZrwUrR9CE59RSgwUl4obN+D96K+O8tSqUESW3EuE
         MARbtmHFcqg2vU17wNnaZ69x003BenhR/oLpMF5fPhR4ekb8mWv+bqsDNeNjlG/M0G4J
         BHe8KfQfz91j/rB7HoCVVT2WswcZhLnFE/Po7yUNOS9IalW6DBlwCZkO4A/4ywMowwr0
         vx3fAyVrSw/MU2LJsH9JDN5+w9YJ2vvhhmtwTILt6qAqnt3kzrj1QFgLagYX7nflxEry
         dBzo+qDLXfoE6eKXB2m0p7t60+r9FYp4bsQ0Xxu0cJxJ082yJO85KXXYXzWn9th76j3D
         1Ruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794414764; x=1795019564;
        h=content-type:mime-version:message-id:date:subject:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kmXIznHePhW+AgEvorDmWumXThfW+Dj+p+dDAenDRWQ=;
        b=cvO74CHaJa1fwzZMPjkPq2aaVV88vjnEa13i1SsK0LFhyUO4Ucp/s6TDfrXMbrkg+z
         5Y6BBIV33dIGDhU7gP++mrLep4ZEPFb9hP+RXULiDSGCshnRI7UGCltWOjjst/y28keU
         Nis5RhrpJ+t+8hRFOaxQ2z00jyPJmAPaGZ+UJ7hyJgodzd6rAFDfclyJD8FIl95jIhkY
         zKkwlsZcIWO3LAKXgfG/fRlUY115dwsKyZU0bJK9YQNUFa9XB9hPeikWOORi9wZYN/r7
         Zpi8SKfhRYpY0VNq8scgHIhEYa2J/+BWVmKt3eTv7Gn5DdkU38tENwMeNO9TdcLvELk5
         OEFg==
X-Gm-Message-State: APuU4Z+9mq831YiHQ3kYpESjLH4RdikMD7bFm+ss9ISeEYh1CuQEucbK
	vUSeiJtO28x7lFh8GqCRdlJ4l3aUmz9HEgrVwpebDJhYgW6jNiZdA7DsyhrNogohppuYCob0OYW
	HCr3QFWc=
X-Gm-Gg: AYBFou2XP0/oYLoOH9p8Z30uDhXkyTbh6mKEEGhjPNE5bKpoDB0FL2clPOzGLXbWJkN
	IN9A1BjdPm8+qlCO8H38xjwkLHopgibPu9dbEQ0evU5FWYNKQZm4WU2TFSvRZ9xTHoNaKfjQvmB
	DEqZIKPLySh9Tn9rv9yv3E0ATymIGPPZOVlbgaSeCAsy3kiscq29qHhowdo39ElZQCMNCk2uC9e
	IGQpon9w5wYdACdGa48avlSFtUR0u43YP8G8E9AjmNw3wGntBZs843W4j87Vh172537YSz759Np
	QLUWMwhcaSMemcV3dVg9lLzf+vj/kQnS0Kom4CeXSz/HPjjUDG5NsMV+9Tz4a523+kwyiiTCWi2
	yYyBk/uEpH+RdLAp6ysr36gbdrAxfYBcZKAG2HkUoIJFrIZz4hTHpnM2wn3fjgIhaL2kPZ76CU9
	PG/LxLHvfxPQX/HrzpUxMFqVQJ0qR2oN4gIxLwkgQBhd/UebTIThuXkn8sooLuS4liVVvNGVeR8
	tA9qPaXM+1/isbgVJcjuYoDHxFIBu6sENhDhVjNPpSon8V8IpJROYjXVXXs0Gc541/ibb4zdNyk
	pdM9xoD559MSgvGNcPJJUhQfCvBNZT1mIW6htRywEIlYkll63lxLUZTql+GsFQIn5SIUC+PjVF4
	a
X-Received: by 2002:a05:6000:22c3:b0:48d:f851:ee5f with SMTP id ffacd0b85a97d-499c7a24a58mr6198485f8f.24.1794414763742;
        Wed, 11 Nov 2026 08:32:43 -0800 (PST)
Received: from ryzen9 (192-164-242-42.hdsl.highway.telekom.at. [192.164.242.42])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4983600bc9asm11031665f8f.29.2026.11.11.08.32.42
        for <drbd-announce@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 08:32:42 -0800 (PST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To:  drbd-announce@lists.linux.dev
Subject: drbd-9.2.21-rc.2 and drbd-9.3.5-rc.2
Date: Wed, 11 Nov 2026 17:32:42 +0100
Message-ID: <867bij8h1x.fsf@linbit.com>
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Post: <mailto:drbd-announce@lists.linux.dev>
List-Help: <mailto:drbd-announce+help@lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
List-Owner: <mailto:drbd-announce+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain

Hi,

here is the DRBD-9.3.5-rc.2 release. I decided on a second release
candidate, as things did not calm down over the last week, which you
want before a release.

I am now targeting next week for the final release.

This is a release candidate. Please test it.


9.3.5-rc.2 (api:genl2/proto:86-101,118-125/transport:23)
--------
 * Serve changed block tracking on the drbd netlink family too, so that
   it works on kernels without the drbd2 family (before 6.2)
 * All fixes from 9.2.21-rc.2
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

9.3.5-rc.1 (api:genl2/proto:86-101,118-125/transport:23)
--------
 * Track changed blocks for incremental backups: a tracking bitmap slot
   records every write to the backing device; cbt-flush and cbt-start
   bracket a snapshot taken while I/O is suspended on all nodes
 * suspend-io now also waits for the barrier ack of the last epoch, so
   that with protocols A and B the writes are on the peers' stable
   storage too; flush-to-peers=no skips that wait
 * Add rdma2, a new RDMA transport that moves all data with one-sided
   RDMA-WRITE, sends bios zero-copy, and fails over to a surviving path
   when a link goes down
 * Serve the new drbd2 netlink family next to the drbd family
 * Optionally serve DRBD 8.4 userland over the netlink family at version
   1 (CONFIG_DRBD_NL_DRBD1, rpmbuild --with nl_drbd1,
   DEB_BUILD_OPTIONS=nl_drbd1); off by default
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


https://pkg.linbit.com//downloads/drbd/9/drbd-9.3.5-rc.2.tar.gz
https://github.com/LINBIT/drbd/commit/c75ff4bfd35ffd5eb18d9c785fcfda36b1d6bd35

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.21-rc.2.tar.gz
https://github.com/LINBIT/drbd/commit/0b6dd9039687fe61ae449cb5a2b1b6e7b5b9a4e7

cheers,
 Phil
