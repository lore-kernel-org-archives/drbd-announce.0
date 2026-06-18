Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCE91B4156
	for <drbd-announce@lists.linux.dev>; Thu, 18 Jun 2026 17:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781802126; cv=none; b=oLYnXR1zBOamt7S1vsXPcmPqp1JDnkTkF7O+iGdGZ4r77SMsqaD+hAiu/OkMbYOV0v0TUXZtLvt0AWdOusVDMg+BO8mrlHCJXmCUvCSySsmS75alGUEU+vF0dxDcHD9W53RRMK1CyByUcJEbT+FpPBbEmC9UbRBh/mwCCtVmfgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781802126; c=relaxed/simple;
	bh=QeHPtT2XoRdFez3firU1zQ3I5HnmLgk5qWxuFmTiJuA=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=kkRSsxZzppwJ1ElwxeKz1UBBJPVllF76/CaVE6ooeBQ5FAELarUTu+DrdSH4VRNgBNxKJ22D77lfG8idjwYTgCQfssrfwN2Qan727dYjZgLWsdyxXUDgRw73Z7Sy+1l6+Gk3t7aVEhjrms45IjvZ1y6z9Mgz9KC14zPSpw5aIJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=nnt+vr3R; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="nnt+vr3R"
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-4624a44e152so1007026f8f.2
        for <drbd-announce@lists.linux.dev>; Thu, 18 Jun 2026 10:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1781802123; x=1782406923; darn=lists.linux.dev;
        h=mime-version:message-id:date:subject:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=W6obVV9vLPN8xEE3l5pNnwn5ieJTIXyb5Fa2CPc2JMk=;
        b=nnt+vr3RwZB3ps5nVCgXWhiYtq7NXX4+SyRsprkPdM3QBJZ5cTKKyap/z8hHQrd4ka
         7EfEBMuiVn1+fC9UXkKoYmG9BMhCme0VazSedErgFtbL/xqEVWrysWZqF3nVF0GB0Iqk
         a0Ia/ZIP+qDeskc5NWJ0GkQxg2RYq1YhJ0iWKkT6XH4IQAwLv7nPj9WEY7FpPkGvZ4w+
         m3PIji6yu6sG0M4Em4OUz84TdaABq1+k5A69Sa3OEmrgYFgjv2/4/2GeBNzi1tZDwx+C
         1D67y1jHAUKn27eMIWSZVYNXA05A4kbl/qPF7wUljiW+5u2xqX9luQA4lyKS0XzB9xHe
         0c/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781802123; x=1782406923;
        h=mime-version:message-id:date:subject:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W6obVV9vLPN8xEE3l5pNnwn5ieJTIXyb5Fa2CPc2JMk=;
        b=pl0+lSubjh2lDbGMfJ3MjrPp6yLSZNSBvSWuPk8MiVKKmlQXbcUG73UiNOpxybPE6e
         VigSYsnMyp1q4w9/6c6BQlxWUIsu7nUJKoj1lk/5IsAi2cE3HnxUiq9jFoNRtvaC/cfb
         yUb4dx06iK0vnY+3sjT3VM5mFpU6aoOk6IEhMKv9Pq0Yy0T9s/xUwVdtL5Vw2rt+U0af
         9Gu4fBVqwCB/uY4Z4+U08JRb7IyZ7RO181LBpyI9mAy+AtvVnnIROnL9x8Ay39Mrq0yh
         Jr999LRp9J5m5yscem0MugRNgMS2H2mtwInmfKtga7icgPAbH4QnDY82YdUYhTJ2jdq5
         S7sg==
X-Gm-Message-State: AOJu0Yxb2rGENlx382GzYL4DT4cxmF+wZaSzw+Oz93gVHbB49H8K+h2R
	E4v6H7XqUp/2AqIBk+cD/EulolywUZDs7RLoilBzBPshvsFYLAOjbuwxgMuPUmP5E3i9AEy+lfW
	/OTwGWkw=
