Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
	[209.85.167.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 9A36416B81F
	for <drbd-announce@lists.linbit.com>;
	Thu, 10 Apr 2025 10:01:47 +0200 (CEST)
Received: by mail-lf1-f45.google.com with SMTP id
	2adb3069b0e04-54acc04516fso514269e87.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 10 Apr 2025 01:01:47 -0700 (PDT)
Date: Thu, 10 Apr 2025 10:01:43 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: linstor-proxmox v8.1.1
Message-ID: <Z_d65yXAjPg_4gQ1@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="61YB84f3GKTmZOrj"
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


--61YB84f3GKTmZOrj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD/LINSTOR users on PVE,

This is a rather boring release, it just bumps the supported APIVER to
the latest one (i.e., 11) and therefore silences some harmless warnings.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/f2f119dfd2c4c3d2df354a19ca358c464aecb404
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-8.1.1.tar.gz

--61YB84f3GKTmZOrj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmf3euMACgkQRgmezyI6
myJqhgf/epeEpL6YGGe8+kS3N1bwbG7bNtFd3Gt/k90xrkirVcwKhYci/j0bg0N1
m/yFp4X2npeS+DzjImEtwpj7x7YDbj1CYLX0IaWKCIZmQgWXrDmKi4fP683L3Vsq
a60DPDzGwzoaYMpgszJI6m1+hycHU2laKY4LS62t8vvI+RwP067736AbMrrUC4UQ
3p7ThfgoMLe1zk5reT9JK0iW79rYmYHaAOlnyIyk+0piAGzhZJI9YeugNjWHDSLg
8Viuq5D/iqBANp/N3yxbITtir+ziqppeIUZDtrJd9YYZ4wfR9fNL0fp3C1DhqtSz
p1IuKg64qn+tIA+e4bdftjvTC3PHqg==
=N/i+
-----END PGP SIGNATURE-----

--61YB84f3GKTmZOrj--
