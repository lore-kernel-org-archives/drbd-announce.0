Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 16E8E4201D4
	for <drbd-announce@lists.linbit.com>;
	Tue,  4 Oct 2022 14:36:37 +0200 (CEST)
Received: by mail-wr1-f41.google.com with SMTP id f11so18459774wrm.6
	for <drbd-announce@lists.linbit.com>;
	Tue, 04 Oct 2022 05:36:37 -0700 (PDT)
Date: Tue, 4 Oct 2022 14:36:35 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Yzwo0wzytJHDIuDU@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZC3DZa/4IhApFczK"
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox v6.1.0-rc.1
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


--ZC3DZa/4IhApFczK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD on PVE users,

this is RC1 of the upcoming version 6.1.0.

The main feature is that LINSTOR resource groups can now have multiple
storage pools, which then allows to implement [1].

Please test. Note that if you test by overwriting files, you need to
overwrite the following files and restart the pvedaemon
- LINSTORPlugin.pm
- LINBIT/PluginHelper.pm
- LINBIT/Linstor.pm

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/fb52a446c5a1df28d9c5047380b22b44183a5dc2
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-6.1.0-rc.1.tar.gz

[1] https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-a_storage_pool_per_backend_device

--ZC3DZa/4IhApFczK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmM8KM8ACgkQRgmezyI6
myJ+nAgAkz4B5g2fTds5CfgRzzz42Enb94OidGLEqfM0lz5EBhL2CXhkqmsyJlrg
+t32Nz0bQLkyQEBxc7dV/rL3t591Mr1mLQocYxkyni7P5enhKSa8rGkMYdLdyFgi
P46XV39M3GjJqVe4qaPwEWMrzA3mocp48A6mwMzhvr5p5v1JATHcy+u1kfqhGN49
YbmtxwaRcePTNKALURcCpkC3cAiHlswYMiyDMmxbq2gUuCJb++G//qnhX4mWYCLG
cXWIUXRbbdoc/qh+4WEtDVGB5HkH7pHZQTJjhyEo/z9ahCz9ExcOZVtFh1YnaGtS
1dLzn34/PHaaj6mEb3/d45/o4QXZzQ==
=5weZ
-----END PGP SIGNATURE-----

--ZC3DZa/4IhApFczK--
