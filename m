Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
	[209.85.208.170])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 0441042019F
	for <drbd-announce@lists.linbit.com>;
	Wed,  8 Nov 2023 13:30:46 +0100 (CET)
Received: by mail-lj1-f170.google.com with SMTP id
	38308e7fff4ca-2c7369df9d6so13928221fa.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 08 Nov 2023 04:30:46 -0800 (PST)
Date: Wed, 8 Nov 2023 13:30:43 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZUt/c1tApTJVeqMW@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uDV61aFNT2O6By+2"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v1.4.0-rc.1
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


--uDV61aFNT2O6By+2
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is RC1 of the upcoming version 1.4.0. The main feature is improved
DRBD events tracking that now survives kernel upgrades. There has also
been an improvement for the prometheus plugin that it works with any IP
family even if "ipv6.disabled=3D1" is set on the kernel command line.

Note that this requires the latest drbd-utils.

Please test, if we don't find any bugs I will release the final version
in about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/c0b0102332064ddec89d3248=
bf26621406a2a560
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.4.0-rc.1.t=
ar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
[ Roland Kammerer ]
* build: add MIB to examples
* core,events2: allow events2 reloading
* filter_map(..).next() -> find_map(..)
* build: bump drbd-utils to 9.26.0

[ Moritz Wanzenb=F6ck ]
* prometheus: ensure default works with any IP family
* ci: fix coverage instrumentation

--uDV61aFNT2O6By+2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmVLf3AACgkQRgmezyI6
myLS0gf8C9Ugkni7iuiitAqjLY9dgmeSapwD5bRwo0SxxQKuqxeYcNpagAjjcRCA
qPHmU1Spo794s4GG8se3M9eBQ6raMXoa1jtIBI2Z1a/zBzCIE941RxQ9yjQwdwiw
PqRIuHgXxcLoiVYnsG6VrPsaqUy0mjx40gE2wn5rhBpJ/T2r1N+gQgCIMjTvmsJX
BrJ2TGWo1fIqcpkMfHRwrG1ApJxLqh3r9onEqfv3+jc34tVQ3qS8uZ+McI8HZwD4
JW8pDS6nBNnkEg7F90gJEtdAaxpMAKJAVsmlOwufFR2/njzo+tjMMRKGL5CpZRvr
luxfldaYTHxILv34aL8JblZJq9OC2A==
=+6VZ
-----END PGP SIGNATURE-----

--uDV61aFNT2O6By+2--
