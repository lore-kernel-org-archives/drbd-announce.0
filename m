Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.167.52
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793711560;
	b=u2UySzlG8o+DTLrBklIAW+HxQw43NI130nu1WG1Z6mILm56/Y2/T3zj+uaSGSvULpaTA
	 ySy9wRtOemOADsB0quJvayPpmpkFcQ8SS9ScM4zACY/9Ygr+yHI5yVaA5nh4eDEN3gA6O
	 PMyFIwvZqFdYMjCrEOBayWVOld3BJLy1nsAePWkWOsSubNWaW9uz/LvCdeCiO6RfCKM9c
	 7WyhqRrtkDB7JKjoufe0ufo2T3eVkxgzn+KAWNueiJqtQMe/FIw4CKEY5FZ803l1SbrZ3
	 Y4O+GD7Y/XFmJjuK5aFQ0eurvI5qUMrDZJ/KKva95gJkYuJIKFYVsOxpU+03CfYSCPw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793711560;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Subject:
	 Message-ID:MIME-Version:Content-Type:Content-Disposition:User-Agent;
	bh=ZHQ1zGm1tTWjfMU9QGfQzVCVyVHbH72ZQQ/docm+n7Q=;
	b=jvkqTmgtLqxV0qyPpCMsj+xAv2/4ad8UwtIfmnwrENFiE1W2yq/7HxhQ0z3Lgmk9ywrn
	 V8L+eM0YF1x4SbFjslvHgyP7jXle6AzJNYZjtyc1H+d6wVS6KYHnzUJ6bvJ282QHjuq4g
	 zydzWmetQYlpCuBHAxOD52IPF/dT4ygEi33RilFEl4+DHt/Gfod2OJUjyL1cBJQa2Ze1y
	 IXox/mvlqZhGwM5SZ8ywnLYfss3dusRxVnIjW+BVt8JuHSFMRkCdmL1D4YNuScTg93UFK
	 OyspotigCUOt93i8/jjrLXaYlMwbXEd611wyilz34PPF9sEgFaOYEwqZ7pq0YI0zuHQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linbit.com;
	spf=pass smtp.mailfrom=linbit.com;
	dkim=pass header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=tXvXOmHl;
	arc=none smtp.remote-ip=209.85.167.52
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4DFF606A324
	for <drbd-announce@lists.linux.dev>; Tue,  3 Nov 2026 13:12:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org A4DFF606A324
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=tXvXOmHl
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5bccb867d6fso3545541e87.0
        for <drbd-announce@lists.linux.dev>; Tue, 03 Nov 2026 05:12:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit.com; s=google; t=1793711558; x=1794316358; darn=lists.linux.dev;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZHQ1zGm1tTWjfMU9QGfQzVCVyVHbH72ZQQ/docm+n7Q=;
        b=tXvXOmHlHqt0NFmFbQoILuivYc57ULPRAKfJdZQNOClhitd3gH95/806bAy6DetMWA
         LHPHBmtpCQHHvIbwXZs3MCp8/5fzWMC6JnCbk+eIwmmrAJZElzWW31PsdKdmpWoGZ/Rn
         0zDa9gZrGXbSMITB9I4dh0OzGJp9yYns9WAtyLhOmu25E3r14s+hfsQyitwHWaPNtkNL
         4RKMbZoTF/fEjv+guq7Vb8JwH6fZixco0Gl3fcy9aL1AKj5Kl/L8yYdCHxkbwK5VHDtO
         SHlwBaoH4Uc0pJaq8MTFtwOCBMfYQAsSy1pEAVdlLQDb3zly+B5EDuTN49r6tQKEuI92
         GnBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793711558; x=1794316358;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ZHQ1zGm1tTWjfMU9QGfQzVCVyVHbH72ZQQ/docm+n7Q=;
        b=SoFtryt7kVh9L3i0AU2mGnni2cnui/+F6xBs+JHsK4REnfAAJ1YZ+EiEIKPlEQvsWp
         UFZDHineqsV/YXOdrJmGZzW5SLq6B46OlSAJCqr1fUbYCfadPcQCWqS2cS6HpGb9sKG1
         EOEqHC89HQSlIBr15kZKULSSm/P1UrvmTcyBv7N+pjmHCBJNaO6I4lMEEbleEldrXuVu
         CCTOZk4mD7lyJLrDtwD7D3FOMgq01tPUYK7Cyn7lNmKIm2Gu2UQQCGSpLGxRXJFjSrv/
         JfKhWeGeAavdzpFvGBxSz/zRAOQuxx9iXpzGUFlVYJ0SPbkDEr5bW69QRqzSA6jYCvYE
         Ur/A==
X-Gm-Message-State: APuU4Z/NOX26IyvDCVWCVTugwFjB0aUlpNWaT7R3+EEBUsEnFTXYLYIC
	R01+xQpzrUHS+XbP0aN919bY/jrXtaoodpdo6BrX06TjaUA/9ccGo/5NizW4TdE3XSEbT5DQNi2
	DV6aFJ2RAPw==
