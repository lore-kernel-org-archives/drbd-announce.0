Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D708D337BB0
	for <drbd-announce@lists.linux.dev>; Mon, 29 Jun 2026 07:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782718394; cv=none; b=Peu2A2Gp28nDIs9nMuoWuVOUvwTS9rsu+AYhgnjOV0JBkaM1UeVmcUJohEYq/l2lQ2Nhpq5tl1NIU7562VHHxiNsd4P06GbZnq0lXGYDjzU46WLvg3SVGm1MNPMFywJV+34r811W4Akf8IptUSPRJaIg6urdkCYE4n7wWSCR3yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782718394; c=relaxed/simple;
	bh=iN39fa5qF1/pjo8KQxKq0KkXDt+w33DUaHMKSsGA/Fk=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=mpvPgjfeGRgiOonFyomiOjnaUtKJNojI6GB7DE9jkCjAowNMM5WhRRZQJ7W7OWEbqU4iClag6UqqIZIzJqsfJT581zvwnJRFFCss7COHsUI9UDcb54VfNaRMQyXF33pLidwBf2ESRu4htZCU0JI/h3uirFfkDNbdLRyO8QkHoKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=jHsq9nJE; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="jHsq9nJE"
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-39957d210f4so25136771fa.0
        for <drbd-announce@lists.linux.dev>; Mon, 29 Jun 2026 00:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1782718383; x=1783323183; darn=lists.linux.dev;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iN39fa5qF1/pjo8KQxKq0KkXDt+w33DUaHMKSsGA/Fk=;
        b=jHsq9nJEDYjLisPVWg3h9Wqi+NV8rCprRsUX34UUWc5CmiUhcaRVNeZHk4h+3nzzMX
         EHRcxNlcTPNCGVqCZpOFC2iYEywUAyUSs56PPJMt26dNsyZDPyvXL/7ouE2lsUD+50d5
         DHDJRK45mVKX089B8BMP5aZ0LdUAwaWyg+j+FyfxfYMITDEuXVwqkibrrQIh/OEGqFoK
         XVjurW8HBd+ZPOArj2wxYSESvuXJod0fkToC9Y9DABan5qu06IS0X6PNAR75hW2wTXh9
         YICdROKViFp860Qp0BDugu0V7AYJjRBjodzqP4XMzcI8fcbZyTZSght8CPN76kOoO7fL
         O/nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782718383; x=1783323183;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iN39fa5qF1/pjo8KQxKq0KkXDt+w33DUaHMKSsGA/Fk=;
        b=SVdi2kwAOzynfxmmUDzF5oNqI/f5u7wlu1rqZit6k0R08b47WSNLO9WfaV1FWsX1w8
         KGPjgKS5F4QKhxaN3+VJM9EaEEmiwcvP8RZ4d8N6PVVQlr+HJmRWVy3HTuh5fBcGcHu2
         ZxVDC4ABNZe1P/ngsufrMfy+a6k6RQxlt+AefxAKBQpW85ust2AApBh5tmG51PY/m7wQ
         0XZyZy680+xSCvLWeU8Bjfru3pwHHbaf75IPwg6QTyKR+rwi8cJz0GhgaGvNI/xr0ZVY
         EN/YAk9wIRcyh3PdkqKSFCA1kHKA9PFUjzTiHxy35t1q1X3N+cBnQ+CLJLI+5NpGz5rQ
         zUXg==
X-Gm-Message-State: AOJu0Ywon0ZWT0sPcwyWQOh2OXpH+d57euouht+UW0skxmvaQglftwth
	jnSPYFx70F9fT7fQXaSf+I/7Ky+kRC94ngALIVRGLPxQZudwbuSrFlO0TyvpkUIRewfr0aw3Cj8
	ZYVWVcsaF/w==
