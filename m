Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
	[209.85.208.175])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 559A2420137
	for <drbd-announce@lists.linbit.com>;
	Fri, 24 May 2024 08:37:38 +0200 (CEST)
Received: by mail-lj1-f175.google.com with SMTP id
	38308e7fff4ca-2e6f2534e41so70625591fa.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 23 May 2024 23:37:38 -0700 (PDT)
Date: Fri, 24 May 2024 08:37:35 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: drbd-reactor v1.4.2
Message-ID: <ZlA1r3dikJnWidKe@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="1vkmQPIUDwmFOYPq"
Content-Disposition: inline
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


--1vkmQPIUDwmFOYPq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this release contains build fixes/cleanups mainly for Ubuntu Noble,
especially for the PPA, but no functional changes besides that. 1.4.2 is
in the PPA, but I don't plan to move it to our customer or to our public
repos. This is just announced so that people don't worry why there is
some "strange version" in the PPA not matching the version in
customer/public repos...

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/816c6cf0fa551419976b78e27e825aa25d87fd63
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.4.2.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
[ Roland Kammerer ]
* build: add shell.nix
* build: allow version packaged in Ubuntu Noble
* build: fix make vs. gnumake
* build: updated dependencies

--1vkmQPIUDwmFOYPq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmZQNagACgkQRgmezyI6
myLUKgf/ZzDHgeyk078/CS2YKiOiV5iVnKq20hc4+g+tgKePY2mSljJwS5QaQ4WW
pvBezV58bT1Kn0PD0DMGL3HTGAtUyg8D8ih/wjG+6ZtTR6eleGF0KacGRLPBRkBE
AwPAst4FubSo0T49qMmENYogBieTsPt9cvv8l3bcam7rEvYOJrhOUOuhkiq7LQ+U
PIzgWjQ3KxOn0U0FmgNSfmmjyDuYERtt94VbSGfFE7xzmo/IjErWKg2pzjvHnNyY
PaIET7ZmbdF4LpTP5//0Rnp74s+pDGYiCDPcxkGhnkKG50iLX7iPch3buMGA9JFW
oF++fcZKliPx54fBOgGzt9eZQDb0VA==
=uuKY
-----END PGP SIGNATURE-----

--1vkmQPIUDwmFOYPq--
