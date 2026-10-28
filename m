Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.218.48
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793207135;
	b=rBTTSxkkoqPH/PZLkfWW/E3q9YaLVVpOtLNDpRqG/MPIdX/gnjQcFT+1IxMqIjDhbWVq
	 EEPKtNv3Rw5P0gmwk/p6/Jr6lvbrKHU4JD20raT/fx9EEF9lLWhwhGvaV0F+BvO5s8j+f
	 2Moxr9JzrD8mlLQ8C5Vj5J1ZoGs3AlNqaPTSfWth6lMneGL/3n3PMj78RZn91YOQev7h8
	 m5mFCLwCUFlD9kz+RerKwUKd4G+b9gr9qKOL6diT5Rj4uzsBzrnC4pDkAVL7Zp6USYA7p
	 pc7OAUgLTiQcRbWUbv5dNlqpCnNSD/Rfo4wrcCU1qy7NrYiHkam7K38pK987PETL6sA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793207135;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Message-ID:Date:
	 MIME-Version:User-Agent:Content-Language:To:From:Subject:Content-Type:
	 Content-Transfer-Encoding;
	bh=BsZ7lTdZFBLuF8BcMLwTU+LmDX5QzF0PLkZfww2GyhI=;
	b=cY6gitsGqwVxgQYNaS6pe4cdN2VQGDPkO/0YvEDDMY5pO1y/6vsDVKjxWIfhFXRluIwe
	 cn5PIsREqMQs+9nxfQ4FwO0Qut+odedJFxHJSXZDgeDRhvdgx4hG6kYQNXmhdkCFpvmFU
	 TBKzkM5vZbVJa9nHDX2S4i4vDw4AwfgH5I8z7klAGfoSw4NAlpwLlOecWpg4rOAGV8N/T
	 MuqJhdOua73Y9tMa3J6OZBdvmqx5son5In/zHzedFmcV0HBR0XXp39jCABl1UL3J0ZRKG
	 mcMK9CGAho9p+dOJpqkZT6NedUKdW2rsC9gMd3pdOWFnSF0CtrVqEr2mDut2/Cbu9cQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linbit.com;
	spf=pass smtp.mailfrom=linbit.com;
	dkim=pass header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=hfeYQT4D;
	arc=none smtp.remote-ip=209.85.218.48
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0067A606A31D
	for <drbd-announce@lists.linux.dev>; Wed, 28 Oct 2026 17:05:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 0067A606A31D
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=hfeYQT4D
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-c468bd799ecso161823666b.1
        for <drbd-announce@lists.linux.dev>; Wed, 28 Oct 2026 10:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit.com; s=google; t=1793207133; x=1793811933; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=BsZ7lTdZFBLuF8BcMLwTU+LmDX5QzF0PLkZfww2GyhI=;
        b=hfeYQT4DOyNzE1L5SMQqGOpcTG77bicNOelucJTtEcJw9azMji3QV9FNb8f1gBgbaj
         ZngiIvv1Zx6wK2tNQYX7eSClq8EFH0pSNAxXihh6tp1PXyhRhxqc4QhD7ZeqMK1JepJN
         MTQ2UYwgqMzH6VSAJuMtsmSPQZQT76kVWv/TpKqXw0yWhk3PtHGUpMsKSiD3I9s4TgL6
         a2AAjS3qSGYsOk1WAXomaiEyEaZpaoC3wdwyDK6wBPTLRrPCB9l+mDqJKuJ6msb8L8r/
         bAeNu1D/uYaqiVa4woIWNgit7a57Bpld057lvc1kZxj3v7kyRijy0sOWJ1AsVVahyQ2r
         zSuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793207133; x=1793811933;
        h=content-transfer-encoding:content-type:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BsZ7lTdZFBLuF8BcMLwTU+LmDX5QzF0PLkZfww2GyhI=;
        b=DArkZ3jKFRgN48ZwKf+5uvRapqxV7dYZsCpFmTknUqplmN50RkPTi3lc15oNB9etAo
         HvgCKUQrTPYciLHkMAZXqMte226fF4+X7L0jFYp9FjKuxsza6r+zBuyCwiBd1nNk5R03
         tJB11SJUaOh9nSl8PALuM6S/d9jYqQa7tfu+L6GYdKqNRFly6RghmofeIMd1coA9cTAS
         p+EO++0uHq4KZcOz/iYXiTZpZ0bqD+laBlxS7CRfnf4tdXqyFdYnFzJdKnwg4X7y84aU
         LfFSHMYuLFFEhhcqU52yEYdcnwWaQHHu4mSiliJkK995z2A7vzou5p3STGhVFDo6Ugzp
         DtDA==
