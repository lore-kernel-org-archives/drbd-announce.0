Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F913B47E9
	for <drbd-announce@lists.linux.dev>; Mon, 14 Sep 2026 07:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789370805; cv=none; b=DOtSdA6Wu2OsQQbaceXHAvH3Yjy03/xm5EetuujMkdskE90Oon7OB1LX5TCwLSa4coVbRiqa9FVD8745u5Sis+7AS0RGm1H0P6GGELiZXGey0xp5jjvEzymWwhmarr9BQIItDcN0txyAbTosyw+QAYs0jB1HP+iYf3LaKCw1EWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789370805; c=relaxed/simple;
	bh=B6ySkCY5Tk1gFQocnne98qQ+ynn4LVcHhagkqBsMc7U=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=jbX2UQiTv5Y9dIUDSNb5JNI8Ef4VYC8uRClSwFa9hIBh9lG0hctodHqe86xTuY8yqxpyPCfQfCQytlxF3BzFLB+dfRyXZwSsFmTztLKE2jGBF8/vxPWnKL+4Nw3AEQOsKlq7xEcBDbeTSzVtOH9sgCdG0IMGcrrqj1dnEI+fbUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=YFWT4Qb3; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="YFWT4Qb3"
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5b6031cbc6bso2870990e87.1
        for <drbd-announce@lists.linux.dev>; Mon, 14 Sep 2026 00:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1789370801; x=1789975601; darn=lists.linux.dev;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=B6ySkCY5Tk1gFQocnne98qQ+ynn4LVcHhagkqBsMc7U=;
        b=YFWT4Qb3EoqlkxYq6GXBy2y0Rog5VUCPvRkTlz6YEcYkg5yjdcCLaEJhHgRI26YAEd
         18yjOnL82uh1W7MSBV5bbyDD0jHMKFbsr83IvHEyQ/LxTDSwbKrZNsajO6w3Fy6Zsg/D
         qFEbZm41BUH3UM+QWAY6xIOeRTVOD2G3yV7PqXoFOIMhxpeC7n/TFE7y2BMs5OadeM8B
         D75/zypejllwQK2eBAjqXW+oXCbLfrkwkUegGoe++TC5FQcCYFCS7Bs2hiyvzo4ICjSx
         yI360JidTGSSUI97BlYlVvP3zIOBHgGD3dj5JTubebM4SYI6ZBVkfl/nwdd9N3inFMdF
         gYSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789370801; x=1789975601;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=B6ySkCY5Tk1gFQocnne98qQ+ynn4LVcHhagkqBsMc7U=;
        b=CF3oNtG+BMdBmP/WSJdPRWMkFKk3geiz4+7jTFIwO8g/+iBKC0/geCkkXECTlkmzkP
         e0c4qoVi0PWSFojG1YXcJHe0nBEuiFRCV6PxYTwJ11jeEt4hGUomzPIOGmVlPANvWytC
         9+Oyf88rFsbVpO408zMOKobDWXs1a6d76Kt8aZWL4f6WoCxG1ud5vf4xYExTQIOmMmUr
         gwTrouWT1OQwqw9yBdihgO5/mDxHVpBlT1VBPM0qlC98nN+ecJ3bKKKV2ke6/oynuu71
         MAE/pRsHuWuLrwINmpz+f8Yh6yUHyTRWY8CmifWLlvq3yTnVh21dTOm9OtRqgHHrvAwG
         BSaQ==
X-Gm-Message-State: AFuF++kZZBpOUK5P7hoPVE/JQ+WxGuyIw7PBrgAaHGaWPv0KyddDlqqZ
	iScR5vBgpO4YS+rrl9sLJMYvZwt0w72bbfHzy+uvf0Sc7TA5A5EjozTlQsBTdkiR5n00+mdcVaz
	Ggb+4dy0=
