Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B1E8F42003F
	for <drbd-announce@lists.linbit.com>;
	Thu,  8 Jul 2021 15:54:13 +0200 (CEST)
Received: by mail-wm1-f43.google.com with SMTP id g10so4161060wmh.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 08 Jul 2021 06:54:13 -0700 (PDT)
Date: Thu, 8 Jul 2021 15:54:11 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210708135411.GH1286@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u3/rZRmxL6MmkK24"
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox v5.2.0
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


--u3/rZRmxL6MmkK24
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD and PVE users,

this is version 5.2.0 of the LINSTOR Proxmox Plugin.

This fixes an issue reported where creation of UEFI VMs on ZFS did not
work as expected. In this case PVE creates a tiny UEFI disk (about
160K), which is too small for DRBD. Every disk created by the plugin now
has a minimum size of 5M.

J=E1n was kind enough to implement https access to the REST API. For the
command line client this is documented in [1]. We will document that for
the plugin soon, as one needs some additional conversion steps.

This will be available in the usual public PVE repos for PVE 6, and the
new PVE 7 soon. This release drops PVE 5.

TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-5.2.0.tar=
=2Egz
GIT: https://github.com/LINBIT/linstor-proxmox/releases/tag/v5.2.0

[1]
https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-linstor-rest-api=
-https

Regards, rck

[ J=E1n Stibila ]
* Secure and restrict REST-API connection

[ Roland Kammerer ]
* fix UEFI disks

--u3/rZRmxL6MmkK24
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmDnA3sACgkQRgmezyI6
myI/owgAhUqUFWqd2kr3n6EgjThWixrLWTAr2GZkYJiQjok/qexSumcg1ALXvx72
9ZDXbeDt/Z7DJ1UIjHOKHJYQ6UKOGnq9Ea0/f2j0ixMazE8OWhSJPxaXM+WIGSXm
jWWgPOHTYsIqMSNnY3bgvBc9dqfoVc6mLsG0oEuKT9zpPzDICrJWpLg1XPZQ27nM
lxGDHZ75yVaMuvzkBB86hR/QdlKqIqQYmxgTS1MHIOHnGqrZEjNs+YPTZkHqxwOz
h9CLuL7VvfuF54RbG3Sobzd5W/1GnZnLD66nDVktOZ+A5xOEjOgMQDQ/KZrrjwGC
/pV9UHO16O/Nvq3gtyV5+cff6kmQ6g==
=noPo
-----END PGP SIGNATURE-----

--u3/rZRmxL6MmkK24--
