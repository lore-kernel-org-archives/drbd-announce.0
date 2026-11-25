Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.53
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1795623925;
	b=SDaSPrtqmWf+/+fHhuFgSwBIZJ7dbK5aBcH8uLt0HPCnK4W52ciL8bI2YSs5v94f8VXP
	 IYjzFczqE45F8dKncYtWOdSHVWl68xaI/C5R75sD46vg2kbJ2N8OcOdNVo1CQhz5mnWYy
	 mOfbdG1zpqKASA9L2P9Ka2WRiwqwAY5YZHPfMgtNCTrYufilHjc8J8+ViakjpPFFqa0Iw
	 Xks8sk7TLH+tP7MdOF4ZmvE1KDJbgLsQVYHxJGoQZrAcYXD/l5Bwm9CYJ8dhaeifjMTHL
	 3cr4VZSoTjuAh20r3qD+BHiBbe7VGzQUGov8aBbi062YWLB18qQddQG3MV7JQogQHhg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1795623925;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Subject:
	 Message-ID:User-Agent:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	bh=65CM4CaFgRYJJ+4mQS6cQDv5PwdaCw6DmxXe+qo4kiY=;
	b=NBVTVG1ysUAxQfDsOp7AzYRtMbrZbvAoc04vMSmNXuCnjkTd3P5cqUODb/OMHd6R7CSa
	 Vtz4x4uVynPDz3giP1lNpcz30536ADD4cDNP+Ucl8pXVJ6RMmMNPQYlq/Wh2VcGgVUL/M
	 EBfDFhsEzvi/pXxqbYJpjM28QsJ6f18pO1jTCQXE0s7nYXonkXbDiSxbe9KkfAUyTvYuJ
	 10qplDg5/chKhqkmV5M1OmcdYQflTp1vf9tzdj2aFoCbMKNUEsD8oHx1/RgEeapKYi19x
	 NBviW7ilEUWiKhEI/+0eQAdt+VuEEW25CAWAIL55VnarNknk79ln9LyAq289pbbWbsQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linbit.com;
	spf=pass smtp.mailfrom=linbit.com;
	dkim=pass header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b="Djp/BAsX";
	arc=none smtp.remote-ip=209.85.221.53
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E8D606A31E
	for <drbd-announce@lists.linux.dev>; Wed, 25 Nov 2026 16:25:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 10E8D606A31E
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=Djp/BAsX
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-4a2f4ca0dcfso3436787f8f.1
        for <drbd-announce@lists.linux.dev>; Wed, 25 Nov 2026 08:25:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit.com; s=google; t=1795623923; x=1796228723; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:mime-version:user-agent
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=65CM4CaFgRYJJ+4mQS6cQDv5PwdaCw6DmxXe+qo4kiY=;
        b=Djp/BAsXQVSyF1WbR5ni+ocAE7tDK9MS8QK43cYfJFavE6c8Y34iUvY44I+LyAzFEn
         Skyxb9AxGl6hChpMB3Wc+p+3lvJNAYxnKgM9wxVhXU5RSfTvah8H7+rMVk6M2IT9/pi7
         t0YQXj+WWBL6s3WWxb2vlDMVZ2YIROOCknfv/ckZXPmGVB29WOevYWxpHn7dEvnqTbyt
         QGJ+Cd5lYYZOto73sPqyYmFnG/aOsC5I4oD6iCk4n240zwY0KitBxz1QRuoi4TZ6+zKH
         7Qe/W/341PInMr6EF5BbNBUP3r6js0aLa01F1ywNPbP+CD1YQZM+kL14SV2l4sEnHlDy
         H5ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795623923; x=1796228723;
        h=content-transfer-encoding:content-type:mime-version:user-agent
         :message-id:subject:to:from:date:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=65CM4CaFgRYJJ+4mQS6cQDv5PwdaCw6DmxXe+qo4kiY=;
        b=xi2se3sTPIMdVQoAjBdxgtaE+lIv2yYSomSWeVzbLQVnyciraqpa0OTudt1dD5qp3u
         0jrSIzmTFBgykbWILCc/AxHbnSzFxUV2nt/aY5qvBU8OsaFwJV+0EGUGlyL9Vod4YVDu
         oVP3tV0xJ3K1TigLtRA+YjuFRzTfi5RdGjvhFsBicfRVSSf1igUAWSaKnInU6CC7o+bT
         wDFTk1eG+A6XdZ6TzHWXbWl0vRdobVfrqbQPeDxadRPOBX+yfmLf94E8g/taONQp0vKb
         RwYSfgTnSb249qxJqD9/df5ym6pnkapTbisAaq+xQYq3+QsbiqbYYx0UeqEV2+fyIRfi
         EvLg==
