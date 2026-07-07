Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84CF40A93D
	for <drbd-announce@lists.linux.dev>; Tue,  7 Jul 2026 12:28:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783427285; cv=none; b=deXthp28VGLThVUkNGC1e46+Z1XMymgWdwILyL1AF8/wj2e178oAHlRFuNmGW0f82oMXQABhr/e4+v2UWnqsK3heKaH51RZBXtUIihRo5bNFtMucYTlMuwduuI4dQpbICAvXpyOULzUWehI8BiVQsO/A70w6Mk6pYstADZz20BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783427285; c=relaxed/simple;
	bh=z9Fk1R7nAeWm0Xa/TVRHf5n/iYC9OgYgEelkfcKSH4w=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; b=JcOvbPB02qi9dptBt+3sZslyO8dwax9PA3CDj49rwsXA6apSUduzhkvP/MLPhabA8fSFn32bQQ57F6l26ewiXGAEdb0kONYVv6aWGHSk06GfdjDRNngdgvF5JoFqMo5Bt1R5LsDq2v/ciMXsBdSxChk/M2WlMwAE5hKt1QtQWjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=SEEZRvbn; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="SEEZRvbn"
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-47ddf7b09aaso1525556f8f.3
        for <drbd-announce@lists.linux.dev>; Tue, 07 Jul 2026 05:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1783427282; x=1784032082; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:user-agent:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nJhLuwTsQyz17Vzu3ofv5bO/NkuJNYwmOHp3fs0q2zg=;
        b=SEEZRvbn/6np+8b9oqK2jNVuM+JVoUG+osyhi6v0U+5mCiFx9RWWMWIjJSrtoDsflC
         DLSG5kQXwghWzSDK2RFM7ooZjrlaLRJxbIbxbe2DlS4YER+DJeHngOvzp06oMccA8AlH
         UdaAuzjrtsFXZA+f7qrEazq1tGmgTpqhnPw3b9nGdwx+9ctV8o4YH6CC48x2bHF4Py+f
         9nbF/MCX5K7Zm6rUKgtyRJ/ms/2hxwALTaPsRcjeLvConOivE9MrHYytp5BGwIPnX70S
         yf3iYbDW7yTnxNOXL8NJL1S3NXMn+am9hKl/GknxjSIaZnkTNzkzEiMxZJ2Eh41xlix6
         FD3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783427282; x=1784032082;
        h=content-transfer-encoding:mime-version:user-agent:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nJhLuwTsQyz17Vzu3ofv5bO/NkuJNYwmOHp3fs0q2zg=;
        b=ZfXiQLlMVaF5XxHIckX3FBQGjpkeibHMrnzehtvbRa/c/TCh6gxR4GLDPp16vswZHG
         L0f55J5YiS/xH6Ar+u0f8V3RDlSgSM1YkyBKZBpm5qWZch4hHWRps0uKRylvfZjN9fKL
         8hohPUifajkOo+o+W3ngU5I3Qs2a5KM7pQu5VjusYeLT68cVRRWLhg8ndiDTq+CyVg+R
         3+CzNLMHdFFAUnEhtlyni2Um3M7vIh7N6gjDfCkE5OKhISGWIKoHB6fUDRFSM7uIRje0
         klX/YmSO8ju4g5duLj+1tTQJbEA1ezmk5wr6B8K8BNLHBjsQB13xg/0lwEOmqoy7U59s
         hDuQ==
X-Gm-Message-State: AOJu0YxpqJvWUMkevVcs/l1sXxtHpMnnTGWpcsKIG5pt8LriKpS638ZM
	cAfq1gRukYPb4a4nMPJXLVCDC9VipbLrgc/o6drHsdwU1UrTAMM4QWECdBmK4e1XfQkr/BPxVpo
	/QzWys8U=
X-Gm-Gg: AfdE7clgimHDZw/6cHDA8kCKsTvNOJ8QAFMEDz6v0vnM35NhiU355C3jh8TOBiPRnHT
	TVUblKD3T6U+8qb5vqkh5Wi88xdBErqC314USYjOq/kzts09SEOrSha4ytjEViiSXw4WODd0VUx
	dGiti3sAW6HjAbcbEKGY6u4+ck86jQ862TEWs6saxDvaJjWC7iDMaTIrq8NMQK32enDt4LggUbr
	2vcM9qPxdofRuJz2okviPppAnKOc43cWhNI6IR/ByUzwIYtcFKmhFw8AYp88RnFDSwCqaHJ+h+l
	tZdkTPaekujkDC5ZYAFH4SNcmUKoweqp3CqIrOW7sFND5F1qtH79WzkLe768YcuwLMehIpmn4oc
	fnLSj0to0S5ZBOF+I6BZMCSSpVTEe2QOYv4URII8se030bX7tGJKPzDF0XhGvGjqsOEPUMdPuFz
	vyghGWZqp7NsFweVnEwVATtqTqq94qbXFV/w7JRgI62l5gCcSlnpOrPxFKtihTFTNMp4s=
X-Received: by 2002:adf:e58f:0:b0:478:5710:464e with SMTP id ffacd0b85a97d-47de66b676emr4418507f8f.49.1783427282014;
        Tue, 07 Jul 2026 05:28:02 -0700 (PDT)
Received: from localhost (h082218129081.host.wavenet.at. [82.218.129.81])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa0f214d2sm32689661f8f.33.2026.07.07.05.28.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 05:28:01 -0700 (PDT)
Date: Tue, 07 Jul 2026 14:28:00 +0200
From: Christoph =?utf-8?Q?B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: LINSTOR Gateway v2.3.0
Message-ID: <20260707122800.7xVQ_%christoph.boehmwalder@linbit.com>
User-Agent: s-nail v14.9.25
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

a new version of LINSTOR Gateway has just been released: v2.3.0

https://github.com/LINBIT/linstor-gateway/releases/tag/v2.3.0

Here is the relevant excerpt from the changelog:

-----------------------------------
## [2.3.0] - 2026-07-07

### Changes

* Support LINSTOR API token authentication. A bearer token can be configure=
d via the new `linstor.token` and `linstor.token_file` configuration keys, =
or the corresponding `--token` and `--token-file` flags on the `server`, `c=
heck-health`, and `upgrade` commands. (941d772)
* Include the LINSTOR Gateway version in the `/status` REST API response. (=
91601b9)
-----------------------------------

Regards,
Christoph

--
Christoph B=C3=B6hmwalder
LINBIT | Keeping the Digital World Running
DRBD HA =E2=80=94  Disaster Recovery =E2=80=94 Software defined Storage
