Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2F1387347
	for <drbd-announce@lists.linux.dev>; Thu,  9 Jul 2026 14:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783606246; cv=none; b=JME4Z/TTvnWoWYweIBwqDL3gcdNHPKf9OxDVgn3BMS5w5gj+AKiaSg8047LiOgsrqevIiFEQ9gycq1fou9FYckOLVNVEmZU4oGI8hr72UY8ZOh1cDJeRNb9vIsfScLSbbJ4cuIOMlsdhA7iHzNgiTY3W9vMtoIHi9dsvfizsAzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783606246; c=relaxed/simple;
	bh=0ZLQElO84u0nXQ9VD2dS4MHU4krOGgsMlyM3TJXiTJ8=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=jsNq0uGkh3d7J7YeQ4/W0KObfpkPrA9+RKFxvkXhohIx9hT96rjnz1gZKXsh7UFt5ChcJe8Mgh4rWc9l6okKnCh2DCaqM1NFMW2CteONm020QoEqPdlIsJWk1dgaQwDSbtoq2MfyzwXIs5d5HOB15PNOAp2eU4lT9siO8inNXRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=j4JJclvz; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="j4JJclvz"
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5aeb5e85378so1090607e87.1
        for <drbd-announce@lists.linux.dev>; Thu, 09 Jul 2026 07:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1783606242; x=1784211042; darn=lists.linux.dev;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0ZLQElO84u0nXQ9VD2dS4MHU4krOGgsMlyM3TJXiTJ8=;
        b=j4JJclvz0NKbX7uUQG2AoE1puemBPssibSotNpiCOiZAmRjWyzECc1qqYHQrcXtuO2
         rf2/Ttd2gN5duPd/K2hhCO8OEt7b//oR2AIXmksSUnk0mXi+w6k30BJ5Cut9GKq5ncnD
         nnND7JCxB1FXBX9UulgU3RGzmorIU4PKkIggVlzwJMyDvgfwyoIN6w3QWsDMsQekNljI
         g2EWy+lhFQWPU/dlLYMnQxI2Us0H1q7CO8GZhAgdXPOrBNMjYn41jpnBCctM3uOSS7j9
         vQcz/vwOa0Qj4vK2PWavxvcdJmP4lQBssSGezcIw7GOp8gS49jJbVYLLgz2jNjvcgSvC
         sXug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783606242; x=1784211042;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=0ZLQElO84u0nXQ9VD2dS4MHU4krOGgsMlyM3TJXiTJ8=;
        b=nGjjyPahy0JxIh+B30PyXOx2X+H4alVNepcyv2IHJb7R6/TM0/Y9D/4A1G+jGgQuhR
         eNQ0cYO6JHU/DMT26eRqvcu0XDkXII+NYi1xMNSb+HCGQVvCHTGZWkQKJ+1gAQggCxFc
         FfuOtQVCbHCZeiEIpIMXcQUhbloQR+m+PucH60ebfhqCQrPBXT6YXAUfDdvEe2BP9dWv
         PZ5IIsy37d3jjtB0kvTUYKBaC68I+Mc8jQxvf+cbVsEvS4v9+0ku7CHCMqxNorGwFNUo
         FYCWbDARn2oe9wfw0HTsfjwbQ61+9hnZjRqsih1kNiCIQDfmiYeMnz7KurHRdwz9r9zk
         JG4A==
X-Gm-Message-State: AOJu0Ywk36VLcqRGvaj8ehMjw0+5t6N1TQ+F+adTe/XJ2sSMmEj9IQtr
	5fLWk+H8DtIRNe8Icx668LAgV6uHG/mZ4IKK2+0hVp0GMQfI0CmlBVFni8mBu/znWwYL0KQ02Ms
	s2CQoA6TPOw==
X-Gm-Gg: AfdE7cknto86xGBy3D8IYFTB15k2BkUYHZ7BlnjpPXmDVo+UPeFCk2Pf1ogz1BciBqM
	8R/yhpvx14sL6Ph5Ty0TPZZlO5ygIqiXJJcE3vbW7ayVeC+lK4RAHadUl14zgi3kzBQcC9W/jbc
	Em5kLE4sQmKbxwFNhLSBztPUkYJR61WUigASCxw2ZJBShev5EXpfiRh6mbuxW5UD1NLk39JGDAT
	zMJXVwUoFCItFWrcBqHAXNyxNa5cpL7qVwxbZikodIxd0tAncK/8oOJvCJ4PLlMBj3fsghMS26J
	E1gOBx/y4C73UiG9tb+b4ZIXlpcSiLyd32RzWctD2mSS87U3MdAUhLRRjFlxzF1Z2fFNed5DinU
	pOryHte6GpbX8fYHcAl2Cnsmuo2WGfe1Y5a40weTLGdvw2I3UBYK/8WA3WgVuNJ9eiH3sbjoAGg
	ir/3lEovwzfyw7vinXNZtp2hEXKdlQAjhjKrCJfsp9y7kJp826OBRW3BH20I9Bm9dzYnS2tHQmV
	sCA