X-Gm-Gg: AfdE7cn/7B0qweElVh+h4suerI77c67318Rq4WbFLNIWzOnfhcVdPC32FZeGKSSOqQO
	RnwgWiluzYF5aL79ontjKBz03LyBf1k+gQLobZWlcRHmC29WIGMiq+J4/cXmtzBUhvQOo2Wj1/x
	ypGBFIlOYdQ7pULFt4Q2/sLtQLD1DOSMfc24lh32qsfFHlNgqT3rns9ZJk24D+PjMEXvWsbB9pm
	U3MXwclrEXfVtxr52q/8y/Z94bZDuyEZwdun01XlfJ+njna8DpimgFGPfxH48jCDgU9TM9P0h3I
	un217Kd1TnpFGwGWQagkVdvMuJDtosdYmFo089/W7L30RiJlyLNlcIKBPwzeOOF7G1McqU9auqe
	d+e+GMaU1r0D9C0a7p7Qb+66FQxdEN1S1x4y3n3CBXxTVKSwkJP+rJVPremKLmBcjdUON27nj1e
	R07TGmVJOcZ8eQi9ofttZpQ66PWf/hntRgcgQIbLc2p7fXbIDPww1FiJApuPzo8NKJ7A==
X-Received: by 2002:a05:6512:839a:b0:5ae:a500:e367 with SMTP id 2adb3069b0e04-5aea500e5a5mr2282462e87.8.1782718382625;
        Mon, 29 Jun 2026 00:33:02 -0700 (PDT)
Received: from localhost (static.57.82.181.135.clients.your-server.de. [135.181.82.57])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aeb8822720sm763784e87.5.2026.06.29.00.33.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 00:33:01 -0700 (PDT)
Date: Mon, 29 Jun 2026 09:33:01 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: linstor-proxmox v8.3.0
Message-ID: <akIfrUhfVhEZmhve@arm64>
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rBf2riu5+TKeKbko"
Content-Disposition: inline
User-Agent: Mutt/2.3.2 (2026-04-26)


--rBf2riu5+TKeKbko
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear PVE users,

this is version 8.3.0 of the LINSTOR plugin for PVE. There have not been
any noteworthy changes since the RC except that this version also was
tested with PVE storage API version 15.

This release adds support for token authentication against the LINSTOR
controller, which is an important security feature of the current
LINSTOR RC. If enabled in LINSTOR (see the LINSTOR users guide), the
plugin picks up tokens automatically.

The second main feature is to improve resilience, volume activation is
now possible using an existing local DRBD device even when the
controller is temporarily unreachable.

We also added a configurable clusterlocktimeout option that allows
setting timeouts for parallel actions. This should usually not be
necessary, and does not affect the timeout for a single operation, but
if you run multiple actions in parallel this could be useful.

The searchdomain option can help if your LINSTOR names don't exactly
match "uname -n". Consider it a "last resort", but please just name your
nodes how one would expect it.

This release bumps the supported API version (APIVER) to 15 (which was
also done in v8.2.2, v8.2.x being EoL with this release). The rest of
the changes are internal refactoring and cleanups.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/c37e1f138abe0f163c336=
9358664ec83e1d7aea7

TGZ: https://pkg.linbit.com/downloads/connectors/linstor-proxmox-8.3.0.tar.=
gz

Changelog:
[ Christoph B=F6hmwalder ]
* debian: update mailing list address

[ Roland Kammerer ]
* rm unnecessary blockdev
* refactor local activate
* add clusterlocktimeout
* minor refactoring of get_node_name
* rm unused imports
* APIVER: 14
* add support for token auth
* APIVER: 15

[ Ryan Ronnander ]
* Allow volume activation with existing local DRBD device when controller i=
s unreachable
* add searchdomain option

--rBf2riu5+TKeKbko
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmpCH6oACgkQRgmezyI6
myJL3Qf/Y+NpD2cV1Rx27NrPTe663rDc5THtOGe4sO2ocf1qXM6xUZBmX7nuyqKy
n2IgpBhvi048Ot0gbceCf/wIlMXD6GVKk9DBxtjx5gzqkCvSWmRB7C4ee4bArMnC
SLe7RFBEBU5yu4e12qYiSSvd75HmtYp4C6cIB6Whu1/WoY8zl7+aiLL7NjNH0Qgv
BXtWwz17eV9uhKuoBjn5+A0lH5/ma7yBnSjy0ILyaN0+S3CD2cpnlo946RiC+g6g
F4POSV7ThIn1IVq6mRdkGL5PDlR4XesgZU9tgc5AR+fBGV6tS3ikZIIfOu0wYFMv
guRBW1WZKzlm+0RLmTf63vo/TI/sfQ==
=/63n
-----END PGP SIGNATURE-----

--rBf2riu5+TKeKbko--
