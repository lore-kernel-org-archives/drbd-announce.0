Received: from mail-lf2-f12.google.com (mail-lf2-f12.google.com [74.125.229.204])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61DE24F55AC
	for <drbd-announce@lists.linux.dev>; Tue, 22 Sep 2026 11:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.229.204
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790077181; cv=none; b=IMSqrrBGxsyw8Qqc7wKou0n9BatAPQeTMueb6bBj6ACKwAGYrgcYIKCywET7WCtzoXhsNlRdS0Zv+nfgKGDArcqneUwzvrYDzy2cmiJ5CMvGqje/rKNzj7Q87wHQkpYMGyB8U0GIUFftxPAJqbXoJdtc1bMoYzQP/HSHIYdrC9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790077181; c=relaxed/simple;
	bh=02t7QsjqLODwX3QleWiEgfwAQkRXDqZpx2SfPSLHWVA=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ghTGDKQCyIAdFMOdvNpZxgTpOvOqim3qFNX4xQnDUO8h0P4M2p3T0bYo4flcDz7gTFsqIuuUW3HTrSA8uBH6acf7K7DQx/gfGXiM2ZkPj7bo+l2Xo/kWSVzZJRKMyVLyOEnBxLNoRkmVSN/8K9FGxvRiqV3m6D98aLkV4moSUbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=jAO0hHbj; arc=none smtp.client-ip=74.125.229.204
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="jAO0hHbj"
Received: by mail-lf2-f12.google.com with SMTP id 2adb3069b0e04-5b5e4f1651cso3588472e87.0
        for <drbd-announce@lists.linux.dev>; Tue, 22 Sep 2026 04:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1790077171; x=1790681971; darn=lists.linux.dev;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=02t7QsjqLODwX3QleWiEgfwAQkRXDqZpx2SfPSLHWVA=;
        b=jAO0hHbjSRZQ6/01/x+0qKVj/UGdIDFc6PCqSmCRWP0+omyYUyJbC2w0DQ9v3k6vBS
         oDL6Pv9D6dv91/hHJRGD/j7ibL088AEw9buiJfqr1dwem3/rLOrnZ+xoiNs+0Y/g5RAZ
         cQH06NdiifqVKZvTbT8x5J3wA1OjOYr3m+31BRarmXFZ/jyFOkQHul5d3uNpWTt3CSWM
         mDaFl8S7z7RMVHlVqjDjolr5bIWJyDYcS7qPryL7K1NOEUq+hWIBRowvspzJaYrVcJ9Q
         IDQCY1TM19nlNco2zm2c+4UfNNKswa+7F5MpzqKrkof6xbcY9O+t96loSmppXnHe6CHz
         29sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790077171; x=1790681971;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=02t7QsjqLODwX3QleWiEgfwAQkRXDqZpx2SfPSLHWVA=;
        b=U/LZN2t4LGH/1yLA/mS8rVrBR+TDZctML09RDn9XKuwF4xC+ZOINqUKwF5Id/w+jNS
         FgakMs8lLbH3bZ6bu83a4H9vtGvHDQBrqvMqa80pNU70urWxiYKf2xgba3KWgXlxU4Mn
         W4AyV3/Q3T8xqgnFXAZrc8WCjZDNhGpy2sUZoL8ov029gwRIpBwmE4q1xlJmWAcOm6Rk
         I03EhMsmm4txbLQ6rCiODl7EWVOgEQ8M/uKtBL6HTvLrxEswTYKcYlLX1MB84r3ZzNhZ
         o9CW+EvC/Jf2lENaFkf3sXA2l+R5PKfHJWDyi4cei1xlG8phOvb3I5Pu18P2naceYUAF
         q/JQ==
X-Gm-Message-State: AFuF++lkG+P9ThFVgbTgAxpcvLJ0utirURa2iFIfrinYqegg/5TYrnOw
	2ZHivSU6VFGHCjmx9N39FIxsF9WmFoknlGtGwCZaBzxTzbvSWhWTCFL7k+ROgmcbSFHBvsG5FLC
	iZn6S4W84Yw==
