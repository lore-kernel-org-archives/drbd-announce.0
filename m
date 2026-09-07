Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7874BCABD
	for <drbd-announce@lists.linux.dev>; Mon,  7 Sep 2026 19:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788810707; cv=none; b=fRN8k9LkpkKe/Kz0/L7iLlaW1ycRhfwVfqXyCRV/U2xxDx98HAuRi/y6QFJU3UMB/W+wNYbwNMBg+T5qWxNiKUMmty5n/zJSxL0Kv6HYG0GT1LllbPcI9h5UTTgxJ3qIglnSV9RMbBL5gwJKgR8GscuI+OVBb4P6kbvNrXSSo4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788810707; c=relaxed/simple;
	bh=W3P8KyPHrOyGRQSuMsHDVYKCgkzP8OCS341skeK0lIY=;
	h=Date:Message-Id:From:To:Subject; b=tj0ghzOFZvTTWH1PTeUAjH+5Byo+/da9HRWQsWMrNZ1/5ClULdoYJn8QgCR3h73qrnzjosRzK4KE9yZJprN7TUEWTeEUY6L1ZvsTI7Ko6Rk84YA9OCmKJPPgLxUNd/h1Lbv+g0y5B2G9WvRPxWElAU0QjaoqqNb/+2gZOAplBF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=I22J7NQs; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="I22J7NQs"
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-49b8687630fso33263505e9.3
        for <drbd-announce@lists.linux.dev>; Mon, 07 Sep 2026 12:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1788810703; x=1789415503; darn=lists.linux.dev;
        h=subject:to:from:message-id:date:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=pV6pIJfFpMzuQ3f8xbN+BTP7AXBXfUIa/QxpR1UwOFM=;
        b=I22J7NQsDi0kh8MwEPfUzFfSxiMdwP1oXMWB/08r604ds+8UtpE0PEo+jcp+fvvbYo
         UOemJnBAlcAaeAddixW++fHlnMbs2yNs3cEi4NjiOK9hCrO3UrrD6bCU999TPrLm9o9E
         0nB3VSkz252H5UPblsQlakljlEFajPFRrHQT02F8RkJCQr57z3wpeNYFMPU3hfWuCmn/
         +c5BzuVgTZBDfnRXz5pqY36ujYrZFYw/WtrFs9vOCGpfK33hNrIt2dQopLy3ToAOXMfj
         hitCXORR/nmSpCTeONaQIVitKWi+bYNlrBz5j6K2UsoMzoEWABXZzZ8Mh2bMTjpRWTBX
         pM+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788810703; x=1789415503;
        h=subject:to:from:message-id:date:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=pV6pIJfFpMzuQ3f8xbN+BTP7AXBXfUIa/QxpR1UwOFM=;
        b=EAczj8Chw1gLRrr5VM6YBOejbR3/uyX9Gs22565J9Q04wNlxvmYQ8CU4Jt3UNDM/q6
         AhrvpkfxlFJ18lheYLJMByoRq7s0mA9jFRo4vJNvzoGp285wd/GquDtSpCZWi3RsAAWM
         1Z4ATtRzkzvuddb9CSkqtxGLDaDee0E5ESB/KpemawTNK+oDtEKtBHwGpf/4udxhzGpM
         Qsv72EoA1WdjXt8GA3wnrAhaBmnvW9yATNcbioZa+qXdxtEQyKNO9vJlXBy+Ep4c/0ek
         FGGsvUBajymhgNk/+cmOhX3zQrYvBgrF3BXPcOxpNmXHrSTa417CvAqERlvp4+HA63QY
         LJ9g==
X-Gm-Message-State: AFuF++nUckVNOeqkKDikZ0EAmuiFxbD5o2/2W/ou4C7Or6oxzjBRJ87o
	Z6wJpjwD48aBuX4AC4e9mrYONSdUOz57LeGAjWClaeB3Ls6M6/RbtUlEwzWyR8RTVwni42LduUP
	ThkGrdkE=
