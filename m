Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C0F3F86F7
	for <drbd-announce@lists.linux.dev>; Mon, 20 Jul 2026 11:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784548741; cv=none; b=FIzkxlE1rczrF89UwBMTpVRlr8X+TUXd3SRqC0zAtsTIqyzO70GearO4dngb5T3yspHsTaY201Lm49lWu84fq1SSxSFGgRKd6a5iPytujxa/0Xpri8e2XxvJkWZmk75xvFh8MjfzGT4GnXbwmTB+XjGFE1aiaBYuj2yY7zfdhDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784548741; c=relaxed/simple;
	bh=ognCGyyYq3BgnL4pc4oXkvKi7wkFHXtqQQY60jwKNRk=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=NgsgywgsHPLcz4XwaPQbH0Dy08Gy7OqJX6CSbHO/4XJwuKcet4zC5P8rYMTAZgmfyNlkGCLCDMiVx92JIdB3di0m7c3k+L269eV2r/HvPzoNqwkteaRyY0sCi5nUvMXa+H0AAukJg0Pe93PZfkU27ycatS9py6LqvtSkVoaDgAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=OQskqM94; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="OQskqM94"
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-39c7fd21b63so75709681fa.0
        for <drbd-announce@lists.linux.dev>; Mon, 20 Jul 2026 04:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1784548737; x=1785153537; darn=lists.linux.dev;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ognCGyyYq3BgnL4pc4oXkvKi7wkFHXtqQQY60jwKNRk=;
        b=OQskqM94CPdEFzORgcXRBeZDNNbqkJRMGy5B4Rq+DNn8UVxp2752c57oSP7oAICIdR
         YzpXt3E2Q5tlAMy7ri5a/PcYc7w0SsSSclYMlZpaXqZJlxnQuZ3s5q/qvk3f+Dx79vEV
         4Wr6pfxefzo0fau6yYD+K1QvAoWffgCPo7q0xg8mzcm3ln+w4KGnf7ErdAR5RnHpd8bm
         vhYDRpydK4UHyi8xtGyauwD5uTHjysAQthOcg4xN+z9tkUSEx4Mz66q1zR0zGGbnWFd3
         igVTCeSrwUtGQ+NGJ9yVHCt5R81kXjgrYDwTI934SO3lFPLyBgPi1lRRcepmismSmTRJ
         daKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784548737; x=1785153537;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ognCGyyYq3BgnL4pc4oXkvKi7wkFHXtqQQY60jwKNRk=;
        b=iix/YxTwm1+03MUPrIiLJ/pq8RWPFOq2TuWWno1c7PI42+wbKHqpGV+NCGvmi5ZOZ2
         r3SXS5476J5PxZ6vwG02ywi7oMM2SwiivQLwT1idcoksqzQGwRcNY6raa2sCL2dUGpam
         lDfE3Kea3Jn1nE7oZYRT1tP1wL0BLrAfiAY7bb0xGC7dn+K0r+plBOhfF6DR7IIlg3Lj
         9ikdIbnKnG75qKPqwqPwvTtEq+lv0XxxuVR8mwJ8AQQ2Koq+iM+J4y7KESpqfjCXsJEu
         6UTl6doJZO8IaY+FgyPMvk6MaRK+VL+hkEwpa+cNbyWUdsCzM1cjhF4sUcwUMErbvJTQ
         HsPQ==
X-Gm-Message-State: AOJu0Yz2cCF69oS3Rku9JKbmowv+YrmBqHnlsvtbI3qhE1KSxYeSXTz7
	uWIi1pvLyTxlNfVa4MXVcocNE282Diud2O7JZVvEZ9t+TL6jX78hctwlKNSo7YHWfH35FBUvopW
	Qbwt8kqlm8Q==
