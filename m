Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
	[209.85.167.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 6DE37160938
	for <drbd-announce@lists.linbit.com>;
	Mon,  7 Apr 2025 12:53:43 +0200 (CEST)
Received: by mail-lf1-f52.google.com with SMTP id
	2adb3069b0e04-54afb5fcebaso4687209e87.3
	for <drbd-announce@lists.linbit.com>;
	Mon, 07 Apr 2025 03:53:43 -0700 (PDT)
Received: from localhost (static.57.82.181.135.clients.your-server.de.
	[135.181.82.57]) by smtp.gmail.com with ESMTPSA id
	2adb3069b0e04-54c1e5c23edsm1204502e87.101.2025.04.07.03.53.40
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 07 Apr 2025 03:53:41 -0700 (PDT)
Date: Mon, 7 Apr 2025 12:53:40 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-utils v9.31.0
Message-ID: <Z_OutJdwDkGkJIlP@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WWkOCyD0Z0LxRQaH"
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


--WWkOCyD0Z0LxRQaH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


Dear DRBD users,

this is drbd-utils 9.31.0. We have not found any issues in RC1. The RC
announcement for convenience:

It contains all kinds of cleanups and fixes. The important things first:

If you are using kmod version 8.4, but recent utils (>=3D 9.28.0) you
probably want to install the new version. We fixed a regression for udev
rules generation.=20

The second thing I want to mention is that VCS and XEN block-drbd got
dropped as we don't think there are any users and/or there are better
alternatives.

The rest are smaller improvements all over the place, especially our
systemd integration got some love where graceful shutdown for pacemaker
got improved, we now consistently disable the old sysvint wrapper
(drbd.service) and we added a drbd-configured.target which can be used
as a synchronization point during boot-up.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/694d0e8b38f79e196ea13cf5f7=
5485aec209afdc
TGZ: https://pkg.linbit.com/downloads/drbd/utils/drbd-utils-9.31.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:

9.31.0
-----------
 * VCS: drop integration
 * XEN block-drbd: drop. if you think you want that,
   look into the LINSTOR + xcp-ng integration instead
 * drbd-configured.target: new sync point
 * drbd.service: disable this old sysvinit/sh wrapper
   (not to be confused with drbd@.service)
 * drbd-graceful-shutdown.service: improve handling
   of pacemaker shutdown
 * drbdsetup,v8.4: fix udev command

--WWkOCyD0Z0LxRQaH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmfzrq8ACgkQRgmezyI6
myJkyQf+LoDbEDd6QVu6UTp7PtaneRQ+Wk05E5qmDVEiJrvSD2h9g5VTAw72TMSc
mr5szwqjzJh+tX4iWka8fdKwuGuKX4BFBObvGY45D5VTqhSTvzztasJSb/KaeNJM
INFVJG9gcYunfigms2XkRfPeGa3PVeNauB4iKsD6SqZFRFBak3t6YndX4vd8niXG
0K6kWxPAnVT88giOu04P2C19URczdDdwAc6775uKIYxieaLnG+c/YlmQmXaXnOpV
eByhx1iPdtnrd3e5QUL8un+44ZzGPkkmta8yyeI+ZBeGeGgmTIASlQN0DO7H+tSq
KlKdoLh80QbAnVbQqYS5063Wc9xzjQ==
=Ohyx
-----END PGP SIGNATURE-----

--WWkOCyD0Z0LxRQaH--
