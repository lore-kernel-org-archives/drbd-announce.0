Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
	[209.85.167.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 05A2F160650
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Jul 2025 09:31:27 +0200 (CEST)
Received: by mail-lf1-f45.google.com with SMTP id
	2adb3069b0e04-556fd896c99so4432904e87.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Jul 2025 00:31:27 -0700 (PDT)
Date: Tue, 15 Jul 2025 09:31:24 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: linstor-proxmox v8.1.2
Message-ID: <aHYDzOe-HoiWz3zp@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4AguOVYZC7GTgz44"
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


--4AguOVYZC7GTgz44
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear PVE users,

this is version 8.1.2 of linstor-proxmox. We did not find any bugs in
the RC.

The only change is that we now use LINSTOR's make-available API to
create diskless assignments. This should not show any user visible
changes except that make-available handles corner cases (e.g., if
"unrelated" nodes are down) more benign.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/5e740a54dd926c2f513d3c185fedbb95cc1415c8
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-8.1.2.tar.gz

Changelog:
[ Roland Kammerer ]
* use make-available in activate_resource

--4AguOVYZC7GTgz44
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmh2A7cACgkQRgmezyI6
myLa3Qf+JFduK0sf0+NRrhegBuJ3b+KBbws1A6CcjjSjFBHVmgoV4Zp831pLeoCs
foieHedJOCRiS3q/WnMUv/oQVY1hEaOL159pNV8r7k2bmqeMIgr+fbWxgUPOMqEr
9l25IV2awLq5r/DXMpFrVuaQiOT4C9squrv1wI5HgFIpF01h/w7lbHGIyqQ2gmjB
Q54qh+ycwZuQfeQoXRlSBZd6X8JU8xMRKpMyLgGE1VMpXUdfbAcVacNZ5azK1Ftj
3gF6tDkoTM/+USl1AHObF1/X1qIDFU2R8leg8h9+TsrioEaEhHAWt/9riulXUDhh
b4IEKLy0v/LfSDw+yEL+NMA4C3MKHw==
=cknj
-----END PGP SIGNATURE-----

--4AguOVYZC7GTgz44--