X-Gm-Gg: AfdE7cn9+qMR+IrAGcriJAGXyeVHiPecWiQ2GoTaqmNjPEsvT2v8EoHyyVDzHDv/oPf
	Li5kGeeCV/tZbWCbHPQqj7ajdyt5sZZh+ONKgkSu0lwJ6PHR4fbqgkrdOwjBuirxH0Gbmy6Ypdn
	3EcCsmxMB35I628RddsYC8q3s4mz5iNnIWGKwEY41zT4tnUGNOl3OYmvz4b8o1PpOQG5wuVEHY0
	Yd0OXF0Qo+6w7yc0hyejJy+li5KTiUoYLD0iZDJzJ6PmCUgxeuoSQ4w/5YfyZNn+WdCfT+JH9Sq
	1S6hvUVMEC7dW7QYHuHqlu4E97rherNJc05tkfKZ/x9Jm4RS4hG8IMqd53xfW7a+PlOynGJSo2A
	f8MjByWWcgqKUao+Gzoj61azvwPPQWJdwuUKugyHHRXBcXDxC25Mw8zkFdC8cxqAzOjlxjHiQgM
	iiIUSM6oByYGnaJ8Ff/YoxLGrBBV+bLKD0rnHOiQoyrG9UnVflZ5dSxw8=
X-Received: by 2002:a05:651c:158d:b0:394:5c9a:f315 with SMTP id 38308e7fff4ca-39eb2778d70mr28665951fa.14.1784548736607;
        Mon, 20 Jul 2026 04:58:56 -0700 (PDT)
Received: from localhost (static.57.82.181.135.clients.your-server.de. [135.181.82.57])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39eb501b925sm16405841fa.41.2026.07.20.04.58.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 04:58:55 -0700 (PDT)
Date: Mon, 20 Jul 2026 13:58:55 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: drbd-reactor v1.12.0
Message-ID: <al4Nf__9RNSPf-BR@arm64>
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yG26kAmLr9+SZZs3"
Content-Disposition: inline
User-Agent: Mutt/2.3.3 (2026-06-12)


--yG26kAmLr9+SZZs3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is the final version of drbd-reactor 1.12.0.

The focus of this cycle was on the drbd-reactorctl management tool and
on more robust core behavior. The status output now reports disabled
promoter configs along with their DRBD role, and correctly handles
resources that are not (yet) up. The core learned to dump the effective
plugin configuration as TOML on SIGUSR1, which makes debugging live
setups a lot easier, and it now reports plugin errors on exit instead of
swallowing them. Spawning external commands gained proper error context,
so failures are much easier to diagnose. The promoter got a fix for the
shim path on SUSE/openSUSE and now warns about an empty start list.

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

GIT: https://github.com/LINBIT/drbd-reactor/commit/21f8d5705a037e6c160fcc07=
c6fcad81bc0b06f1
TGZ: https://pkg.linbit.com/downloads/drbd/utils/drbd-reactor-1.12.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Regards, rck

--yG26kAmLr9+SZZs3
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmpeDX0ACgkQRgmezyI6
myIodwgAkCmCCI3XJItzOuxDxZg/i7x2a4j8CN/Y/tAhIBcXxkRdOKKs5oweP7Dx
PX8vv5zX8q6qFvhOjl7uamB+CVr9PxghDS/cY5aVLpqglgLXvpOIrJHcF0vvBRzN
R3FI1h9sv7HhUCmLxpe5cFkIbn9X5IaYm9zi3eKoh48zFO7+ro4NIPbQq0Z2zwsg
f/Oqh58mDQBfelidzP/YVkrqxfTCnW0Hq0smMvKZ0mV+29ZA03fG+0ul7O9bOPJ/
v2tdGEaRcjmhQkGiNwc0pQ/yeJPij+IO9PTvey23beCpYP4b8aqVj2+Pn0wCTtSl
njcXyxB1uM0949x3lDNKo2KmD6ugDQ==
=GAzG
-----END PGP SIGNATURE-----

--yG26kAmLr9+SZZs3--