X-Gm-Gg: AYBFou36SRorSQ2muOff1pzsndFpJRPvnh8Kh5cGGdyba2gopnSiTZ/PHIDHbnBPxGN
	RCta86oG1EySHJphD36nFT45gcarMZtS0Osc4Erbqjj3zMWqI+WIDvb7hjMWUsIGYFl8oZr8EOS
	+hsd7fnm2Adg5SMjDEKIhBBydf2aRB1nJB9mvRZEasJ0x8YX7qkf8LGqWJA805CqTBN5sYR0K5W
	a66HX76kUdnMuSSNlgKmQkBg7pPekZfgT2kuSAXAsWMaa9WmdcNrvrXDLPfHROd4N9kbyv5onBX
	r145pAgcw48pg8knRZfKRXTfwweKbiQyH72Z74LWBESfqHmjiXCwbdind/wc5zcwGVo9fqjzo8M
	/7bYvCXE/wbrHTbLUl36Xjzi0hMH0Nh6cN9F75Jn6ktELFJWY/nTvoyFSYI85+L7v3V9yK8Kvzq
	KcuJht8h3UyLF6NCYnIE1RMoThXwD2yk4uCoDzfUMz7yVpDQkKU62l7Mw3XezwrtPEwFaclf1Kc
	iC5h4T3gICANf2lmuG6aOfZ0RUm8BF/Xtu87HfOldmsRbnJwN1vaD7gAWKVbOlkwOkUJuBTuLd/
	5om+TzcX8apfHsZzCkIn28JOlX07N26nXTzws9Je30j3nWuz7uvj9U7lVnPkIvkmcBtLcLSJZjy
	LyWU9/BOlvoJZZb0DXxaJ8ojr7g==
X-Received: by 2002:a05:6512:239e:b0:5bf:e7af:2997 with SMTP id 2adb3069b0e04-5bfe7af2d29mr2532231e87.32.1793711557295;
        Tue, 03 Nov 2026 05:12:37 -0800 (PST)
Received: from localhost (static.57.82.181.135.clients.your-server.de. [135.181.82.57])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5bfe0748e52sm2113320e87.72.2026.11.03.05.12.36
        for <drbd-announce@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 05:12:36 -0800 (PST)
Date: Tue, 3 Nov 2026 14:12:35 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: drbd-utils v9.36.0-rc.1
Message-ID: <aundw5WPNkRz3E3o@arm64>
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
	protocol="application/pgp-signature"; boundary="BUyVRaxfBUQACrcg"
Content-Disposition: inline
User-Agent: Mutt/2.3.3 (2026-06-12)


--BUyVRaxfBUQACrcg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the first RC of the upcoming version 9.36.0. The main reason for
this release is the upcoming DRBD kernel module release, which
introduces the new "drbd2" netlink family and changed block tracking
(CBT). drbdsetup uses "drbd2" when the kernel offers it and falls back
to "drbd" otherwise, so the new utils keep working with the currently
shipped kernel modules. Besides that, the release contains fixes for
drbdadm adjust with proxies, the require-drbd-module-version
comparisons, and v08 to v09 meta data conversion.

Please test, if we don't find any issues the final release will be about
a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/68b2fc3a9f9a59102c2277f10ce5576e781f92b7
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.36.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
9.36.0-rc.1
-----------
 * drbdsetup: use the "drbd2" netlink family when the kernel offers
   it, fall back to "drbd"; DRBD_NETLINK_FAMILY forces one
 * drbdsetup,drbdadm: drive a DRBD 9 module that advertises 8.4 over
   drbd2; use the 8.4 tools only for a genuine DRBD 8.4 module
 * drbdsetup: hand drbd-8.4 command lines to drbdsetup-84 instead of
   translating them to DRBD 9 requests
 * drbdsetup,drbdadm: add the changed block tracking commands
   cbt-flush, cbt-start, cbt-stop, cbt-status and cbt-dump; suspend-io
   waits for the last barrier ack, --flush-to-peers=no skips the wait
 * drbdmeta: keep the changed block tracking bookmark across
   superblock rewrites, add cbt-dump
 * drbdmeta: converting v08 meta data of a crashed primary to v09 keeps
   it a crashed primary, so DRBD 9 resyncs its activity log extents
 * drbdadm,adjust: fix a recreated proxied peer stuck in Connecting;
   rebuild its proxy connection when a peer or path is new
 * drbdadm: fix require-drbd-module-version-{lt,le,gt,ge}; for example,
   requiring 9.2.0 or later accepted a 9.1.0 or 8.4.11 module
 * libgenl: report the kernel's extended ACK text on netlink errors
 * spec: enable SELinux on SLES 16+; require bash-completion only
   conditionally; no rich pacemaker dependency on SLES 12

--BUyVRaxfBUQACrcg
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmrp3cEACgkQRgmezyI6
myIQpQf9FN7PsHUBBOImwXEF0BwhajIrahnOvwOJnjJUJ2PDXHUkQzLVI8kWb+zI
Ex3OiaA/+RebKJIsVv6qJnne0ceDqXh6EXqT+ajYqhytif6f3v5ATr0rQHgGCZyo
3GneJmrmcaDJdwjGeKVmZ0cMR2dY20lVk27g4gZoYsL78zKllPEUW6ggyOLH8GeI
bZEt6SWnY9Lk2erwqZDzYFJnQ/HPo8WcDSJXL4tHHf7WntTCY/to3bKxNmUp6tgo
f3sZ9vsv6TQLXsMqUHqG9/t3XnDpxMncLrpyhma2yieznLGu4asSMcIo1c4PY4M8
sQ+sLAVR9++2V6jw0huxg0isIoSVjQ==
=JK52
-----END PGP SIGNATURE-----

--BUyVRaxfBUQACrcg--