X-Gm-Gg: AfdE7ckxI7hoKuokiBb5xFB1chdg7NZW/AIm8pQkMnX41VudyauV9rx1XJvGZba9VEF
	yRMVgiWoW2QVImdWJSx0QRagD4PYaTjENjKnYhjCKpk6b26qLfRqXmYXs8Z+R9bALv5VPCvFkA9
	hKcL1g9kIbU7+CEOWG93Q7IWCBVkXvSRTwZrTohnF/O3Cgj79h5wR28T8oeQzLb6fvC9y7ZqhFq
	M0MEBls+70ctD6Eeb/Y4mm6lVZpT3ywROhqj8cQHdSqED+t+Wpx5nmOQW4VGOvohb5gt3rFda0s
	JfjgYuOxpyIvCh3oSAz3NHs/96pMWra80F2nN8w1q1HgahyxTme5cxW8IICJL8YYHY2H4Bfd4Dk
	fG8F4VvB0J43qE9U7Ij8ZMZfXOiwFMhR7WHVCFyG7FfsE+Jjw6P+r2wVN29iwC1nu82t/5eX3Bg
	0QAzQ0fe+5EIhVSs270C5/4orROPYSpf3QzRRK/aEtjiJRqKUhYa9FrNEBg5JM
X-Received: by 2002:a5d:4944:0:b0:463:ecb0:a52b with SMTP id ffacd0b85a97d-46508535316mr275998f8f.20.1781802122482;
        Thu, 18 Jun 2026 10:02:02 -0700 (PDT)
Received: from ryzen9 (192-164-131-220.hdsl.highway.telekom.at. [192.164.131.220])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4650b67a34asm237300f8f.22.2026.06.18.10.02.01
        for <drbd-announce@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 10:02:01 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: drbd-9.3.3-rc.1 and drbd-9.2.19-rc.1
Date: Thu, 18 Jun 2026 19:02:00 +0200
Message-ID: <86ik7frddj.fsf@linbit.com>
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain

Hi,

With the upcoming release, we are fixing a surprisingly large number of
bugs across the board. All of the issues are related to unusual
timings. An example is the resize that could lock up when a write on a
remote peer switched an activity log extent on the resizing machine at
the "wrong time".
The other large fix is that DRBD around the scenario
when a diskless primary gets isolated from all storage servers at once,
and the storage servers get isolated from each other at the same
moment. E.g. a network switch failure.

This is a release candidate. Please help test it.

I'm planning the final release for Monday, June 29.


9.3.3-rc.1 (api:genl2/proto:86-101,118-124/transport:21)
--------
 * Support adding and removing paths on established lb-tcp connections
 * Fix a page-reference leak on TLS connections by copying instead of
   referencing pages when sending
 * Reject paths that would make incoming connections ambiguous
 * All fixes from 9.2.19
  - Fix silent data divergence when a diskless primary creates a new
    current UUID that a peer never received (e.g. switch failure);
    the optimistic UUID is now confirmed via the data stream before
    being relied upon
  - Reconcile two peers holding the same current UUID but still carrying
    out-of-sync bits toward each other, instead of silently dropping the
    divergence
  - Fix a list corruption crash when freeing a peer_req that was
    still linked on the send_oos list
  - Fix an AB-BA deadlock between online resize and activity-log
    transactions
  - Fix a use-after-free of the TCP listener during connection setup
  - Fix a list corruption crash and assertion failures when a peer
    disconnects while online-verify requests are still in flight
  - Fix several races during connection teardown that could crash or
    hang (ack_sender requeue, pending ping work, in-progress lb-tcp
    connect)
  - Abort a two-phase-commit on peers when the target connection fails
    to prepare
  - Added max_parallel_resyncs module parameter to cap how many
    volumes may resync (or verify) in parallel
  - Fix multiple RDMA transport bugs hit during racing teardown: a
    NULL pointer dereference, a self-deadlock, and a cm object leak
  - Fix bogus resync speed/ETA reported in /proc/drbd when the
    out-of-sync amount grows
  - Do not throttle a resync that is losing ground to ongoing writes

https://pkg.linbit.com//downloads/drbd/9/drbd-9.3.3-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/40a5c7792f0791838c87fa74cc0ad91c49421200

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.19-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/e0f5483477fd0a56886d11143103cf3b5a069735

cheers,
 Philipp