X-Gm-Gg: AYBFou0TazgX2o+ttKccoaNkBc7C0O93xqej4gv9C4PpL0DmwAV0d0p+/Sef3bhEfAg
	CKKPlXV72cFktyOrZBeB7obH6BKw3Qe4S72FnKb1oaQKtAy/6LCXtCNyHAl3dQEapL+w6a86m+x
	xmp6AC+9G+2T36ZpGC6X2WKuc0+ZBCoE5UZKwlJQv9nwgvfj9HZxwZb+aEUujdf5JkIkfN4ITcL
	+a3HEP5cEb8r5/yNjg4sHMCEljvLKUjoGuMoCQwQBZnic+J1D95F+doJTHgFlPCwXr1R8iIjXUl
	0qWTD3BWTDgCkQHS3EPahm3DQV3JxhqcOLHZwnDzvvqcGo75gg+eQ8SYwFGj4yE0V4TB1nX3DZh
	zyueEy3c47IlVb/L5DlRskBkAlRpkSNyYrarpSt7PVO4AFbZGweSTJSriFBGpKIIUwTjcwVAAel
	T59TmMF13jjun3unTfBA1NQ2XIfRZrCTsQ8L4YuIObKD1+gkRLhmcBuiDT3c8eB4gVdTXm79caI
	hdXajivxGS93Tqm0RnK6YA3v7Q5ZeZnF6gTh5aBuv67EtpIG6M=
X-Received: by 2002:a05:6512:1307:b0:5b5:a8ab:3500 with SMTP id 2adb3069b0e04-5b8c17f12e8mr4206040e87.2.1790077171517;
        Tue, 22 Sep 2026 04:39:31 -0700 (PDT)
Received: from localhost (static.57.82.181.135.clients.your-server.de. [135.181.82.57])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b8d46d6703sm402512e87.42.2026.09.22.04.39.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 04:39:30 -0700 (PDT)
Date: Tue, 22 Sep 2026 13:39:30 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: PPA transition to Resolute (deprecating Jammy)
Message-ID: <arJo8p1-T83UX5uR@arm64>
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5xKUsBTMAmualHPk"
Content-Disposition: inline
User-Agent: Mutt/2.3.3 (2026-06-12)


--5xKUsBTMAmualHPk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD PPA users,

After a (too) long waiting period I can finally announce that we now
have the latest versions (at least RCs) of our packages for Ubuntu
Resolute in the PPA[1]. Jammy did not receive updates for a pretty long
time, I will delete the remaining Jammy packages soon. Time to upgrade
to at least Noble now. As usual, we still provide (stable) packages for
very old Ubuntu releases for our customers.

Regards, rck

[1] https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--5xKUsBTMAmualHPk
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmqyaPAACgkQRgmezyI6
myLdLQf9GnWSOt2bkhApYaq9WcvF4EuceFuih5QJpfIrzXsRjsDh+Y7New7N3ny8
eZ2moWJpCrQd7IGOViqOn6zbsoqeT16D0h0XSX2KTZA0b9kpse73h2+0vV4iZWE5
dnqXvsn5QuvPiLwzMe4YDuTlAEi7I4Go4KJy0IgY0QaJneYkQrsiJdym7j0pqnDn
vt9aKp1UhFHFmd48WAO6y9RVFQNBWoPhUDvmiH9yuOpdVFaxkcJLb+kLi7ptyTq+
SGmoiuFKYB5fQJ89shfsQsakuavZ57buwM/S+nnuZGLCChrgtYMrtxs5yejwqSRx
d+6U4NkjIOLa6M8z7gPxpyl1PjOqag==
=W/av
-----END PGP SIGNATURE-----

--5xKUsBTMAmualHPk--
