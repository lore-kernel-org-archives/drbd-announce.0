Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 50F7B420962
	for <drbd-announce@lists.linbit.com>;
	Tue, 11 Oct 2022 13:23:55 +0200 (CEST)
Received: by mail-wr1-f50.google.com with SMTP id n12so21075812wrp.10
	for <drbd-announce@lists.linbit.com>;
	Tue, 11 Oct 2022 04:23:55 -0700 (PDT)
Date: Tue, 11 Oct 2022 13:23:53 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Y0VSSbsHsOFdJOeH@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8WkzjessCh+zT4UF"
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox v6.1.0
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


--8WkzjessCh+zT4UF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD on PVE users,

this is version 6.1.0 of the LINSTOR Proxmox plugin.

The main feature is that LINSTOR resource groups can now have multiple
storage pools, which then allows to implement [1].

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/897f8668a71d4705ffab8a931d34bff111d6d715
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-6.1.0.tar.gz

[1] https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-a_storage_pool_per_backend_device

--8WkzjessCh+zT4UF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmNFUkEACgkQRgmezyI6
myI5fAf9HP2TaN07ApLuWjkUi6EkzwMnIlAZshoIYvXOBAKthfEkUJ+ileV2POth
7iYCui8cD6I81EJhlxaDgvj7zMjc/yLx3FwN/FsCk9N0tQ5RHYwT984VOTLIR8pv
f5Ij5Dpmys/XODSUJrbaCIIPDd9jCuzPc9/eyLLNCqeJ1JwlXnTUCs3RXPV4RfwS
7aPD4klPNSS7WLR19lOxCfGgJlEEIcHjiIbTsXODD9IyhovZj0lAbuQHTb3DDjlg
JX13uppZSEa6ovfdOgHaaPTsOwYy3GGn6k5RDU/JOv/hgnZpKbpltsw+XgO3Fery
Ngn8BaW6Yr7Lq1mJJBM/6KI0fB//RQ==
=Tvnt
-----END PGP SIGNATURE-----

--8WkzjessCh+zT4UF--
