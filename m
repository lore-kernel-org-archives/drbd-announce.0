Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C681737AA75
	for <drbd-announce@lists.linux.dev>; Tue, 19 May 2026 07:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779174596; cv=none; b=uUZR3HH9Rei+SSwYTf/ng4bzdvUAVU0XcxstYSPACuf8b/VGEry4b750uQbbj4Pn1oQ8smYAmFVAnDnIaoCRtAqIPnJAEagUlZP2jbZyracvb4gIgHNZreQ7Sup3j0ZzXzZweyOCujHsj5kTjgJL63sxFYiiBLmTIv0EU26FpUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779174596; c=relaxed/simple;
	bh=sivyXR1CanUeKCKkLSA0akgVh4cedn+8DpBi9Ci87qU=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ZCq6ODUoQCHRMXGt6xo+hWVKD5Hb8qqw+W225UYXZy1BBE2mxzCKRUZpXZHbwdYpEw8I36/dSkUpBUjfhO9RH2Wrx3QhQnsxVMKtmBm9hxWBSwHSgxEATezr9NjPh4o8+KXUfG1S+cW3oAc7G9cTzLc0BFvF7Rac9GD2B/TJLXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=ZIgGDBCo; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="ZIgGDBCo"
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5a858881ad2so4432216e87.3
        for <drbd-announce@lists.linux.dev>; Tue, 19 May 2026 00:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1779174593; x=1779779393; darn=lists.linux.dev;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sivyXR1CanUeKCKkLSA0akgVh4cedn+8DpBi9Ci87qU=;
        b=ZIgGDBCoOHh/OombLeOn28ncHKQBjsV13lJgZtrXLqL01IPpJi/YLfiocaPGp2kvRs
         GCHyq67gm+yJMSQ5N/4OEVHHxeDYx7cIQV6taPAEzgUO7LkkQbWLHEe2yVfl4k6qKXlI
         hDfYQZSesXmlmRKoJ/r/Q909cxXp/yrZL9jBjRlnoLBvWb7chJeOZdcmNMa9XJhBs8L8
         oeapUhoudz9VbJ/e7G1e/MY9HjBaa7m/JsGI9Z4VNp1GsCI+QOYSWysvdWYnv1WxY6ZR
         2l7hyegQVFwfgKHqc4Wv75Z3uYpucDg9shM0+AN5byQORYSbqgwFU+8QGSYZX7AYPhPi
         en3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779174593; x=1779779393;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sivyXR1CanUeKCKkLSA0akgVh4cedn+8DpBi9Ci87qU=;
        b=M2e6vkqBCVF/Kcantn2JburMSDYH8pAaM5PFr38pHbI+LDPoxenv8GW4cif01Ni+hy
         dFvFWAJ2kfWNqk+QCHfF+3UxdeM8fPGWpPrcUUEDcCaAXrb+SMm7tOPRZgcaiRGlnrOI
         Kgc6X3GvNxtbPS7w2ZjOFgZInqZ6uVKIa23mnX+eKrrCqBBL0ZP1W78Zvto/fLTd6Loe
         O70sfsv5JNme+X+QoAsW/xpZxWrLeJFjm7LrTkVRFvzLaVgc3t19ACTNobVG1wgtKhfS
         oofFmzcZO7oPz4bI1CljsU8efGBnpXpx5xfl0dvI3Ag7WoYRYybS5aGw4jc5zt4vXnoy
         10ZQ==
X-Gm-Message-State: AOJu0YxJxs6CunOaqYPXTsJp0P20X1SaWKJoPJNrnxCFhmQQc/SQXaYK
	l0gKwjJKYLya4sB6wIKY20mu6Mg5lXfyVADcy3YuhBfHeSrYBSoB4sM2fNkmqSsKXgTFSjY6XZ0
	t0/U+Kxo=
X-Gm-Gg: Acq92OEgh8cYqUsuyx4JafHLTruBP5p7/jYGQdfRPMDHDL0rO+XJLdXgP0v82y2vPkD
	DH+w8C/AHFZzfasanZ9JIlSHRcSnhwbrfuZs9BeShjT3GkMs1gQRnejPsGkGG4/T4LDF/wehasS
	ffKq10VtiiYwAkXgrhMZB+VFh7xJyTkvEoPLpxhZXiKK71VTLo2z9NfqV4ZZAGbDZTvf3d3z9oP
	v9ql3k8pWIb7c3zQWeFk5MN474EklDoVsP86eBeoByqGhZ3vP/3z6JAxplRnQl0/mL3G9yLAwQf
	b7zPlVryUMgKMP/4Dbu3rOBl9tPDwEr4WumnY34Qhl6Aqnw9BHKckZoL9qrcPlFbf9l5ZwWTUPH
	PSS/F/CAyOoQX+eEWFxRW5X9+rdH9djNdpe2kqaGNhdcwegCsptKjxeGBWUMQckfy33rq3ndX3j
	Q6XRv+8V2NCaIe2j7GksSF5nAXaXDCsAebMIZKlMAY1cHQjKvXtEDIVMJ7MQpalFHQGjuiLfqpq
	iJhHM1yktq/Y1o=
X-Received: by 2002:a05:6512:1188:b0:5a1:38c4:4247 with SMTP id 2adb3069b0e04-5aa0e600127mr5053259e87.1.1779174592704;
        Tue, 19 May 2026 00:09:52 -0700 (PDT)
Received: from localhost (static.57.82.181.135.clients.your-server.de. [135.181.82.57])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a906c3ed96sm3965419e87.0.2026.05.19.00.09.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2026 00:09:52 -0700 (PDT)
Date: Tue, 19 May 2026 09:09:51 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: linstor-proxmox v8.2.1
Message-ID: <agwMv1_iiUyFHexk@arm64>
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Li8JWpAtqsio/6Tv"
Content-Disposition: inline
User-Agent: Mutt/2.3.2 (2026-04-26)


--Li8JWpAtqsio/6Tv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD/LINSTOR on PVE users,

this is a rather boring release only bumping the supported PVE storage
API version. No other changes compared to 8.2.0. There are more exciting
features that are already committed or are in the queue (waiting for the
next LINSTOR release) which will then land as 8.3.0, stay tuned.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/0da125c400609314bf1178b38d1a2f66b32688e8
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-8.2.1.tar.gz

The git commit is part of a 8.2.x branch.

--Li8JWpAtqsio/6Tv
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmoMDLwACgkQRgmezyI6
myIH7gf/Zz25bRTNe1DaJ9J4lf8YkLA+4LF/8uHXzyTGUJhnpaZT3h0fy4vVeA/I
8zkQgnHIX4SCJxeCON+fIahxiFmXyHD3PkD0BRdicVaxiNG4p1hrWLJIa4yUG4Qe
xEKNlcu9Y55YAkBJKk/MUuDyFtdYArjmCxTC0tf9ewc5D41DoEU5Dxy92j+7ejDr
tRgRIoxU1SoVM3252rvOg03q/7L9AZnz8+6vlnE1IvN8zSh/FRiSDh2YlnhCfswt
liZfW7A0/arD+I+JECpJaScT+shJXiRAcj17+VDSQnXX9IZTtkLsRV/RF5E35Q1W
KWIKGaLt2zsg7COkdztrAsQvRxhW1w==
=Gwbs
-----END PGP SIGNATURE-----

--Li8JWpAtqsio/6Tv--