X-Gm-Gg: AYBFou0sqSDbw56xxSM30dSMY4sizilaIedC4DYSGBE5P0LQJOx2kNap4657kPLVjfg
	FEaNXywi1ClDDzHyOzmIys3RI27l3rJswLDyDRHu143ZyeIlQFqMfdKfTLvWVF6MM3ARzqHe10Z
	s9IS08sbyql5Pl1vZ7WsuZNzuYRXdrbMlkj80GT98hJOPUS7GL46iXSwEO/MX773X27PaqUgL40
	9eHSQvWDzdp/ugv6fbWmqSKOo+TyvCHuv6p3ko41BZ5QJJtL6Ef2gGroYAD7OUnB3RFSQagy+ya
	8oQlw0w8bGus+5nEN8FF9QyV9Z2dOP6khMvkB6UbydmMFVUD+NdSeLJcgnulSuY7nBQTCyHwL5i
	CUAf1HMFJenSq1dhlxcQCbbTQgtpVkyyEpbSUyyLUo+Y1p6egtrZuMIz0MBBhK6u1o2X6fJb+HH
	lV8RYghra2JOf9qcQAig0hatl/oeo8z5tHNrgNz4lEDJb6qJCHBPzefpaSW7OJCdD9eFhOCU1eb
	dYdumSIGZVuL6Fb3rex5jlIfcrfj7+2k5gN3w8m1eMpDQ==
X-Received: by 2002:a05:600c:3b01:b0:49c:fa21:e73b with SMTP id 5b1f17b1804b1-49cfa21e86cmr205970345e9.17.1788810703019;
        Mon, 07 Sep 2026 12:51:43 -0700 (PDT)
Received: from ryzen9 (192-164-131-220.hdsl.highway.telekom.at. [192.164.131.220])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce5936a5esm201310585e9.3.2026.09.07.12.51.41
        for <drbd-announce@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 12:51:41 -0700 (PDT)
Date: Mon, 07 Sep 2026 21:51:40 +0200
Message-Id: <86bja8kfg3.fsf@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: drbd-9.2.20-rc.1
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>

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

The drbd-9.3.4-rc.1 will follow as soon as possible. I hope tomorrow.

This is a release candidate. Please test it.


9.2.20-rc.1 (api:genl2/proto:86-101,118-124/transport:21)
--------
 * Fix a sync target overwriting acknowledged writes with older resync
   data when the sync source lost the diskless primary; such writes are
   now held back or postponed (new feature flag WRITE_POSTPONE) instead
   of being silently rolled back
 * Fix data corruption when a peer bitmap that is being cleared by a
   running resync was copied for a second peer
 * Fix several ways a Primary lost its obligation to start a new data
   generation after losing a peer, each ending in silent divergence,
   and a spurious I/O error when a deferred generation resumes; the
   obligation is now tracked per volume and logged
 * Fix a diskless Primary losing a peer: rotate the current UUID so the
   stale peer resyncs on return, outdate far-away members before
   resuming I/O, and keep the sole UpToDate survivor UpToDate; also
   fixes promotions freezing I/O on nodes not connected to every member
 * Fix a resync target ending with stale data or an old data generation
   when a crashed primary rejoins or a diskless primary announces a new
   generation mid-resync
 * Fix al-updates=no: honour it at attach time, and mark all bitmap
   slots out of sync after a primary crash
 * Fix kernel memory corruption by a malicious or man-in-the-middle
   peer sending out-of-range payload, drain or digest sizes, and a
   divide error caused by bogus peer block sizes
 * Fix a use-after-free of the resource when a connections dump is
   interrupted, and a refcount imbalance flooding the log with put_ldev
   assertions after a resync request allocation failure
 * Fix soft lockups: the sender thread pinning a CPU while its
   connection is down, and IRQ-disabled bitmap scans on multi-TiB
   volumes
 * Fix several deadlocks and hangs: whole-bitmap IO vs clear_peer_slot()
   or online resize, WFBitMapS on an equal-UUID reconnect with leftover
   out-of-sync bits, demotion starved by a failing connect handshake,
   and connection teardown blocked behind an unacknowledged resync
   conflict
 * Fix many two-phase-commit issues: stale replies answering the wrong
   transaction, prepared peers that disconnected, forwarding node
   handling, a state_sem leak on timeout, and unbounded connect
   retries; log which volume a connect is waiting for
 * Fix resyncs stalling short of completion, and a connection dropping
   to StandAlone when a crashed primary rejoins during a resync
 * Fix drbd_suspend_io() not waiting for in-flight writes; a detach
   hanging on a dead backing device stays interruptible
 * Fix restoring quorum after a reboot when the remaining members are
   diskless
 * Fix connection losses: online resize ending in ProtocolError,
   volume-less connections reconnecting every ping-timeout, lb-tcp
   "drbdadm down" stalling for a connect-int, and a TLS control socket
   close going unnoticed


https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.20-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/b997b6c56d8b88223a7d29f3dbb77c8ea15b9498

cheers,
 Phil
