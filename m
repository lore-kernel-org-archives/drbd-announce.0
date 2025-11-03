Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
	[209.85.208.169])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 983F016094D
	for <drbd-announce@lists.linbit.com>;
	Mon,  3 Nov 2025 12:47:26 +0100 (CET)
Received: by mail-lj1-f169.google.com with SMTP id
	38308e7fff4ca-3717780ea70so47432411fa.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 03 Nov 2025 03:47:26 -0800 (PST)
Date: Mon, 3 Nov 2025 12:47:24 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-utils v9.33.0
Message-ID: <aQiWTFruBGshyMDc@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="T9hA33nK9nbSn112"
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


--T9hA33nK9nbSn112
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the drbd-utils version 9.33.0. It contains improvements and
fixes all over the place. The main reason for this release is that other
projects depend on some of the fixes, but there are valuable changes on
its own like the improved compatibility between DRBD8.4 and DRBD9. We
need to be careful when DRBD9 finally lands in upstream Linux to not
break user space, and this is an important step in that direction.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/71c8bcff6ea77a022b272a7eba649a774251bac4
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.33.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
9.33.0
-----------
 * drbdsetup,show: show device options in json output
 * drbdsetup,show: always show defaults in json output
 * drbdadm,create-md: avoid device UUID regeneration
 * drbdadm,create-md: do not reset effective-size
   on format conversion.
 * drbdmon: secondary --force and various improvements
 * all: various v8 v9 compatibility improvements
 * drbdmeta: allow bitmap granularity
 * drbdadm,drbdsetup,v9: add drbd8-compatibility option

--T9hA33nK9nbSn112
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmkIlkgACgkQRgmezyI6
myKluAf/folINMby3/DzznkiXyN/e920bglu660Wv54YrA0TUaVUmtiEGvUR5wda
anJww+3YLkYzPCXVDKJpKeUJ4/pjGqRxosygV5qfexRZVBxzXD5urWkE9dMz6dUJ
PLzt7oQwTpyn3kfoH2vAM6AMlaXnUUIZkYIAxzJ6SIaHD/bInafEs1PRZzRyY9pi
pL940LaClqr6YPsizE//AWsQ9EScGhcQEOkLtJvPoKoNFD3TXZpVRoxr9bWZHWd1
O+6jM3tuWZHF2+HfPE4/tBCtjfmmAgeBZLkkjl2xsQZSRa/Z5sgzYTc5BTgtL07E
yKiWIfzWHg4iKsbLCciyV/cgnhMy3w==
=NBrA
-----END PGP SIGNATURE-----

--T9hA33nK9nbSn112--
