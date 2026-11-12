Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.42
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794488569;
	b=iIAwaLGns9L3pOh6+lrjQGhP8XPfpluGb3bFk2fCCue/RYXcZjaEp/YACnud5ntoAUN2
	 5WKcqJuiQY2LSh0B9Ro/eVfCmaQhmBpOhvGZ0/0Mc2/G2cVpgx4SzxVTJgAW6gQCdQdbV
	 Qz49VbbmvRuy+RNe7zAkmJG3MQhXjSfTHowphiB2xpRIvX/k8MSsUXl2SD/Z5Jqlw8R0L
	 c4gqYmcAhtgzME47KGQZRDyctJBfyEjB932lqS4iIFAT5Vw2F7KdlyXLqQWDg5x1tjah6
	 2RCQrbeSQx6zkkovum60TKiaJE1R073QWTLaQv9z3ENdKEwwR69RgK2EDcYana5AWRA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794488569;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Subject:
	 Message-ID:User-Agent:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	bh=rnjAFHbZLjKqNbBHAOJZHF8+gLx3BTNPDY8KaufECAU=;
	b=Up3Nggx0dgyPJl2fcDNW0pTXUpvkzubA4TofPeZqJDHMsHyMMXs+840mRwBD5qvbgpm7
	 YusrOZd6vbcs95nztiHIqK0g4eGQVGH3EYkkSTESQ7qU7px2ONQ+z0EP/6/O5Pk5N+2sg
	 viEkh0FjY2OFy6pZ3VrkjRhmj0n4ltcvgiwFQGfop5CDO6zAC5qLps2s86JoG+T0WUzBi
	 oJK4rHaaaKe/BjcdRnPhhFtjlVPn92kQpwIKXGOSzckp0PgAjo5bcBo1AQSUOsfiC9EvJ
	 HPmRZv5OU8v+MmyHv8za72Rz6L+HyBFn6KLLpRlaPiVF3wxBl6KR2TfVm6MM7RQGfCg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linbit.com;
	spf=pass smtp.mailfrom=linbit.com;
	dkim=pass header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=QYc5m1qo;
	arc=none smtp.remote-ip=209.85.128.42
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67EBD606A321
	for <drbd-announce@lists.linux.dev>; Thu, 12 Nov 2026 13:02:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 67EBD606A321
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=QYc5m1qo
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4a1fbd52ab6so29630355e9.0
        for <drbd-announce@lists.linux.dev>; Thu, 12 Nov 2026 05:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit.com; s=google; t=1794488567; x=1795093367; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:mime-version:user-agent
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=rnjAFHbZLjKqNbBHAOJZHF8+gLx3BTNPDY8KaufECAU=;
        b=QYc5m1qoKlrUF85NBFxuvbcYWsod795MJPSuXIWyPBbIhbp7upcbKXEl7nFbFYIrXp
         HIs4rXRkqw+HYemW3iICc5lVIbwiD8HhZ7EhgLjuopP5ehMAMQ7+9S1XVr3RGtDeorcT
         0Oi7kpC6E9Av0eAhbh+HxgfoZUWX4JCTo599wqC5n9uXwnn3u4hfrQJgogWiSQSz12IV
         vytDzAhxXQB09MD9l+dhX5Q7c8CdipzSASvBhmpAmZYmj7BOhGgP21kbB2W4I0752ldi
         VTsNcf6HkxOdJZLKjTAmtEeHB7jXSwsm9enj35kah19gJB14VFcf/V5dS2VdkrAuHoN6
         ztXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794488567; x=1795093367;
        h=content-transfer-encoding:content-type:mime-version:user-agent
         :message-id:subject:to:from:date:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=rnjAFHbZLjKqNbBHAOJZHF8+gLx3BTNPDY8KaufECAU=;
        b=EjlI5n9sDBAV/lJ3SursrJ4FF0myzep+UeuM+NAEmqgXja2K6lrbZnW0llHE3HcD+6
         qEIH0F2AO2uX10wBocHUxK4LZtS+/M70X8vU23lGt8P74IdYdDrx0KElh3D4+5gp3MFF
         hrXehvxMrp8dblEJ1SmLM4KRchjuX3Gw8t3U+3cL7pS3rYvh3bnlWlW15+eO09Jir7SG
         Nfsc/1xXZIRaucIg4NkQmyqD7S0d8EUHSOzSyN2qx2u/MWtK4QTnaOSDNX+dX4Df5Z9C
         JTWIJ/iSd51kuhB4cbaH7kY56as+GoBCgFkmpqo022qt2k6G5UqIWsTPiyf/gJjadDlo
         XCTQ==
