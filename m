Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
	[209.85.167.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 18D9A16087B
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 Feb 2026 13:18:11 +0100 (CET)
Received: by mail-lf1-f41.google.com with SMTP id
	2adb3069b0e04-59e60925251so5734169e87.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 Feb 2026 04:18:11 -0800 (PST)
Date: Tue, 24 Feb 2026 13:18:09 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: linstor-proxmox v8.2.0
Message-ID: <aZ2XAXvrqWsuPEM3@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c60MuI0I716aVya1"
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


--c60MuI0I716aVya1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear PVE users,

this is version 8.2.0 of the plugin. We did not find any issues in the
RC.

We added NVMe-oF support, allowing LINSTOR-managed NVMe over Fabrics
resources alongside existing DRBD setups. See the commit for
requirements and limitations. We will update the official documentation
soon. We also added a configurable allowtwoprimaries option that allows
using DRBD replication protocols other than C (at the cost of disabling
live migration), and fixed list_images to correctly show all volumes in
the storage pool regardless of which node you query from.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/ca3230dcce1cde9b794504498adc7a9e4853d8b6
TGZ: https://pkg.linbit.com/downloads/connectors/linstor-proxmox-8.2.0.tar.gz

Changelog:
[ Roland Kammerer ]
* Add configurable allow-two-primaries option

[ Tydus ]
* Fix list_images to show all volumes in storage pool
* Add NVMe-oF support

--c60MuI0I716aVya1
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmmdlv4ACgkQRgmezyI6
myITLQf7Bgc+r6p4MtqIIPY81uFLAQiiWAAvbKvj9Zt5y0OfoQAd+2HjlNCvGEpG
keqF6a/duwFlBmPc37qksw02CbrORRSWuU6ihRfkCpFmIGW3oe2b9OxrkAXm7u98
AjGJKpU5m3or5CTHfX6TujYJQtVpSAAIY4ylEATwLf6jJNLZXQ1JRky74NlRAPgA
idh+N8AdOdAoigkyuCV4fflXChUhv0i9q+77zOARObzl9EqyrrH1gwYgZdXKcX99
TUf6v+VW3oeZaLydUt65kDydJ1ZugT3eymIbVJgw412Qj0pt2yOvgQf/O8r3L4GN
mO8flCNQQj4FdELHw69htOJG9AMlow==
=V+2C
-----END PGP SIGNATURE-----

--c60MuI0I716aVya1--
