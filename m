Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
	[209.85.167.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 1E322160650
	for <drbd-announce@lists.linbit.com>;
	Mon, 24 Mar 2025 10:53:40 +0100 (CET)
Received: by mail-lf1-f48.google.com with SMTP id
	2adb3069b0e04-5499e3ec54dso4744220e87.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 24 Mar 2025 02:53:40 -0700 (PDT)
Received: from localhost (static.57.82.181.135.clients.your-server.de.
	[135.181.82.57]) by smtp.gmail.com with ESMTPSA id
	38308e7fff4ca-30d7d7c1bebsm13384461fa.5.2025.03.24.02.53.37
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 24 Mar 2025 02:53:38 -0700 (PDT)
Date: Mon, 24 Mar 2025 10:53:36 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-utils v9.31.0-rc.1
Message-ID: <Z-EroJWeaoUYJP3V@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="OvFMxucoJdTxW2zH"
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


--OvFMxucoJdTxW2zH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is the first release candidate of drbd-utils 9.31.0. It contains
all kinds of cleanups and fixes. The important things first:

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

Please test! If we don't find any bugs I will release the final version
in about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/2411ff2e4241716463b4afa853=
0dc3c628c157ce
TGZ: https://pkg.linbit.com/downloads/drbd/utils/drbd-utils-9.31.0-rc.1.tar=
=2Egz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:

9.31.0-rc.1
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

--OvFMxucoJdTxW2zH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmfhK5sACgkQRgmezyI6
myLkuggAhvhwjh7c6dbtVBHkM/zx/MHBR+zbNG3VkD9zRlqRkrLVA9LOVUxzzsl8
zKaF4oyrBvpZLmq1myz+9Va7mFUD/Ec5XpniJGaDdzIS8mqZU4FqqzTjL7fpY8XQ
f2kzK+LjgUI3CPLJC1hxv27znfJufW9XW3m5KNwey9FfhGSAT/UIZFbd2Q51jWYu
9om6oM/e7xebpZml4q9/RW4Vepb/fvISuwdoq2ptvMAnD8A9V4YQ1I3JUlqRNOI0
z07noAmXjeDZiYQmd/jw7W4/9zaIWB08pOR/Ftc7ZHPyao6g6K63AaHf1TtmfvH6
rm/nqH4daBTMMvrS41MW/IxLEfo8/g==
=/jrg
-----END PGP SIGNATURE-----

--OvFMxucoJdTxW2zH--
