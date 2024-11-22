Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
	[209.85.167.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 79CEC4207C5
	for <drbd-announce@lists.linbit.com>;
	Fri, 22 Nov 2024 10:53:14 +0100 (CET)
Received: by mail-lf1-f49.google.com with SMTP id
	2adb3069b0e04-53da6801c6dso1662983e87.0
	for <drbd-announce@lists.linbit.com>;
	Fri, 22 Nov 2024 01:53:14 -0800 (PST)
Date: Fri, 22 Nov 2024 10:53:10 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: drbd-reactor v1.6.0
Message-ID: <Z0BUhmIzAp8QsOG-@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zTRW3+I+p0kQadIy"
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


--zTRW3+I+p0kQadIy
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is version 1.6.0 of drbd-reactor, for your convenience the
announcement of the RC:

It has some additional features like only generating overrides when
necessary instead of empty overrides. Due to recent changes in
drbd-utils we no longer need to override ExecCondition to ExecStart
unconditionally, which produces nicer status output on newer systems.

The main reason for the release is that newer drbd-utils expose a new
keyword (i.e., "open") in the events2 stream, and we now added that to
reactor. Without that the reactor log is spammed with warnings which are
actually harmless. We also changed these log messages from level warn to
debug.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/d79bf38540cb17f5084a778d=
96b0d13fab7dabe9
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.6.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
[ Moritz Wanzenb=F6ck ]
* umh: fix wrong environment variable name
* events: add "open" to device keywords

[ Roland Kammerer ]
* promoter: do not generate ExecStart override
* promoter: write overrides if necessary
* events: missing keywords -> debug

--zTRW3+I+p0kQadIy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmdAVIIACgkQRgmezyI6
myKsAwf6AkJuQckp+Q4MIkRusbYg3HjmIj8+8v993PvlF8f0tVig67TFrQKv6O9a
QACnmjElzbH2BCeH59/7rIawTqBuCdK5PyyJykNlfGF2I86xohiXmMJsgHxOCUYu
sQ1tXnLmBMJBM9lf7jNUkxhNoeNsCj+b8g/HdoCPVfOn3se26zxmEXhwO2++q8Pi
MHZMS1bkDdKgw8LYnmKx2DRQS8Wdd8AgiY0QllRnNYG4OJ6qyCkmu7SwVFDPDaN0
SniY/KZigwgkOvteZXicOTgdzUKegXBzr44lE/YjubaR98WCXm9ij5o0WqxVKgZ5
61ZwcNQ4UuG38XKmdJe/W/0NAUQfRA==
=HYUE
-----END PGP SIGNATURE-----

--zTRW3+I+p0kQadIy--
