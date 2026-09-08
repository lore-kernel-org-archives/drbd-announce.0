Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91DC048E0C1
	for <drbd-announce@lists.linux.dev>; Tue,  8 Sep 2026 19:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788896724; cv=none; b=lJfxUpJ3WL691QwAidLghxDUJWnks+8gAX/QDrXRMIHCjZ6+pG/3L2e6hdLhN35Y/0nKpImJRazaMfSJXMJhuqOJT4PhA+gFQkYjUYWBVC9MGs4FFl2XxQrP/SqRLkGX0XYVodLyNp874O1cDPzAHZ4IkK/XVQeZX07bNBYvYK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788896724; c=relaxed/simple;
	bh=BuyAjBDy6LANKedBbT6dAV6qXfPVm4jQWKXyDDaUDvs=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=HkB3dF6xjtklHLcxZAZdx8YPZkcX3+Dln14ZrRckW8OmQB2yaPoLJTPGwlZk/+TOteg+ovycWpIb8HbaGGkIAWliTpjMGI/MaCvBi5Ryzmv+HQxj84p2LUqpNJLTYpZ2vjCgv1Rtisu0Y2t8IRcsif2Qmldk2qzUVR7JIPFjZRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=cGFqhrKs; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="cGFqhrKs"
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-49d0da752ffso29102285e9.3
        for <drbd-announce@lists.linux.dev>; Tue, 08 Sep 2026 12:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1788896720; x=1789501520; darn=lists.linux.dev;
        h=content-type:mime-version:message-id:date:subject:to:from:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=6bpHODIwyf98qDq0AvlzT3ewBiKY6O2iHfKhlCGzNVw=;
        b=cGFqhrKsqtmUQx0DRNicEB3h5sZ77+LulAXpK8rITZ4sqCOm873tPtG9cJ5OizaKzI
         lEZFbRg5gOrojGPd3qcHRXNSopCqCWUgtXytX+MSdoWgbmxUW4MV4AsTdMsos8z2zy0g
         V7tlCUrE+yFLaa/rTjujdfBSFyj6NYaWkHBAz1GhZ5NMle3OyshquGSaj1yHw/6XqrHb
         eu/8HytsW8NsD3CGSSblHbEYDUD6h9Obja3pHXNzZ5bWMHmikQ8Bsu0wGqkYhtEJcEJD
         fhVf/SUmfXjrqpsGlx1VdBjp9bG3UV29Ge0QbV4pMpp++VrfP5iIs/7dIC9e9z34E8H0
         D/qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788896720; x=1789501520;
        h=content-type:mime-version:message-id:date:subject:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6bpHODIwyf98qDq0AvlzT3ewBiKY6O2iHfKhlCGzNVw=;
        b=J6/MbGeN+VRcs7rsDJvP0xfoi67MQTXsFi3bDz1FG3rMgUEv6K59kub6ZfC+6EhVHF
         XdtLCFNEuK/e8AKTmD8hU/TwZcKhoC96QHWrmRxORmIdLyZuCaBznvhzRLVdgGzlfjq8
         ESUqojyc5taA+caYchwd4zeYpShieO4xKnHMPWaoqbtUM/A9QLNf8mXCt2NXg7+ccpCx
         XatmK+Z9GAPUmNzAjgJqyLpRql1vb0xHTGKcSfZ52z9szF7Vgu5APqgJmHcWb8/LtP4d
         +UWIXnTnajEpo8ZSuqjQhHdnxXNzkit7UwRv+sl913P9urhXZjmIBCc+70jFIGZnS0E8
         gwfQ==
X-Gm-Message-State: AFuF++nktwo/dabwdKkqhm6y3h3x/c/yyzWny42hun+uui8jA0pqnS7d
	xwoiLE16tbvuJQQLW6yQFKHLmX+ebsIKVDsryk2v2jharlxuL7UNc2lFmLlowYBZfaYvIGzCMY1
	1VDmF/To=
X-Gm-Gg: AYBFou31sEk7QpHknurlep7vLraNM+Z1mCT2oYHNp0e8JqjLyO6q984Yj7kUM7BSNfD
	Wp3hon5RIF5VxxgcVbhUohcMX4z6VvjhlOFzu3wgxctmTofp4tSEPbgwXumfYoOxW13lkaa1dX1
	4hDOYm0+iGmnh5CFFiDsJgcptLmAF68tNtGoRHMghkFoKTfrh2L/8wLiPu/FXcC9S35LS/TN9vm
	ZEBhZMTTMRp7xiM+m5ipOwrSY7D9f8GfkcXh0e1oXswdNxrCQVPXmhiaqvKZ5ImUymmuEkIJdgI
	DJ+hb44kXhrw4Hpk1Va7GZG+lDE1nIZ7Hocfbte7i+MKFhfQFN09o6oewv9Hta/rrP1D/0Ycab0
	knerJtINT2j3hG4UFVuSVuogDGgbIg8dCK8bDx5gCknzxNMew1f5W1s2WSFBtAK7E/MfhbSU08C
	fbANv1n6ilgU3rHOKRbXi6lyu8G5byXkH1YsreKFJp7fNc8PSXxR45ic1dQYT2fsOn5qmJNEKFD
	ReP/gPju7/sUCIOyK3GtfYeFLBg+9cbDuc=
X-Received: by 2002:a05:600c:354a:b0:49c:fc6e:8cb6 with SMTP id 5b1f17b1804b1-49cfc6e8f48mr289272095e9.26.1788896720455;
        Tue, 08 Sep 2026 12:45:20 -0700 (PDT)
Received: from ryzen9 (192-164-131-220.hdsl.highway.telekom.at. [192.164.131.220])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49d08144037sm326959045e9.7.2026.09.08.12.45.19
        for <drbd-announce@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 12:45:19 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: drbd-9.3.4-rc.1
Date: Tue, 08 Sep 2026 21:45:18 +0200
Message-ID: <868q5bjzn5.fsf@linbit.com>
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain


Hi,

Following yesterday's 9.2.20-rc.1 release, here is the release in the
9.3 series.

The delay was, as so often, due to issues in the kernel compatibility
system. Supporting such a broad range of kernel versions is
challenging. Solved for this time.

This is a release candidate. Please test it.


9.3.4-rc.1 (api:genl2/proto:86-101,118-124/transport:22)
--------
 * Generate the netlink interface code with the upstream YNL generator
   instead of the genl_magic macro system
 * Fix a ProtocolError disconnect loop ("BAD! BarrierAck received with
   n_writes=...") when two volumes of one connection replicate and
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
  - Fix al-updates=no: honour it at attach time, and mark all bitmap
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

https://pkg.linbit.com//downloads/drbd/9/drbd-9.3.4-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/e8a510108477b2c4bda30429487740ad2da1deaa

-Phil