X-Gm-Message-State: AFq9FYK7CPLaU5ujz16SBAczd+Bhy4lez6aSmkToty4TLGcXi45lGMCs
	Fs8tx/ko4IZ1ZBV5ktDBQVJas88AZU4fmE5zsLwbwh37uSFbcc1JIlBAgnYBSu+ORjCFBWrEobH
	BXOFbPlY=
X-Gm-Gg: AYBFou1P9+3TEl7Dol87agMhqSohbUAetlIJXtKA3zuAoOInKu9nvDmqK0Jd/owzVIh
	XHA3S9sCWNria2zaMtkhNw7Dv2KgAYFOO2qDlxDWISHZROxKcmXRQ/IkfHQnbhr9Kydx6UbhYNM
	SqAoMVLCS8dRn47SSUWJmAhIgmfgYg6MTZ6qA/qSg5+H31HQFfwIzG3jcSRYRtbE0BXSZo10ZzE
	ub9DcOSOxQYEa0QKO5DQbW/UZ+ksj4WeaMjSDRqRBWrMsRjFkiuQvHWcYbndBqjHlPlrcjgrjZO
	CGXqT20ShGy7L3wNyu8jT2djfn/CjoFqlZmiihGp8Z0nrUfo7q7yIeON3N3oUz0eYrJ4Ei8Ds5w
	oCuTiUkYxdIuHOkuCXcjJpp2Uj8wcTHiFuxpPfim3BpMUElMmOyY5M9mBBEr7d/pb+LoSEmQ/El
	1ZGCEq6CF8R0FRxY2lH+bx7XJyiYI3iCFqDvtPUt60vrh+qENImEyTnPzJRJo3ejvJKNKfzStxN
	Sp8JeXLli3TDDOscIfywDiMxfb/nJ9aaqnv9IrGhLTDxxiVgAzKgz5oKaILUfUghtGICMidjg9U
	w5sWmVQ6+v6NStRHTbD8hXhC0Wk4knSDtjSVcD/q7vAlTgnSkiR/u/79AcYr05rJFbekySrmlUz
	HwDK3jAQ6zo7ea+k=
X-Received: by 2002:a17:907:3d8f:b0:c41:53a9:c65c with SMTP id a640c23a62f3a-c49be039ea8mr265458866b.34.1793207131761;
        Wed, 28 Oct 2026 10:05:31 -0700 (PDT)
Received: from [10.26.138.53] (178.165.177.13.wireless.dyn.drei.com. [178.165.177.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ebcb9cesm31060065f8f.27.2026.10.28.10.05.30
        for <drbd-announce@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2026 10:05:31 -0700 (PDT)
Message-ID: <d5dc800c-0951-4d88-858d-100fa46f175a@linbit.com>
Date: Wed, 28 Oct 2026 18:05:29 +0100
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Post: <mailto:drbd-announce@lists.linux.dev>
List-Help: <mailto:drbd-announce+help@lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
List-Owner: <mailto:drbd-announce+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: drbd-announce@lists.linux.dev
From: =?UTF-8?Q?Christoph_B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>
Subject: LINSTOR GUI v2.7.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

a new version of LINSTOR GUI has just been released: v2.7.0

https://github.com/LINBIT/linstor-gui/releases/tag/v2.7.0

Here is the relevant excerpt from the changelog:

-----------------------------------
# 2.7.0 - 2026-10-28

### Added

- Controller overview page
- Node detail page
- Active controller shown in the node list and About panel

### Changed

- Upgrade to React 19 and antd 6
- Complete translations in all languages
- Mobile-friendly layouts

### Fixed

- Cron schedules in the built GUI
- Resource group edit losing settings
- Dialogs showing values of the previous object

### Security

- Update dependencies to versions without known vulnerabilities
-----------------------------------

Regards,
Christoph

--
Christoph Böhmwalder
LINBIT | Keeping the Digital World Running
DRBD HA —  Disaster Recovery — Software defined Storage

