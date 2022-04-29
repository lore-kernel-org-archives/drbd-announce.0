Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 865904201B9
	for <drbd-announce@lists.linbit.com>;
	Fri, 29 Apr 2022 11:59:25 +0200 (CEST)
Received: by mail-wm1-f45.google.com with SMTP id
	p7-20020a05600c358700b00393e80c59daso5073229wmq.0
	for <drbd-announce@lists.linbit.com>;
	Fri, 29 Apr 2022 02:59:25 -0700 (PDT)
Date: Fri, 29 Apr 2022 11:59:23 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Ymu2++S9+1dSfk+/@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1bHrdBnCvGm/UOyw"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.6.1
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <https://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <https://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>


--1bHrdBnCvGm/UOyw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is a quickfix release (v0.6.1) of drbd-reactor to work properly
with latest utils (9.21). These introduce a new keyword in the events2
stream and drbd-reactor did then not parse the events2 line
successfully and ignored it. For the promoter plugin the result is that
resources are not initially brought up, or that they don't fail over.

This version should work with current and older drbd-utils. I might
rethink the decision that the parser is that strict, maybe it is better
to just ignore unknown key/value pairs instead.

The PPA is currently building, and please note that the rust toolchain
shipped with Debian Buster (oldstable) is too old to compile one of our
dependencies. If you really need to build for that distribution, update
your toolchain (e.g., via rustup).

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/0570437d20b3d4b9b8348171ff2b19d8acaa17b7
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.6.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/

--1bHrdBnCvGm/UOyw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmJrtvYACgkQRgmezyI6
myIhwAf9EZFtn/pXYphITJOZKw9tCOUDs2YikbId+wfEjLZrg3uUEW3AstVgtHVQ
aLB2U7aRcFjgvO2uxI2Ve36kOIld0SKNHt8R5LSPNqq4Zo0qu6gF3VxH0rhNzUrh
ds18WP7pJJCdigk5Wce3fSkGuhe+gpPzEx0sMfOuvWLYKQ4u1MLTP48pCN/1GBLb
hQmmkBOv6YFr8y/ZOYwOwvgzv/BqfKZJahostaylZS1xn6d6N5LwrybYW8jwAfzD
aGJ2E7eAJRqRQCtWh4n8mT4u87IsCCRJI7suWiZjt1zLLrUvHGCHE/I/wDorehld
8humcrwUGFDT1YQmV2Ibe5QGtJrHuQ==
=fG+c
-----END PGP SIGNATURE-----

--1bHrdBnCvGm/UOyw--
