Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E3F834205A7
	for <drbd-announce@lists.linbit.com>;
	Mon,  2 Aug 2021 13:43:53 +0200 (CEST)
Received: by mail-wr1-f50.google.com with SMTP id d8so21105649wrm.4
	for <drbd-announce@lists.linbit.com>;
	Mon, 02 Aug 2021 04:43:53 -0700 (PDT)
Date: Mon, 2 Aug 2021 13:43:50 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210802114350.GN1404@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aVD9QWMuhilNxW9f"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.18.2
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


--aVD9QWMuhilNxW9f
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is release 9.18.2 of drbd-utils. There is no urgent need to upgrade
if everything works for you as expected. While this accumulates some
changes and fixes from the main development branch, none are that
critical that we would have released a bugfix release for these. There
is another occurrence where we need to work around SELinux in a systemd
template. This is drbd-promote@.service that currently is used in
drbd-reactor. And that is the reason for this release, to create
something we can depend on in the soon to follow drbd-reactor release.

Regards, rck

TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.18.2.tar.gz
GIT: https://github.com/linbit/drbd-utils/tree/9.18.2
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

9.18.2
-----------
 * systemd: fix SELinux for drbd-promote@.service
 * drbdadm: allow 4096 chars for concatenated host names
 * drbdadm: enforce max length of fields for drbdsetup
 * build: fix redefinition of __swab{16,32,64}

--aVD9QWMuhilNxW9f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmEH2m8ACgkQRgmezyI6
myLmxggAnW7cznl5hd9esCupkEB2TKWv+jSwIX1wreHY39FzgBrwor46rS6s7gYN
FraTQ8E9/SqzPHCdcue38mI6N9X1pIsK2yfSfHQqIKqvdGlw9aT3jN/FKR83wBuu
PkM5e0AnUrnlOVuWiQoJ1l3r3CbGcY60jnYJxLfIxCb+29pr3Hgoid4mu9uSkjy4
BVrvgnsTeZUAyeINRhiGe5n+B7Sao//pa/vVeZTjFnuH4VX3iRbvMTahoel1d/4+
iL7SK5bZLeHZ/k7VELEI8aUnUtwf33ICsiLGYcHhCWs1n0z8VUNd2FlBK5Qo+VlF
1ziy7sT9dgPfD1aGK76Mu30e5CwYYA==
=Slxe
-----END PGP SIGNATURE-----

--aVD9QWMuhilNxW9f--
