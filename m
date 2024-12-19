Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
	[209.85.167.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E80AB16098E
	for <drbd-announce@lists.linbit.com>;
	Thu, 19 Dec 2024 15:50:24 +0100 (CET)
Received: by mail-lf1-f42.google.com with SMTP id
	2adb3069b0e04-54024ecc33dso927889e87.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 19 Dec 2024 06:50:24 -0800 (PST)
Date: Thu, 19 Dec 2024 15:50:20 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: drbd-reactor v1.7.0
Message-ID: <Z2QyrAX8-Z467usz@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0AAirOA6PyRBoKsZ"
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


--0AAirOA6PyRBoKsZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is version 1.7.0 of drbd-reactor. It adds bytes received and sent
=66rom/to a DRBD peer-device to the Prometheus metrics. As this is a
rather small and trivial change, I did not see the need for an RC.

Changelog:
[ Roland Kammerer ]
* prometheus: add sent/received peer-device stats
* prometheus: rm two pointless wrappers

GIT: https://github.com/LINBIT/drbd-reactor/commit/30282134b39678d80bbffd7a=
60d09bbc30ccab6c
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.7.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Regards, rck

--0AAirOA6PyRBoKsZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmdkMqIACgkQRgmezyI6
myKG4ggAkTKAcztW5XjLPS9GAmg+TkYxitjw67YU2zK2z7tcQsVys3N+ndK+8H/J
bF0WsJ1SXCatlY5hjXyIRDFCqNasJbTUvWcDxRt2Ms8HNswxMtXIBl/IXUGZzAA9
plH2NnnQXPgRFwe90SvebNdV8sP2uY1Ka/AedH5vR3gX8rDqM5eeO/pDdVJ1vFJB
ZrS8Y/AYzLMpm7lvwrQvB0pxCwjkqUetrmYpLe1PYaEN3V5L7htgmYfpSE3DxO8I
B7WHu0p5/yl4NIVM1G24evBKJEwqeHA6GNE3lA1hOWyor6r5qb5E1ZaxgNG4yTkl
wlU+434QrSFqOxoC65n1iE8z0RTDYw==
=kSOv
-----END PGP SIGNATURE-----

--0AAirOA6PyRBoKsZ--
