Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D164C4203C5
	for <drbd-announce@lists.linbit.com>;
	Fri,  1 Jul 2022 15:30:42 +0200 (CEST)
Received: by mail-wr1-f47.google.com with SMTP id v9so3246227wrp.7
	for <drbd-announce@lists.linbit.com>;
	Fri, 01 Jul 2022 06:30:42 -0700 (PDT)
Date: Fri, 1 Jul 2022 15:30:40 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Yr73ACtHA0fpuT2z@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7yiewJ0/QI3K1x4Z"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.21.3
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


--7yiewJ0/QI3K1x4Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD-users,

this is version 9.21.3 of DRBD utils. It fixes 1 bug that occurred if
you had very large disks and therefore a large activity log. Now
"apply-al" for bitmap sizes > 4GiB should work as expected. There is no
too urgent need to upgrade if your disks are "small" enough.

Regards, rck

GIT: https://github.com/linbit/drbd-utils/tree/9.21.3
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.21.3.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--7yiewJ0/QI3K1x4Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmK+9v0ACgkQRgmezyI6
myJw1Qf/TvmnsJCdxf9xJaEEoJ9f1rxgKiQFbkU2oKwZcMRBol1xa+TlRwEx7ilr
DI9OI9Z2a3JTFyGvax7QVZSV6hU1BVV/EKU8lpC6whqa6FCL37c86e2aOPNDjkq7
DzUJze18zKO7tGUNevnOXNP6Drsb4ASQhl0KhTWImOvXKAn1J+gtAtz4Wvy3hvWh
tUHFfd7h/wdIPKEmw7E4qKLnJqXbbF4e7h6UAFeC7FqICkYCyvMTb9KqIsfcnoWZ
nbCfAN9ozVL1aIMezL5W+q1w7ZRwYurjQl3NLR7wVVf1DLtoMhdYlie34LzyvZG7
ur17IUitUarxRS2XPmMbG8QKb+tiUA==
=8opv
-----END PGP SIGNATURE-----

--7yiewJ0/QI3K1x4Z--