X-Gm-Message-State: APuU4Z9Zrbi2pYqgS8/AY093bbqG/lR/FRW/ZyY+gcTKz5V7FKVamnFU
	VGQKWT6enpqh0X3kvJ1mDENOkSKMraFhDm4mO3Oe7ESmIeNJF5/+TwoNzjukT4VUmEbk3R0JECw
	AhHt02+s=
X-Gm-Gg: AYBFou0wN4eh7z/8b1hcq/9N5U9hKo/lLMAB5EJ4HGU6YpWXcoaL9Ltt3Ez/LNQA2ET
	TLOGZQQLH+KD8d+fZ+leNhrSgFYEuBKyjx5WYfwpEAML8Jkl5RmzyRCLXV3MMjwlYjXogudchWL
	nphCwKqrVeN9cUAOVRmXsoXlxZh+T8aygKcx2EO05ByMaiv2Cmj8X9vfV4WuDkksmVgzsi6cMLj
	ru8pAw7MLHRdXIXk1yaQtivgY5tX94eCHu+ZxZHay6yvkDKAest7dN4FvJD1+93tzKS2gwLel9r
	HzL5cxPKZgVVtJOB/WH+/kJfmD3Lm5C6sGYj/No8X2RqZ3KlBKCsjyVGZR8tm026EM3KfYbmj9p
	XsLRS+hKJ66wqY8kuqYjZmxw9jwC0mjpOKevuhnvfE/s0EsufS8kFjiNFtABGkLWsSDrb0QJ7sJ
	XqcT1DO2eQwwx0CYRwqRmAgGth+/YVKThqhU1vNxOUqSOqfZPdTXRulzF1Q/qNaLQErQ1kV4yuB
	wqxkCHZVZ98A9es7EQYZ9uSocjVfkW5zLbvdmJtBIY9H+ZdLABEbmBzJ+pW6VC/0grvFXm/pKd1
	GpuuLVOIOtZUuQlNGZXXAlJLULeyBmqN6Qe4RB496JM2wx5JEOCwp2YMk15euxVNXnX9nC49
X-Received: by 2002:a05:600c:354a:b0:4a2:1050:aff with SMTP id 5b1f17b1804b1-4ba0939cc9cmr100960395e9.6.1794488566799;
        Thu, 12 Nov 2026 05:02:46 -0800 (PST)
Received: from localhost (h082218129081.host.wavenet.at. [82.218.129.81])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb4e27a8b0sm70013865e9.15.2026.11.12.05.02.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 05:02:45 -0800 (PST)
Date: Thu, 12 Nov 2026 14:02:44 +0100
From: Christoph =?utf-8?Q?B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: LINSTOR GUI v2.7.1
Message-ID: <20261112130244.aIaBs%christoph.boehmwalder@linbit.com>
User-Agent: s-nail v14.9.25
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

Hello,

a new version of LINSTOR GUI has just been released: v2.7.1

https://github.com/LINBIT/linstor-gui/releases/tag/v2.7.1

Here is the relevant excerpt from the changelog:

-----------------------------------
# 2.7.1 - 2026-11-11

### Added

- Storage pools on several new devices
- Device size and type in the storage pool form
- Icons for sidebar entries inside a group
- Loading skeletons on detail pages, edit forms and the Dashboard

### Changed

- HA status read every second during evict, stop and start, only from the n=
odes of that resource
- Storage pool nodes picked without a Multiple Nodes switch
- Switches and checkboxes on the same line as their label
- Create and Submit wording on create buttons and dialogs
- Delete and Lost in row action menus shown as danger items
- Connection status and state in the Dashboard's Faulty Resource list tagge=
d as in the Resource Overview
- Create on the DRBD Reactor page disabled when no node has DRBD Reactor, w=
ith a link to get it
- Update dependencies

### Fixed

- Spawn, Add Volume Group and schedule Edit open from anywhere on their men=
u row; a refused volume group keeps its dialog open, and the reply is toast=
ed once
- Header faulty-resource icon opens the faulty resources list
- Dashboard showing all resources healthy while loading
- HA list during evict, stop and start
- HA page reading every node once more after a stop settles
- Spawn dialog losing a refused spawn
- Diskless pool on an existing device refused
- VSAN Physical Storage blanking the GUI
- Refused resize, clone, remote or backup reported wrongly
- Errors of a submit without a controller reply not shown
- Cluster setup wizard labels and HA guide VIP
- DRBD Reactor page showing a raw error per node for a config whose DRBD re=
source does not exist
- Unsupported build dialog sitting low on phones
-----------------------------------

Regards,
Christoph

--
Christoph B=C3=B6hmwalder
LINBIT | Keeping the Digital World Running
DRBD HA =E2=80=94  Disaster Recovery =E2=80=94 Software defined Storage
