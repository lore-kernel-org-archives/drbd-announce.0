Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
	[209.85.167.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id C474716098E
	for <drbd-announce@lists.linbit.com>;
	Wed,  8 Jan 2025 14:51:14 +0100 (CET)
Received: by mail-lf1-f51.google.com with SMTP id
	2adb3069b0e04-54252789365so10571116e87.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 08 Jan 2025 05:51:14 -0800 (PST)
Date: Wed, 8 Jan 2025 14:51:10 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: linstor-proxmox v8.1.0-rc.1
Message-ID: <Z36CzmqSHG4_aSiA@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BpSSJ9GMjPcb/eoN"
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


--BpSSJ9GMjPcb/eoN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD on PVE users,

this is the first RC for the upcoming 8.1.0 release. So far the plugin
did not announce "sparesinit" for volumes that are on backing devices
that are guaranteed to read 0s. The effect was that disk clones to such
resources became thick. Now such clones should be thin (i.e., when all
backing devices are on LVM_THIN/ZFS_THIN storage providers in LINSTOR).

Please test, packages are available in our public staging repos. If we
don't find any bugs, I will release 8.1.0 in about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/405146e5c454273cd7fb1175114e6f55ce05206a
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-8.1.0-rc.1.tar.gz

Changelog:
 [ Roland Kammerer ]
 * set 'sparseinit' feature

--BpSSJ9GMjPcb/eoN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmd+gskACgkQRgmezyI6
myKfewf/dTYO0p2WiLOS3pgPw/7WtA/XTa2wxjuLG/L6+yd6SdX9UbBSh1gruClD
L8JKQ0Q2eThZWaUbHvuVLKR685n7H7UGp3Kx7z6s7yRlkw76N4OBF31UhpbuGdfz
1ZCqciAD2OgVWy3ABPKku8T5sAB+sllI1ic09mg/FZhYS9/nT4vLn1/6bHrai6gL
kXV5rkGoARFqOvjFdibkerab7jiOBi7f41+ZBS8mgalR5HsX4mIrFrqh8SkAQdXK
IwDn6XyvbHtckoS45Gk71+KwvoJWhYJiuYi5eZX+ATm6KOvbLTi7UQTZhBspLT5q
Tq1rYjXpVDv8q1x42HHocxB1Q0KDWg==
=reXy
-----END PGP SIGNATURE-----

--BpSSJ9GMjPcb/eoN--
