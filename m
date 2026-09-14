Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D413B14D5
	for <drbd-announce@lists.linux.dev>; Mon, 14 Sep 2026 20:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789419301; cv=none; b=UKwyQKIlh2BJaN3Jnqr1TxQmb6skr+Y7O1Ijhkqaz4PMJM2Fn1nVzSKOTkxUlvEJpqpO4XhHsloaQBCUNWHwH2FyEQBg9sm2THg9fcAfksCN7ymst4fU6/Pokj3UAhQvTrL9xNfjH6NIuLHenebM+av4oe1YmK+/3i2sS+IhDZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789419301; c=relaxed/simple;
	bh=/2RbgiAUkR1zXaPqglVnKJCLme/dtyZ5QjD0j9mdSBM=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=sOEXoc4TGVj9bHXTXvJn6t/jFwvC0fn70f0BAz7WpW3bG3Qs1H2SaN2SxrbV9DsopVNXGeNfezmx7DhmqbOR0t4HurAfCxDnaq5f6EJA+nkpszaU2jlK3dc+oWVsBYab4ERwTlwEo2WXUiUs9tqtQOBhAVxVeViSb6YAIkFoxLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=mRyGpjyu; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="mRyGpjyu"
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-49d0da752ffso45437955e9.3
        for <drbd-announce@lists.linux.dev>; Mon, 14 Sep 2026 13:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1789419297; x=1790024097; darn=lists.linux.dev;
        h=content-type:mime-version:message-id:date:subject:to:from:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=chJSpXWs+xZ1nyeN4OH3U+cUtF5LClSJpPuEpjrM7a4=;
        b=mRyGpjyuklqJk6NULaSDvtyI6Bpxs4WzLm75stED377OtWND/BSITP1OXETf8muA4L
         h1UVW02vQNt+ExOJgN26WY6o8fky4vxKogzN96dWww96Qw8B5T1LZyDr89b0oCUfLgZL
         No+j8RuKXZPXSaI+SrFI/VzbQA48Fl3fEYnFVwWkuBUuz+oldJZVZTrFduT8FGXnHwcy
         5ViCBuK0UXXQxJeokyFChcrFM5d61M47iqZxoIWz6h74Urt3wxS5PUi5BNb6G9sdQ/eH
         HZBplDRzeFmsGc/s7DLEOasWpdNZr1irUV8q4k5Y7Mo74eOji4gBHcdRlHCZPiQZiBYH
         bj1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789419297; x=1790024097;
        h=content-type:mime-version:message-id:date:subject:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=chJSpXWs+xZ1nyeN4OH3U+cUtF5LClSJpPuEpjrM7a4=;
        b=S0Hw+3XnQJZUptB2rjO6HxXsmygGDG47lzUhUm4dm5e15bWGJY5WJJhpvYI3J3CPKR
         oXOLngIlokFf5bTojqn9I5IpaA0PvFUjfJTYhBCOHPFMcwhb6DZt1Dj1Nq+xHx0HoTWA
         vHzGSJBhJX6uGCd3iQBc/mi1EjE3oPhvVkrV41gqe83qR0VZdikJU2NgYrcv4Ml4VZd5
         2V2RzmadsSLb+7knlNKxTUXSt+SWGlZkrWYvML5gS1dxMfLht6idmeHyMwqqQdeWQVKB
         P17YDpPrzvCqYIFBWkCo4tewf9waCBzpkg/dIn4vVBDMz5KHZsSDD7dUBbgWXQq8/KNx
         w4DQ==
X-Gm-Message-State: AFuF++nLUSUd8vchxahRixgWy6DZvd218WJKVZUn9phgB+ApgwCpZwG3
	tzJCJ3qO1HS+JsESB3WbAVROLxXp1NoD5WZL7ZOhUFe1JT7hp4yp59SBDoRzcJ+bdW1a2oS0KWZ
	D3j2HRko=
X-Gm-Gg: AYBFou2noFivwiG4uAhXVSXTVNPXr1YrGXwS7+T2yOS/ZNgHsLcqkHYuM61VeYh9RxC
	za9xe5AAXprKv9hYYEfyrOoTCiHEnuCN/zjWoHfY/YS299EPqIiVTgYidbJ7Il/GXGnWZg+/jG7
	RhkKft4AyrnwzapZiBo+6Y6CuY/Uzf1Z/7ZPC3KbMhprIGnHqLjpHCyKM0AMYaA3kh4W+Kg5bgb
	a9yagmw6r5VX6TKzoqzIj4/ZHXaFQJQ5+zef3DapurfWR/HbayQ1aac6FlsINHGYeu6mcG9IH2R
	W+ZEHSa48ehKE1LWJfwWyIk9Ar4kiGB8PNuEjBQCL8437H9j+Z771QAfwCG3PXsroU9xGY9h/Rn
	Gq811AYqLxdc3oz9TATvU7x5bbO5+TuvcQwuiVFCFasOoPG4o6oLjql2Cl04K28hsfQeO8aY1ff
	OmkqeawdpPVBM03kmpMSXKQ+iyjKdXf/aACCVfngwYz2KQmYSHKRHUbNe6K/Pp3Eeo0UphW2QdO
	mu82j8btDNX/HBL01tcu+8EOLG2OMQzwVForLA+WU1TxQ==
X-Received: by 2002:a05:600c:5020:b0:49e:6ac4:b76e with SMTP id 5b1f17b1804b1-49e7a67cb7bmr51998665e9.30.1789419297007;
        Mon, 14 Sep 2026 13:54:57 -0700 (PDT)
Received: from ryzen9 (192-164-131-220.hdsl.highway.telekom.at. [192.164.131.220])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e7ef74a5dsm4728685e9.7.2026.09.14.13.54.55
        for <drbd-announce@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2026 13:54:56 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linux.dev
Subject:  drbd-9.2.20-rc.3 and drbd-9.3.4-rc.3
Date: Mon, 14 Sep 2026 22:54:55 +0200
Message-ID: <865x07k0yo.fsf@linbit.com>
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain

Hi,

Ok, I need to do another rc. I hope the final release(s) comes
within the next few days. Rc.2 was internal only.


9.3.4-rc.3 (api:genl2/proto:86-101,118-125/transport:22)
--------
 * Fix drbdsetup failing with "Operation not supported" on every command
   that names a peer; a regression of the YNL-generated netlink code in
   9.3.4-rc.1
 * All fixes from 9.2.20-rc.3
  - Fix two nodes ending UpToDate with different data after a reconnect
    with equal current UUIDs and out-of-sync bits standing: such bits now
    survive a resync-free connect and drive a reconciliation resync
  - Fix divergence around the end of a resync
  - Fix a node losing its obligation to start a new data generation and
    ending in a split brain
  - Fix a number of aspects of online resize
  - Fix resync throttled to c-min-rate

This is a release candidate. Please test it.


https://pkg.linbit.com//downloads/drbd/9/drbd-9.3.4-rc.3.tar.gz
https://github.com/LINBIT/drbd/commit/1d1a324f12a1c78d42d9f8dcf7785969652e6be9

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.20-rc.3.tar.gz
https://github.com/LINBIT/drbd/commit/27619c225d027d692bc930efcb50592def4dedb2

