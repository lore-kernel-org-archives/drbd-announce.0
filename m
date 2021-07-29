Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4DAB8420202
	for <drbd-announce@lists.linbit.com>;
	Thu, 29 Jul 2021 10:02:23 +0200 (CEST)
Received: by mail-wr1-f43.google.com with SMTP id h14so5713347wrx.10
	for <drbd-announce@lists.linbit.com>;
	Thu, 29 Jul 2021 01:02:23 -0700 (PDT)
Date: Thu, 29 Jul 2021 10:02:21 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210729080221.GJ1404@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k1lZvvs/B4yU6o8G"
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox v5.2.1 and PVE7 information
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


--k1lZvvs/B4yU6o8G
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD on PVE users,

this is version 5.2.1 of linstor-proxmox. pve-storage changed its APIVER
to 9 and also reset its APIAGE. The plugin should not be affected by
these changes, but we still have to flag APIVER 9 as supported. This is
exactly what this release does.

A note on PVE7: If you install/upgrade to PVE7, you obviously need to
change the repo in /etc/apt/sources.list.d/linbit.list as well.
Otherwise you end up with Python components (i.e, linstor-client and
friends) not compatible with the Python version on PVE7. By "pure luck",
the Perl and Java components should work. And now the bad news: we
currently don't have a public 'proxmox-7' repository, but that should
happen today/tomorrow. Please check [1] before you switch to PVE7.

With this release and the hopefully soon to show up proxmox-7 repo we
should be ready for PVE7.

TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-5.2.1.tar.gz
GIT: https://github.com/LINBIT/linstor-proxmox/releases/tag/v5.2.1

Changes:
* APIVER: 9

[1] https://packages.linbit.com/proxmox/dists/

--k1lZvvs/B4yU6o8G
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmECYIIACgkQRgmezyI6
myKYEgf/dKjOEbWQiZ87gLlM7FvjGHqbbS59OopJb6F1CPY2bGQ9c5at14+h6b1l
N9fHel2j/addEso00LN9QpFCzW4L1uinZN4X6dyq45shc7NanWqSWh60SDo0ufdI
apOtrnb1ucFUiFo87rnKkQhYyZsxIT7F0qcBcaJaDGh7fmH5pZImrL+V/DRqwkRL
VFLO1l73DkS4lutIzquFwqvYPcPihFKjeejO0PYRW4g0qKwij2Am+wOBW3o4CSsE
0cFZnySp7LrrDePdFa49PXDAJ/g4EqCSUf5LRrHQeYF3hnAtP8Dgvf6bl4llEHma
WdNLqLpfGJR8K5Ou7soTvpSe5saz8Q==
=9z+I
-----END PGP SIGNATURE-----

--k1lZvvs/B4yU6o8G--
