Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
	[209.85.208.179])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2B7BB160982
	for <drbd-announce@lists.linbit.com>;
	Tue,  8 Jul 2025 10:21:41 +0200 (CEST)
Received: by mail-lj1-f179.google.com with SMTP id
	38308e7fff4ca-32b7cf56cacso40291241fa.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 08 Jul 2025 01:21:41 -0700 (PDT)
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-reactor v1.9.0
Message-ID: <aGzVE6pQ4oyWoqX7@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Q+XP573jFD4hFMND"
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
Date: Tue, 08 Jul 2025 08:21:43 -0000


--Q+XP573jFD4hFMND
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

This is version 1.9.0 of drbd-reactor. We did not find any issues in the
RC phase.

It mainly contains one new feature related to what is known as automatic
switch back:

So far when preferred-nodes were set they also were taken into account
when a service was already running on a lower priority node and the
higher priority node joined later. In this case the lower priority node
stopped the local service and (most likely) the higher priority node
took over.

It is a valid use case not wanting to switch back if services are
running and a higher priority node joins. One might want to keep the
running services on the lower priority node. This is now implemented via
preferred-nodes-policy, which can be "always" (default and old behavior)
or "start-only".

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/9dd420eb43a853a2e23e3aa7=
2982a9eea65d54d0
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.9.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
[ Moritz Wanzenb=F6ck ]
* ci: use git fetch instead of archive download

[ Roland Kammerer ]
* promoter: improve log message
* promoter,doc: document uname -n
* promoter: add preferred-nodes-policy

[ ggqshr ]
* Update promoter.md

--Q+XP573jFD4hFMND
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmhs1Q8ACgkQRgmezyI6
myIQbgf/TLaQ6JSGuN2QQX95WKWG8xYlbjCLPksCwEVGLMy8cZEs89YHYBXg3H4B
z0dV6HcXmDv/iWh7hHK831p1SyZncV5wpjoc5zLTMcGVEwKfUzK53MusZb1MRdA7
6ueX5BJIIrOSQ69OvhNCeWtKxU/AUjPaE2qZUFiq3kTw4Mb60kHivnxatnhFhNfc
BOGVtQ+AzRB6mFTA22rIK0Gnv7wi4Dz6v7a5NrD/JYWYUoiVRPqujCSRNx4czx/6
107BaChG0WGD8AISfRxj1PB4bvChsqgTHurOAQHVADdn1LqgRxqd/2J73EnmcY+/
l3v1bH4B6gICdGbQYEdbIx7eBVi6FA==
=8Mw0
-----END PGP SIGNATURE-----

--Q+XP573jFD4hFMND--
