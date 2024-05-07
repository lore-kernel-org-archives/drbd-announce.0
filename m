Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id AB44C4201AF
	for <drbd-announce@lists.linbit.com>;
	Tue,  7 May 2024 10:33:28 +0200 (CEST)
Received: by mail-lj1-f178.google.com with SMTP id
	38308e7fff4ca-2e0a0cc5e83so28051601fa.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 07 May 2024 01:33:28 -0700 (PDT)
Date: Tue, 7 May 2024 10:33:23 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: drbd-reactor v1.4.1
Message-ID: <ZjnnU94KQjF8Xa28@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="erOdAFGp4Yyfd2Uv"
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


--erOdAFGp4Yyfd2Uv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is version 1.4.1 of drbd-reactor. There have been various smaller
fixes all over the place, the main reason for the release is that
reactor benefits from the changes that happened in drbd-utils (out of
order netlink message handling). This release allow us to bump the
dependency on drbd-utils to the latest version.

Regards, rck

Changelog:
[ Abhayraj Jain ]
* Update README.md

[ Moritz Wanzenb=F6ck ]
* ci: report clippy lints
* Apply suggestions from clippy "deny" configuration
* run cargo clippy --fix
* fix clippy fixes gone wrong
* drbd-reactorctl: apply clippy lint suggestions
* agentx: apply clippy lint suggestions
* plugins: apply clippy lint suggestions
* drbd-reactor-reload: Disable start limit
* events2: wait for drbdsetup command on exit

[ PhilippKolmann ]
* prometheus: add metric name to HELP line

[ Roland Kammerer ]
* events2: exit reader thread on error
* build: bump drbd-utils to 9.28.0

[ Michael Troutman ]
* example: fix warnings in Grafana dashboard

GIT: https://github.com/LINBIT/drbd-reactor/commit/8bb95fe35694d1dfa76422e3=
8fa85dc486d5fc56
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.4.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--erOdAFGp4Yyfd2Uv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmY551AACgkQRgmezyI6
myJAXgf/TCDlOINpMphJhxOH3rwBolQ5sWJrO6j2yctwDdrADajih8cSoLIAaLj8
O14wpLntNzKUP1Sn02sNm696XDGha+rjp9pKBft7+8yKpwvVfgbqYJ44N6DXJFSo
NHmW/nDD47SbMFb/mZeQB+UX9PHvIZGkfXikW6gIHvdohzRKk+POP/kKdw37vazd
u24m1RYZPgkRXl1cUs/FMo86ZS8SmFb4k6BBudmErrjatYEa8l2m+/map4OxIToX
3fDK/tY7f5lMZs8UH09Vgas6rirvV9AEjOsZjhxnYZh2IB2SBf01nEECBgNppihf
8g9RyzL3CNBh5HCJVbv/R9wXDUpQsg==
=z8Cz
-----END PGP SIGNATURE-----

--erOdAFGp4Yyfd2Uv--