X-Gm-Gg: AYBFou2nTg401F5pyMIsiY/Z0tl8qLRprDWeqaaSzN64O6ix9g+zyMGSz9k9xkeQQoe
	ugJae7dRh0Hy69T/b6/x4jqRqu3bFZXVupD+Nndd6m1G4Flp7OZwYI5gHrhTfzfxQOSXvXnlxjM
	AjRS7Kb46o6IVveb0daUzNVLHjjwvqNtlAUEy1XIfwmEug+JjZiEyn27VYd3LMn3GtTgKKs7MiJ
	/KOtRpzr3cuUIbKKsryuzF96nOd69YrWeDrZ07qAZLKrJTY02Nb8je8wHdcO8JK3npCuHiuR12P
	zcbTpki3QDtUqzqzKKo6IB0TD5mYmhpR7oER3zR61eG36D1sIafRzoph5EW25jdG/QRjHWoif/+
	shFGFogTaEmUmqQETSfSJX9CKyG+KKJGLFo2Wu/5ao3vYVcdbPYI4vNV5Z/5mVrCkOSS/NUOYjS
	o5qh+KWSSHaR8LjgfrV6WW9JNfisEMyidutZZAUwPUh20WtvBDM+0k6HvTaRAK5NU4L0tqljKFA
	adFZzxzMcA7RFw9IkkxVdRD2v/nojKKsrgIj2pJcY94pGCPobg=
X-Received: by 2002:a05:6512:39cb:b0:5b6:4b2:a1a5 with SMTP id 2adb3069b0e04-5b8ae69c7e4mr275183e87.32.1789370801438;
        Mon, 14 Sep 2026 00:26:41 -0700 (PDT)
Received: from localhost (static.57.82.181.135.clients.your-server.de. [135.181.82.57])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b8a04804bfsm2179608e87.84.2026.09.14.00.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2026 00:26:40 -0700 (PDT)
Date: Mon, 14 Sep 2026 09:26:40 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: linstor-proxmox v8.3.1
Message-ID: <aqehsGCJFO0rG8ft@arm64>
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NyAQoBvu4kv4oiF0"
Content-Disposition: inline
User-Agent: Mutt/2.3.3 (2026-06-12)


--NyAQoBvu4kv4oiF0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear PVE users,

this is version 8.3.1 of the plugin. This is a bug fix release, and
users with resources that use the LUKS layer should upgrade.

The plugin no longer reports the sparseinit capability for resources
using the LUKS layer. A LUKS volume never reads back as zeros, so
callers that skip writing zero runs (qemu-img convert without -S 0, and
therefore disk import, clone, move-disk, and live storage migration)
left pseudorandom plaintext where zeros were expected, corrupting for
example GPT partition tables.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/a514174448211cf5b2f685e344ba9236396b9c5b
TGZ: https://pkg.linbit.com/downloads/connectors/linstor-proxmox-8.3.1.tar.gz

Changelog:
[ Roland Kammerer ]
* do not report sparseinit for resources using the LUKS layer

--NyAQoBvu4kv4oiF0
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmqnoa4ACgkQRgmezyI6
myLb7Af/fUVSxQMSD4+BKLbkCdBRWpHR24kSUgyk+3yJOVY5w08ZgrWjl96O/IpD
Cl7NxAaS8LnM5sDAE1/wJpkWqny+z862kDZTvU//fcPCF9bXO05LneM6Z+VC9M9g
XlScneth2JG8bY4qh1mwD/tZVLRY5lZAY3WM/mnpnGWBilCTFxx8xKPTtvrVSf2c
0P0ySK2s0GN91JyFpW3ins/DDLblYBoyHzam+Y0/9acsJBJ9brX2VbZrHNK8PECq
nuwIi7nXDgB2zsGxwP2Umt+sh4ZEewO4N7ejDAgeYrh+93qJo1mvIa3rT/1Q8r1o
+Ciweee0U6UUE0SizlSckwsnvQSl9Q==
=eui4
-----END PGP SIGNATURE-----

--NyAQoBvu4kv4oiF0--
