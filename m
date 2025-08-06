Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
	[209.85.167.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E8F27160651
	for <drbd-announce@lists.linbit.com>;
	Wed,  6 Aug 2025 16:18:51 +0200 (CEST)
Received: by mail-lf1-f52.google.com with SMTP id
	2adb3069b0e04-555024588b1so6971592e87.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 06 Aug 2025 07:18:51 -0700 (PDT)
Date: Wed, 6 Aug 2025 16:18:48 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: linstor-proxmox v8.1.3
Message-ID: <aJNkSNHh0b44cYRw@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7ZxqaM4jQ7tAzJYU"
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


--7ZxqaM4jQ7tAzJYU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD/LINSTOR users on PVE,

this is version 8.1.3 of the linstor-proxmox plugin. While 8.1.2 is
compatible with the recently released PVE9 their API version got
increased which results in the usual harmless warning. The only purpose
of this release is to bump our supported API version as well.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/cd9ee8042f7a6c9fd5f668a9cbf8aaf35e810506
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-8.1.3.tar.gz

Changelog:

[ Roland Kammerer ]
* APIVER: 12

--7ZxqaM4jQ7tAzJYU
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmiTZEQACgkQRgmezyI6
myJnZggAiwgeEmYVwwDzVd/DkwLtpSEp6Sqacql8sex2PFnmQGE4QxwHtSD79pCN
W8WLNLV8NZ0GrXLVQcbo43cZxo13xBTgtrv4ZcVG7EzyXS6blO2cYTEzDqRNYaIh
40HGh4rb2K1WmiV/On31r5y5Z6CbNlIe9HIWQXAELDzW1zlM6kBVzQEFyZpdwxgr
z/h891DRe0nd8nl1Ma9UD1THuRjeDAawdiG9t/V7NLSSdJKLwGuMaqHNFO5uPYam
1J2YDWTwvPJHLwilOv5fu/D/KqVVwoFoha0SRO1MJG0ac1Qd7Uce8iMngY8zg0rR
vU7eyc+rFLJDqbv8nICkRa+GyxnlhQ==
=8dnf
-----END PGP SIGNATURE-----

--7ZxqaM4jQ7tAzJYU--
