Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.208.172
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1795622143;
	b=dtjQ6Dy5FqQXzlRo6bxRRy1gjygeTfJFsyOQkMbOi+f5325LtxXiXfvZkR54yhC/ov3c
	 W7IfqwtNxHY0qp6c/NnS9o3VZ7iL8xTqsqAbhl9ypkd31EAtPoPR4uR64p01t4fmq+Ya+
	 OfHMC1Uw6lZNlb7QS5BIFJjkOzsqKfBxvYM+Wti2LXvBuffLkFFFGOYGj04QylqxD4oWK
	 rNXyNvNYPEVsVB7HQhFGMvG/4fdGsvCrqAIcIQYHSNFc/zJNkwx0M6xQet7NenNDQYFUC
	 MJd9YIPhNljkp4CfFutXi7W6gTaq+Lt5YrmwGtVm+KPqlUPSeqbVeNkb1ZzUEDOnMeQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1795622143;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Subject:
	 Message-ID:MIME-Version:Content-Type:Content-Disposition:User-Agent;
	bh=MzzSsvTy/s6NQuAthwFgMbP/8icFYpLHzCuWvEzWG2A=;
	b=WiVZBC5rGc2JnvCjPE/Ov7OmrTNV8gaNPI2PVhFYcc+J6Y4raEUQagE8GjBQEfzWNPJ9
	 rFWg5OiOxWpZiHRFY4FanwZqjGjd5GXj5SPsMYkHhXD4TfAeK8MeclNvZcSMvx6jfj3v4
	 uEzp56vsSTcdAPMc5kBi4isYnMby317vcplKaGXkxWKFx4IK5xQe+PH19cY5Ysa+7OO+K
	 Cw49mqbUFQYi25H4PBhqhlvFlRJ/KTlCpu8wSHf5MQX/QEdyyXeea1DPkHHSt6dwzEHqN
	 IzvQ3N90OheSPF5FCYIYPmpAEeXG3p7CQulLg/A5h2z1zp72WeduUm7ajYG2bOvlSRg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linbit.com;
	spf=pass smtp.mailfrom=linbit.com;
	dkim=pass header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=zmFPHags;
	arc=none smtp.remote-ip=209.85.208.172
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3452D606A327
	for <drbd-announce@lists.linux.dev>; Wed, 25 Nov 2026 15:55:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 3452D606A327
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=zmFPHags
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-3ae6a0ffb55so51638021fa.2
        for <drbd-announce@lists.linux.dev>; Wed, 25 Nov 2026 07:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit.com; s=google; t=1795622140; x=1796226940; darn=lists.linux.dev;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MzzSsvTy/s6NQuAthwFgMbP/8icFYpLHzCuWvEzWG2A=;
        b=zmFPHagsmung4WQ50iBA/mU7ZcYgbOToRAp4v8FbBk1vbzu6M3EvnWfPppttIDcz7C
         p04jj/OxD92M0qYngmY1A3AGR0G6TwUH6yG29Hon9YP2+n+K49yrmPX0lKC4ATiWFeAs
         GlWMCnZKLJi5cutLkodBAdNANYUM6Jx+dyf+P4EeBdvvYdd3GxhNplkubfLqOKR82r3T
         kNTkLwA73/cGix/d+A381eVJKVRnZisjNFpOVf76Z72rYbh2prKPvLtYz4dIsHODEyeS
         vmNfLtc/7aCf5nakF0LaK1hpLUMmwVpvsImY87oJ9aryTi9Hc7jpWTcBDXXGVuXKD2Oi
         sldQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795622140; x=1796226940;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=MzzSsvTy/s6NQuAthwFgMbP/8icFYpLHzCuWvEzWG2A=;
        b=tWghIJe+3dxTUDC2ACBzZ0En9PEqwnIzWSoJEtNSnK4KRhtLmGwjLUEVecgxsJ6v2g
         aRrf+w8ln+zR3tcNxiVKP07PC1cRYfjbVReZzzxqCGAkfYnHs7LbQ94ISGOY+OICX2Zd
         KDw7CnIPZSDfVAHi7CI6w0QPkpSnkekxl5n7xOvtagGMVY2L21n2Oa4X16F7Tr3rfHKQ
         e0GIXl1ioTtqxRxyOED7Ch4Knbn9A+xY8rvSDEyhKe0Iu/9eI4wQKv0hL8gEP3YK9OMz
         ouf52ZF6VrKyfQykaRIkasCu/YcDoTHuZxobCNT4u0Z0+ggmqhWcMkr+4+/i343PoxEK
         z1Pw==
X-Gm-Message-State: APuU4Z+fXCE+JJwLWHCvq9gc1a/wi8YOzVPJ+Fd82AiJH30hbac55324
	d4UL0/UN8l1LA6vnlVJO3Fbx5sCxNI0SGUFXNV4znoqscO/80oBA0fZf9yPzFwMoomH7DdYBHXC
	fBhsqkSeSmQ==