X-Received: by 2002:a05:6512:688d:20b0:5ae:a2ba:9525 with SMTP id 2adb3069b0e04-5b011417215mr1279087e87.0.1783606242119;
        Thu, 09 Jul 2026 07:10:42 -0700 (PDT)
Received: from localhost (static.57.82.181.135.clients.your-server.de. [135.181.82.57])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13c3be4sm5357483e87.73.2026.07.09.07.10.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 07:10:41 -0700 (PDT)
Date: Thu, 9 Jul 2026 16:10:40 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: drbd-reactor v1.12.0-rc.1
Message-ID: <ak-r4Bew1Z5oMjpV@arm64>
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="veGrINiw3jGrfIQr"
Content-Disposition: inline
User-Agent: Mutt/2.3.3 (2026-06-12)


--veGrINiw3jGrfIQr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is the first release candidate for drbd-reactor 1.12.0.

The focus of this cycle was on the drbd-reactorctl management tool and
on more robust core behavior. The status output now reports disabled
promoter configs along with their DRBD role, and correctly handles
resources that are not (yet) up. The core learned to dump the effective
plugin configuration as TOML on SIGUSR1, which makes debugging live
setups a lot easier, and it now reports plugin errors on exit instead of
swallowing them. Spawning external commands gained proper error context,
so failures are much easier to diagnose. The promoter got a fix for the
shim path on SUSE/openSUSE and now warns about an empty start list.

As always, feedback and bug reports are very welcome. Please test this
release candidate and report any issues you find before the final
1.12.0. If we don't find any bugs the final release will be in about a
week from now.

Changelog:
[ Christoph B=F6hmwalder ]
* debian: update mailing list address

[ Joel Colledge ]
* all: add context when spawning external commands

[ Moritz Tanner ]
* ci: update virter and vmshed

[ Roland Kammerer ]
* .gitignore: add CLAUDE.local.md
* core: convert Resource.devices to BTreeMap
* core: convert Connection.peerdevices to BTreeMap
* core: convert Connection.paths to BTreeMap
* core: convert Resource.connections to BTreeMap
* core: report plugin errors on core exit
* README.md: focal -> jammy
* README.md: fix heading hierarchy to have a single top-level heading
* ctl,status: report disabled promoter configs and their DRBD role
* ctl,ls: drop --disabled
* promoter: warn on empty start list
* ctl: refactor config snippet path handling
* ctl,status: fix for DRBD resources not up
* ctl: factor out per-snippet validation
* core: dump plugin configs as TOML on SIGUSR1
* ctl: improve status

[ Ryan Ronnander ]
* promoter: fix shim path for SUSE/openSUSE

GIT: https://github.com/LINBIT/drbd-reactor/commit/92f7a027c8730c613d837c4b=
105e034bf99fecbe
TGZ: https://pkg.linbit.com/downloads/drbd/utils/drbd-reactor-1.12.0-rc.1.t=
ar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Regards, rck

--veGrINiw3jGrfIQr
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmpPq94ACgkQRgmezyI6
myIdowgApB9frK38qFofbhKXBuRJsUNCsMCp7aKzqqEKoQ+KIezSz3+tnLfhrobE
P5Jn/HWKc8GG1EqY1h6UOappHoykLgfbXitCNX9nhR3lAR6vW2fx6PJlIBBja1tq
zwkMkoy93qfz2PhVtrnxHlgc+KCk++iUQBCz0Fe4VPlar1HgORzoEeyYCthq7Q/+
Wsi0/tKxuL2yZmZolfWcCvJaExZ4sLH1KgsPiTuQ9mBJTZPOUpzWCRi1OOV1D0uv
Zg+kE6voLGsrN6ER2dZcPDMGl8UzY/VJwI/YDy9M1YqbE83/XrHIBpKcgvxHuGon
6c0cO3uq64Uyd/ugNTQD9FOUhFS4DA==
=Ubpf
-----END PGP SIGNATURE-----

--veGrINiw3jGrfIQr--