X-Gm-Message-State: APuU4Z9Dg2O3TcvXms18YwaTtGRtbE8tdnr9PLmUUN4BI1z9JVfK7zbB
	uFJ4o2hU6NqOW/EDVrKNhz1RfU0YGOIUzNMJPPOpeJrYrZtnFDL4sVP8I7+Ewl4rB/bugffPBdu
	c3uIZi6M=
X-Gm-Gg: AZFdTZf+qZvTjbxaqQSUV8hwqWwW4OxKNsFzylLkPOaOz0V6a937Ut4UbUT23BdFWqU
	REUQDl8IENcaYaOOQ/VmuRjeVS8j33dSk9FxrbsGaeE9bF5O18THu4QCLDkhoIE1iBKHUSnPTME
	NC6NAt20ePyRFVr7sqS3OpEQliLQZ4H4WE1GrcDMVaJ6QCsxEOocz/dkSSWeeuHwuB/QSlPhUWB
	wpyig6lP1piQqufflXLNPpENPBVUzhi07I1rAemaHabJ/Il6F7JohAvEfS7LHWJCCBR8OT067B0
	6PyfmJAYC1RfvPBqn2YlFWjrcoV3xhIetV77qMhefJxktP31yl3TKacSbeVbGdZDa0LxmTx9N24
	pu5A2Q71BzA6U1cM1Y3B+TaqGYbcxe2GV5Dpbq5jZyjUC0UN7Z4GIWMoRIG1WYP0xCgJIgzHrXT
	DaCrQmF8Jra1gDceSqp3SXvf2RZsbeYE/EyQ1vIqxAVHEgMOwnxkXyV7Rq1/U1qCQ8fp/H0Nk2H
	wwB7DxxOxwih40EWzji3jrqcrKNLdJv/d0ejq/OJdZMBASsACrgfjef1TtIVEUaEUXhqOTvst8g
	ISrr4xuGgsW+CDg/IYlF6m27yR5uGjmUpCI91KZ9i3kaBzUW7C7pC0c4upmIDWAQOP1lAugr
X-Received: by 2002:a05:6000:4704:b0:4a8:5a5b:3b7d with SMTP id ffacd0b85a97d-4abb5eacf4fmr36873765f8f.56.1795623923421;
        Wed, 25 Nov 2026 08:25:23 -0800 (PST)
Received: from localhost (h082218129081.host.wavenet.at. [82.218.129.81])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6c61e53asm37260485f8f.59.2026.11.25.08.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2026 08:25:22 -0800 (PST)
Date: Wed, 25 Nov 2026 17:25:22 +0100
From: Christoph =?utf-8?Q?B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: LINSTOR GUI v2.7.2
Message-ID: <20261125162522.px8BU%christoph.boehmwalder@linbit.com>
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

a new version of LINSTOR GUI has just been released: v2.7.2

https://github.com/LINBIT/linstor-gui/releases/tag/v2.7.2

Here is the relevant excerpt from the changelog:

-----------------------------------
# 2.7.2 - 2026-11-25

### Changed

- Dashboard shown before the chart library has loaded
- Smaller download: lodash, axios, camelcase and bignumber.js no longer bun=
dled
- Update dependencies

### Fixed

- Storage pool form not saying when the chosen nodes have no device in comm=
on
- Resource Overview showing OK for a resource definition that is placed on =
no node
- Spawn on create leaving the new resource definition behind when placing f=
ails, and allowing a place count above the usable nodes
- Resource definition selects in Create Volume Definition and Create Resour=
ce not filtering as you type, and Enter picking an unrelated definition
- Resource Overview State showing OK while a replica disk is Inconsistent, =
Outdated, Failed or unexpectedly Diskless
- Resource Overview sync arrow with a made-up percentage for a volume DRBD =
is not syncing
- Storage Pool Overview tooltip showing raw <b> tags
-----------------------------------

Regards,
Christoph

--
Christoph B=C3=B6hmwalder
LINBIT | Keeping the Digital World Running
DRBD HA =E2=80=94  Disaster Recovery =E2=80=94 Software defined Storage
