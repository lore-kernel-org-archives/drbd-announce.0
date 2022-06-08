Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id C809F4205EF
	for <drbd-announce@lists.linbit.com>;
	Wed,  8 Jun 2022 13:27:07 +0200 (CEST)
Received: by mail-wm1-f53.google.com with SMTP id
	m39-20020a05600c3b2700b0039c511ebbacso4185379wms.3
	for <drbd-announce@lists.linbit.com>;
	Wed, 08 Jun 2022 04:27:07 -0700 (PDT)
Date: Wed, 8 Jun 2022 13:27:05 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YqCHiUWG+c4XVKrM@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WwFBfALkLYlUJCoK"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.21.2
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


--WwFBfALkLYlUJCoK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is drbd-utils 9.21.2. There is no urgent need to upgrade, it
improves the shim that is used in drbd-reactor to allow using the
recently added 'secondary --force' feature. This release is merely to
bump the version so we can depend on it in the next drbd-reactor
release.

TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.21.2.tar.gz
GIT: https://github.com/LINBIT/drbd-utils/tree/9.21.2
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Regards, rck

--WwFBfALkLYlUJCoK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmKgh3kACgkQRgmezyI6
myLYVQgAnPCtSj6AsXcdQZdrNWAcj9x7LeNbzqPSNJSlswdRzfyRXNAW0NfwJ9HV
ruA+XeNJL1wLSnGSEqzBAbjdKCiinLbLzTxcDtod7VrhfQAolMVFOIDu1Gr05//k
Hev2kN7n9n7sNbH0T7To8nkSY0+ZXW3j36aCQMdWQjAuN4t5zMOjo26xYN4vhRjd
v7tRRs9dIfSDxQyy4AufeJm4tv7XOLPMVy9CIPyExXer6cPPjk5alKIzxeaTAQ76
zZMw6TSkMPfsx/Gy961Q63GIDgOmbYUkEShA5HVj3r4+1QM2AtFesemYNUMvk16s
9V5OG5LVttRacPxjIX+JdjvpeBgZ5Q==
=jkAy
-----END PGP SIGNATURE-----

--WwFBfALkLYlUJCoK--