X-Gm-Gg: AZFdTZcbtAzU+OrGVEwuxBOrpz4SwVajWa2EdlDPDnQZsv9+jYtdtH6zuJUVSSHoEAC
	p6yRmsBgWCe+FOp7Mzt40MqGSUDUT9rbZgqYeM+3OZWLKZA8q30MEmh7I17hY9OsCvwUJNNX0kB
	OiuUcx6NE28tlPrIMyQM+mFvplAV3iLhcXbBlLZIJdVppmCR4wBW1VvIv4r0mCqEVlZUwjMOd5Q
	VI2WxHXgVOm5Y188Pz8Ib+T8e2oSttdV3NuhbsdXeMWtax0FZGlzXytXLloTP2XIb0NLSbyCJgO
	zsetEfiCy3nKObMVgCVcURXG2X/BA9ES9F3tPX/I9ISDQuJe3kXu2x/V8BxBK9vh+qOK4Kh1XMp
	RGzr1uIg5K2pMTTMxHSP+iCWr/D0kE0gjmHvBQ6euI+AJQOJxPTtupGx+8HYZWre8eXhqm0SM55
	b723DyOc5qL7NT9bn3nEc+NP17wtR3NdzZ74q/4PtqqAk/b+Ml6YuMXsLRkCDu83HA6Yd/o0vV9
	iMNKD9UESvWLFBMcE35UAJ5N3CpeFQrsNnzbaNQmaLaG32peGcaaMuV/Ef+dQrje+OP8t6XqDRt
	fsA8INn6pKFBYhdjpHW10cIf15rOW1uhAe58CjySxqmqauwUtJ6e0R2Zk83au4KJtY64O0H5EYd
	L0ANlngU=
X-Received: by 2002:a2e:9a0d:0:b0:3ac:429f:6da8 with SMTP id 38308e7fff4ca-3ae7f9d8554mr60601311fa.10.1795622140095;
        Wed, 25 Nov 2026 07:55:40 -0800 (PST)
Received: from localhost (static.57.82.181.135.clients.your-server.de. [135.181.82.57])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3ae8050fddfsm48432281fa.16.2026.11.25.07.55.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2026 07:55:39 -0800 (PST)
Date: Wed, 25 Nov 2026 16:55:38 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: linstor-proxmox v8.4.0-rc.1
Message-ID: <awcE-rSig6llMqnU@arm64>
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Post: <mailto:drbd-announce@lists.linux.dev>
List-Help: <mailto:drbd-announce+help@lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
List-Owner: <mailto:drbd-announce+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BMGpANxLn1kp6Qt3"
Content-Disposition: inline
User-Agent: Mutt/2.3.3 (2026-06-12)


--BMGpANxLn1kp6Qt3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear PVE users,

this is release candidate 1 of version 8.4.0 of the plugin. Please test
it and report any issues before the final release, which will happen in
about a week from now.

The main feature of this release is integration into the PVE web UI.
Starting with storage API version 17, PVE generates the add/edit dialog
for third-party storage plugins from metadata the plugin provides. The
plugin now does that, so LINSTOR storages can finally be created and
edited in the GUI. For this to work, please make sure you use the latest
PVE 9 packages. Rarely used options are in the advanced section of the
dialog, and preferlocal and exactsize are not shown at all, but can
still be set via storage.cfg or pvesm.

As part of that, preferlocal, exactsize and allowtwoprimaries became
enums that only accept "yes" and "no" in lower case. So far values like
"Yes" or "false" worked, they are now rejected. Please check your
storage.cfg before you upgrade.

The second feature is the new authtoken option ("API Token" in the UI),
which allows setting a LINSTOR API token per storage. It has preference
over the token in /var/lib/linstor.d/auth.json. It is a sensitive
property, so it is not written to storage.cfg, but to
/etc/pve/priv/storage/<storage>.linstor.json. Keep in mind that token
based authentication is a global setting in LINSTOR: once it is enabled,
every request needs a token. For the plugin this means that you have to
add a valid authtoken to *all* your LINSTOR storage sections, not just
to some of them (unless you rely on auth.json).

We also fixed a "Use of uninitialized value $owner" warning when listing
images (e.g., "pvesm list") if the resource group contains a pm-*
resource without the Aux/pm/vmid property. Such resources are now
skipped silently.

This release bumps the supported API version (APIVER) to 17.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/9f156c4d4d8053893c17f30d7d0e63c515bf112d

TGZ: https://pkg.linbit.com/downloads/connectors/linstor-proxmox-8.4.0-rc.1.tar.gz

Changelog:
[ Roland Kammerer ]
* add web UI integration, APIVER: 17
* list_images: skip pm-* resources without vmid property
* add authtoken option
* CHANGELOG.md: add released versions
* authtoken: use "API Token" as title

--BMGpANxLn1kp6Qt3
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmsHBPgACgkQRgmezyI6
myJBRAgAhkcaKHeZmzRICPR2w3y2HBHRYD3ML03iFgVYCO8TmUBlvElYEWexTdWw
8V2wwk+EdFo2zTe5LhD3p88i5ORDp+FeIzwOTle73ntopr5AQ0faFgRczsgKDwgs
9TsZp+/kvwYj+7iDvcJ0OdY4D7JzmBMjmP3R5+Rh4/vaVo6xbfJT6kx1wWe9bUC5
NK4Tpd5jYiZMIPBPs+ej0A7p5w9RWf9UlZL69YyAsdJ52IWFLfb1rF7bDj7nz7lP
XpVvo2bF+VJS7HW1qVZMO6X5H6jvNxcptgJKX8UbQq/MZqzvlJey3HxVx48G25Fy
TEH8iypZyWUKSRnhoiGmTWc46oxvYA==
=OoIk
-----END PGP SIGNATURE-----

--BMGpANxLn1kp6Qt3--
