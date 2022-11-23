Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id A25EB4252BE
	for <drbd-announce@lists.linbit.com>;
	Wed, 23 Nov 2022 13:20:23 +0100 (CET)
Received: by mail-wr1-f52.google.com with SMTP id n3so12556948wrp.5
	for <drbd-announce@lists.linbit.com>;
	Wed, 23 Nov 2022 04:20:23 -0800 (PST)
Date: Wed, 23 Nov 2022 13:20:21 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Y34QBb93c8L0C3Dj@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TIs/n7zjcLWwXtgR"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.10.1
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


--TIs/n7zjcLWwXtgR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is version 0.10.1 of drbd-reactor. There was a minor bug in
"drbd-reactorctl status" that triggered an error when executed on
"older" distributions that don't support cgroup freezing/have a too old
systemd to report "systemctl show --property=FreezerState" (e.g., Ubuntu
Focal).

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/c448e06fbaddf1a6af1c54d8e75adf777b5e24a8
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.10.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
* ctl,status: fix freezer state on old systemd
* clt: fix typo in systemd states

--TIs/n7zjcLWwXtgR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmN+EAIACgkQRgmezyI6
myK+4gf/ZVgdR06Uo1GYjdEM5p4ZHsqJv6AZd9rs7cNT/KkwBBX70QHymfjWdFT/
RofEIcTB/tsYXtcsNUNKQ0AaCkIZln+mnV+upV2ZyC78JJaOj+yh7+a5JoMdLgxU
iHr0iLhWwVItSIyGz1amaoVVJ1i2X9weh06jyLKKSa71Mv0mXOkPDMDmry2Oo+Ji
5ZXFRT3S3nIKE2jbtCjbTBhxcTWs4C6Co/YskMgufG6Z0g/feJFSeIsiocVmUyUR
CjtZ1xV/dXj+NU2G3rMuJIHvZo/6fTirttWG929tWyCOjxrZBDzixvGRcnd76G0l
Rdsl1V/F5fftUvgASIMZOeUsTJkAZQ==
=6eTV
-----END PGP SIGNATURE-----

--TIs/n7zjcLWwXtgR--
