Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 20C56420950
	for <drbd-announce@lists.linbit.com>;
	Thu, 18 Nov 2021 09:32:07 +0100 (CET)
Received: by mail-wm1-f45.google.com with SMTP id p18so4507334wmq.5
	for <drbd-announce@lists.linbit.com>;
	Thu, 18 Nov 2021 00:32:06 -0800 (PST)
Date: Thu, 18 Nov 2021 09:32:05 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20211118083205.GG1745@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DSayHWYpDlRfCAAQ"
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox v5.2.2
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


--DSayHWYpDlRfCAAQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear PVE users,

this is version 5.2.2 of linstor-proxmox. This is at least required if
you intend to upgrade to 7.1, maybe also older PVE versions if Proxmox
rolls out these changes there as well.

This is once more a trivial API version bump, nothing to see here.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/c1304026f71c32a75722ab7dde8cfdf5cebca73c
TGZ: https://pkg.linbit.com/downloads/connectors/linstor-proxmox-5.2.2.tar.gz

--DSayHWYpDlRfCAAQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmGWD3wACgkQRgmezyI6
myL7vAf/RxwoMqHgJpoGLpbA0h1Sp6IeSRbIj3FAvefNk+zEUG8oFeUtzeLptwrp
RatI3CBi9ojFFi5JK06GqO9pYWnGBXVqaNUuiU3YrJjD1JUM9sFm0hScsTyhFHrt
+l9588LVKlAaNuE0MRu0h1iHBlLyOG/kJe6wKoUYqq9ssjircdT31lnpWZ9QchQ9
01tHgQAwHOWW4KbYCBiy3/O1nDDOAYpAlEKkTeyVB69ob4+j33KIKXjkEEisWNQH
khxZc0QFGosayLnNwGz4UjCaDeYA6e/JRyJVQxgpaBTaUcOG1+NGTRitqOHbqAH2
Q5n+FIyMQODhvj+NW57+iMqNxN8YKw==
=96P9
-----END PGP SIGNATURE-----

--DSayHWYpDlRfCAAQ--
