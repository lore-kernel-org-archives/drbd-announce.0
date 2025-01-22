Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
	[209.85.167.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4C8D616092E
	for <drbd-announce@lists.linbit.com>;
	Wed, 22 Jan 2025 11:31:18 +0100 (CET)
Received: by mail-lf1-f42.google.com with SMTP id
	2adb3069b0e04-53e399e3310so6888169e87.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 22 Jan 2025 02:31:18 -0800 (PST)
Date: Wed, 22 Jan 2025 11:31:15 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: linstor-proxmox v8.1.0
Message-ID: <Z5DI822r0Md7Ussg@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cvVI3ecuPodFJmE7"
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


--cvVI3ecuPodFJmE7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD on PVE users,

this is version 8.1.0 of the linstor-proxmox plugin. So far the plugin
did not announce "sparesinit" for volumes that are on backing devices
that are guaranteed to read 0s. The effect was that disk clones to such
resources became thick. Now such clones should be thin (i.e., when all
backing devices are on LVM_THIN/ZFS_THIN storage providers in LINSTOR).

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/e941d1653fcf0eaad3d1f5134aa507e46800fdf5
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-8.1.0.tar.gz

Changelog:
 [ Roland Kammerer ]
 * set 'sparseinit' feature

--cvVI3ecuPodFJmE7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmeQyOwACgkQRgmezyI6
myKeWgf/fTeL9xj5mwsmGv1nDBs22KHse9FqrGrvcDKRDK+8JImRqXD/a8FFB5jl
u9XbmYxrLKL0dVGk3w6zI2gsQiE5nMAhS7vuksKRPveTDEW76UF7b0OqSc9cCp6q
RuxEld3eRNCMy2MctNf3upKLRRwHQB26zqsedjpe4++xrU6xS55WV0VrbqY97kXY
oqcU0/MiBDGW820/+ThGUiTO0chNk+tOSZpthTauRNO0VlMt2Cw18xnecVJWFuyz
PQ22xNezQwYtA6edq52XFihj0Rji9TBrt1pg+C+Qx0ofbrmtyBhUByzNnlI4wyJb
OBVPz/hZzqWtx4zNwgaD4tQo9Lrviw==
=uGn2
-----END PGP SIGNATURE-----

--cvVI3ecuPodFJmE7--
