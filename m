Received: from mail-wr2-f12.google.com (mail-wr2-f12.google.com [74.125.225.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0798414411
	for <drbd-announce@lists.linux.dev>; Fri, 11 Sep 2026 13:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.225.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789134551; cv=none; b=cTWXT71P8HIKMv3TWgrMTXTXjXS1ZFLfg0MjnoQOiHEYfC1xWoUby/pUQYxiCdjE0MgdVTl27O/gX8Ly2gftQSY4PmxZ2c8ZRayH46LlqyWboTbU6DQAEty0pzGGUSTog571GfhLc7zo9pqfkm/tPttGWfyRGD4ClMW477Y3TMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789134551; c=relaxed/simple;
	bh=jrTZCSytOA0JZ/3hgVf6oYBvJx7jTF9KRWUHsEnItQs=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=S3trdBFkVUF604g/sErqKbx4U1QBNmwZPxH+o2+HedFkzr80FjmOshlUskH7zukTQKINUIBG2FeEkr8KcHEdPhSGgZcBEI2mVeOwI3ey89EeRrTBpUHhO+OOwBt2fQGVj5fJOzMtXmr+6fUV1L/b4KsTQkXKkGCBIKUF32y4ANU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=UoiBXiDJ; arc=none smtp.client-ip=74.125.225.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="UoiBXiDJ"
Received: by mail-wr2-f12.google.com with SMTP id ffacd0b85a97d-4843c2790ccso556931f8f.1
        for <drbd-announce@lists.linux.dev>; Fri, 11 Sep 2026 06:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1789134529; x=1789739329; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:subject:from:to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=V4JiPuYVk1MEXMQIRLGXnsp4THTBbj1Xl7oe/LCR5C0=;
        b=UoiBXiDJSi2LN+zlqW4SqAbocFE1Ybehy/0neTCNCDMmvDGgc763annAwOeMWjUwga
         rfqcTQC/KcI8pjo8PbILOSwdbHuuvpSizh7r3EN27xTqJgqiFlnhFmq+2GnU4AQaKlN/
         2WeDhDh9jwC3MhdSY9OHJ/2JLLdy1RRecNwOR19ECiI0senYpGzPhm1rAe73cpjbU+bP
         TnnCxZR/DMxG00rBzCWPFbVZMY6CBamiwR+HpboIbvuvCaQXe43cue3qliJdRfpQNH18
         j58H3hOPM+8E24coJuxbrtpVGUyFUykcZJTIFpaBKCIuIt8K/IO/V6TBZRz0xsY+RR3T
         3t7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789134529; x=1789739329;
        h=content-transfer-encoding:content-type:subject:from:to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=V4JiPuYVk1MEXMQIRLGXnsp4THTBbj1Xl7oe/LCR5C0=;
        b=ir/IertC5s/vXbzy26qEjytIIA631voPUSwOQ0C9fz0CdB4SbKmxZfOgs3hfvc13B8
         jtYFyAQ2Ll57CMHqkyDdIlPdA7eyJ7qlG2TFCByZ7CTolVLwgxwzscbTIQitF58qe4hc
         9JYZNKtQAF+aQJbtmE+HlDWEYFuOw0NTnNyUblbWcaCLxJoUUQxPrRyyNmSjNXF8ZRV7
         1QCdPiILcSy18g0wh87Th70jFytdSszxVo2XGzOqB3SxPZXKVzYc7XgbMjclwYZ62dS+
         wXZ8p07ruYA7kvZsnTxDxZCDNB/5YtK/SwJv8u3FLOIew1TvtDtEN1s/DdFUFq17ipXj
         Ys0w==
X-Gm-Message-State: AFuF++mmaPrlZWs41XwXj8U5BYBBg9o/ml43Jn3DOOU5YakS5rWifHcZ
	g9eJWQ2UZryOZlDIwexLkwZCz5NEBM315o9nsFCKiyrw35lFzqr4znc2rWKV3joUZz/zAEWGbay
	f0d6ZZkE=
X-Gm-Gg: AYBFou35+1If4vwJsrc9Uvs2J4KFIkyUc9VNiX8ptr662pldhE9kTGz4JmXcICsnp11
	fNgz2fHHcENMuHgcijJXjsxK9TTM9X9zTgqOmqZt6B24p15CATD5pYpPMQAgJEU58Nmg8IyCnA4
	+Ze2mK0ypmmqDf0HzjgaHgMiB7M2cIyLvRjPx0r/RG4RcZ1YY6wEE/Ra0Yt7NdcBik5gfFT1k1p
	8iz1GxYKylUB+Uo2w4yy5k2GXjB49jtK7jiJHYFSFWtYdPCbj2YjJPetnSM2q1mj+8UcR61ucmD
	8cLxFuX2tbjLfGcotCXP9fOpiPqSAU5gLmjcXGHfwmfqOMSoi9RNp/QMgiqLamLNjzGVfHh7Sfx
	YGzYCYIC4cJ0PQj/IbxdXJmEbp8tC2FnzN2VAH9GF//UBkEqlksvrzMVK2N5AgIrzoEZ7aTIwSi
	DzWx/ImdEfcWNPogHOQmpWXbFvqynK/9DeG9lyuEfZs8byt1TnFbdvLZsD5c1+KAqVGQqCZyHAp
	Y3GLXldL92mNna3wIuYl0Swx00uZHiHqRVjXq3qXEf2J1jbr2aICCCc
X-Received: by 2002:a05:600c:6289:b0:49b:9105:cdaf with SMTP id 5b1f17b1804b1-49e619a0973mr83111925e9.8.1789134529220;
        Fri, 11 Sep 2026 06:48:49 -0700 (PDT)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at. [62.99.137.214])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e6499d57bsm70921625e9.3.2026.09.11.06.48.48
        for <drbd-announce@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2026 06:48:48 -0700 (PDT)
Message-ID: <2ece8073-e380-43bb-96ac-b5922f28392b@linbit.com>
Date: Fri, 11 Sep 2026 15:48:44 +0200
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: drbd-announce@lists.linux.dev
From: Johannes Khoshnazar-Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.2.13 / LINBIT SDS 1.0.4 released
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear WinDRBD community,

We released WinDBD 1.2.13 and LINBIT SDS 1.0.4 today. WinDRBD comes with
some minor fixes, which are (also) a result of our in-depth regression testing
with WinDRBD these days. We continue to make as many tests for Linux DRBD run
with WinDRBD also. Since behaviour of the Windows kernel differs from the Linux
kernel a new class of defects in DRBD is also encountered. WinDRBD 1.2.13 comes
with DRBD 9.2.19 and 9.3.3 as DRBD engines. There is no urgent need to upgrade
WinDRBD, unless you are affected by one of the changes:

	* DRBD 9.2.19 / DRBD 9.3.3
	* Honor GFP_ZERO flag, thereby fixing unneccessary resyncs
	* Export DRBD's fault injection framework
	* Honor send timeout on connect

For the LINBIT SDS release 1.0.4, this is based on LINSTOR 1.35.0+,
LINSTOR GUI 2.6.0, and WinDRBD 1.2.13. Furthermore there have been
many improvements on the OCF resource agents (like ipaddr2 does not
need the nic= parameter, filesystem does not need the hyper-v parameter),
so if you are planning on deploying a highly available hyper-v cloud,
it is recommended to use this latest 1.0.4 SDS release for it.

Furthermore, our documentation specialist Michael Troutman is preparing
a comprehensive guide "Highly Available Hyper-V with LINBIT SDS for Windows
Getting Started Guide" (which has already 80 pages!), I am really looking
forward to this release of the guide. When it is out I will write a
separate announcement mail.

Best wishes,

- Johannes

