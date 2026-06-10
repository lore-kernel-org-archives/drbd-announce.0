Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCBD37DE9D
	for <drbd-announce@lists.linux.dev>; Wed, 10 Jun 2026 07:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781078315; cv=none; b=GrdoyajD87ND8VrWCW3kZR5Tj/Rv6iY29Tq7+yHqTmqLkAa65MiDt4zInfBTLu/ifhTTEG96ANAdwdjUNyyYpg157TFFWCayeaeGqXWTPmZk6PsVnza645cz5f4HEGHJwYkSNkR2BsYpu+Hi4hUCdVmMXLnd1rCQR8zqkxglbKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781078315; c=relaxed/simple;
	bh=c8ugpvCsM45ShwUsQEIRHGi7rS3ILphRr3zmaLDeyP4=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=sSmBS8HqHks5ukFJb77hM18B4AiRoH6d0ueFXIwyt0Xv2kGc9vCxEtnrDoVrWk32RmOm3yhp8pRYmugFhiu3jyINqizLOpE2rGQQRGpw1VJcbSQS0vvEP4Tzqh/kFDUW9MMHrUFYcCjfbBykIp/ohdx/deDLw/IscxXNYttOjXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=SK4mYc2o; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="SK4mYc2o"
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5aa68dbb38aso6198615e87.2
        for <drbd-announce@lists.linux.dev>; Wed, 10 Jun 2026 00:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1781078312; x=1781683112; darn=lists.linux.dev;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=c8ugpvCsM45ShwUsQEIRHGi7rS3ILphRr3zmaLDeyP4=;
        b=SK4mYc2oSIm+PPoRX875SN7V4RDD5TJLbVB6gCyvFBuOBx0ky8MbBO+Psr1kcEW4Ft
         2ei28olXIg3UgjPReELsIV9iy2F+fd8yLndFQ2CsZYm3pOVarfVZ41vkoeboCckcxY+o
         aUlSZqwGt6pUoNjUl6w8t3VSPnpmousjKZJvWqcVIWMC86AWYe8mc0pm1CVTOosk6jms
         GE6GOJ/nNWbPDIoyrO1s/UlGWox180Faa7r+Prw7YBWty4HMQQEolBpJTsk/g4HUN67p
         NKShC5VdKMug/NmJNvF1nvzziGO03FSYMuEitLwx+Hb+LSfobGpe56UUAaJrZZJ1CgXT
         nvPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781078312; x=1781683112;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c8ugpvCsM45ShwUsQEIRHGi7rS3ILphRr3zmaLDeyP4=;
        b=stsm3tbgg2mt/9/ghUaw7sj2zCxkLZqALa54FpdCAzQ4lQJ75OQkktUe3X7QVY1Z4k
         Z1Yc2v3C4P9+GQZ6L7X/ZNzpOCxMbmuXzglq0ICkLhamRR+B50xVV14yNswwowT8W/iP
         dKishgjpWfUkpHlH1hONG8u5EKubX4GC6wH3kB4VLxnxLMBGQJy8s73Q54x4JHrJN4Tg
         LYnTwUN8Np833sOwKUvK0q9XB7LJoKL7yTMgma87VxF7FZDpe88pS1t7zvRLBHeuYdrm
         GTKB+7Mlv8OFY9KpgR8B0yPqtu1ExHqknewizviEWKwm/AbMy6gP6w4JucBiJRf2uNo7
         XxPQ==
X-Gm-Message-State: AOJu0YzdJe49G6zRGcuZHKAuQNkaU4kACdADfJPps7mH7xqHpi4s6TOC
	OF0XJgv/cBNSmnEwkNd490b0ufsd0tPp42xPci2VHPI2+eCwn+bl9jmpouvLD1oFvgpgdwxUJwT
	fi7z7GJk=
X-Gm-Gg: Acq92OGcnGUxTZ67ikEFd3/Jvh3lbRhsp5sav/RZzFfxb0O+zZdVxGnvmtSI6OnB6SK
	nix0J6oXsdscHzQ+NxzYID3B7AcxvBhtK3SFNsuhfdCtmiZ1I8B0eqcxzGPquTDGsFHUIhuXV6V
	Nnear6O/Pio6CwEBqA3bItjN3rT8GsGeBCE1zrkcroJ87k0FONJ0XiAOmGNFE+hyVNQUJS3s+co
	DwAKru461pAZDbc3H9gAxz6oaRILeRnJgBv13VYdbo6kJwnyeY8rHguFAnxtYRpSNRVhDry7hIX
	Ar0EOlVKq41OPojirLmbyvs1lJR46iG6vRen72WntCsGo/+QnkHFl1ox77hJNLP9TsK6rOrxnRY
	czaBbv7W4gugLBfC2+tXT8Ij9O9cFWvj7wrA9fP2ya3Xjj3cHosKX4447UpEXDwOEeew++88Ihj
	4sdgxDrq6P0eg9wDw0qLPFaxyz9T4YVARcDqWtfMdz5juU3LzYu4R4VFKI0amNGSFaNg/Aly3E+
	gZRD3ypEZveGP0=
X-Received: by 2002:a05:6512:33cc:b0:5aa:6f47:32a0 with SMTP id 2adb3069b0e04-5aa87b73620mr5766104e87.11.1781078312214;
        Wed, 10 Jun 2026 00:58:32 -0700 (PDT)
Received: from localhost (static.57.82.181.135.clients.your-server.de. [135.181.82.57])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b97a74asm5161650e87.53.2026.06.10.00.58.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 00:58:31 -0700 (PDT)
Date: Wed, 10 Jun 2026 09:58:30 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: linstor-proxmox v8.3.0-rc.1
Message-ID: <aikZJkW_5M9vf7ih@arm64>
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="orIDVBkM089C0l57"
Content-Disposition: inline
User-Agent: Mutt/2.3.2 (2026-04-26)


--orIDVBkM089C0l57
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Subject: linstor-proxmox v8.3.0-rc.1

Dear PVE users,

this is release candidate 1 of version 8.3.0 of the plugin. Please test
it and report any issues before the final release, which will happen in
about a week from now.

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

This release bumps the supported API version (APIVER) to 14 (which was
also done in v8.2.1). The rest of the changes are internal refactoring
and cleanups. We will update the official documentation soon.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/92cf81a709e31279519d7=
1e29c8955c0d07d1b35

TGZ: https://pkg.linbit.com/downloads/connectors/linstor-proxmox-8.3.0-rc.1=
=2Etar.gz

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

[ Ryan Ronnander ]
* Allow volume activation with existing local DRBD device when controller i=
s unreachable
* add searchdomain option

--orIDVBkM089C0l57
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmopGSIACgkQRgmezyI6
myL1fQgAihr7UfpAeiLa4Sb722aA3bHQvEGtzK1qXv4P0+KAxfkRa+z9t52CZo8q
h/qYMW4tafOiqg4x/h0hs2V0TBxphvh7dANm24gll5SgEsSiY8vB7FPPkB0o0ATk
q3oHeu4/PWbzi8dFmymfr/rUU//tWx+qCXcvpOEvILEDewcqfC1I4JLF+7/QXHIr
NN0GCd70ZQJttpEljx+X7nfb266G+j9ngixLTCel4TEacyfPYUdbEq/jtcFoVHP7
v5HHQB6Qcnkm3fle55IQ9R9OEY0I9D9eEsXT85sx7szw1+nV4Elu+SRkXRE0H0Pg
kbeLz1e0TcdVYQCCQ9mRGDzJLy5RmQ==
=++u2
-----END PGP SIGNATURE-----

--orIDVBkM089C0l57--
