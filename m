Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
	[209.85.167.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2F8EC420656
	for <drbd-announce@lists.linbit.com>;
	Thu, 13 Jun 2024 09:58:22 +0200 (CEST)
Received: by mail-lf1-f48.google.com with SMTP id
	2adb3069b0e04-5295e488248so852788e87.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 13 Jun 2024 00:58:22 -0700 (PDT)
Date: Thu, 13 Jun 2024 09:58:19 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: linstor-proxmox v8.0.3
Message-ID: <Zmqmm5p-n6EalYn0@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HW6+4X5ykr71KDpj"
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


--HW6+4X5ykr71KDpj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD/LINSTOR on PVE users,

this is version 8.0.3 of the linstor-proxmox plugin. The
proxmox-csi-plugin uses a naming scheme that was not covered by
linstor-proxmox. This got fixed in this release.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/a06070e656959e9bafb05731d7dc4513accd1f25
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-8.0.3.tar.gz

--HW6+4X5ykr71KDpj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmZqppYACgkQRgmezyI6
myKM+gf7BXJpt/3BdJ/XetJKL2+588tyNMR4AdY6lEto0Ov424mm9//VgtfUSy8B
0gLeGsYic2Mb1ufZq27qxODxZLuRhPNkC+exR9oHRA8klv7sRAQV7V4NnnG2se0e
6wPmSow+Re8TCpVkvdiRHdfr/0hae2zvLpoae//U6PfS6e2YpsOvL+erpUnoQbq0
3GI1oqyQhBEqHtOkPNwLgGDj0g2ZKAAj9YWC5y2emwzZfXYn+LIo/hV0EllQkeT1
sl++7NW7qfbZ8mgKl8nKV/zWn2Kdlbyy2fZLzwZ9e1HzNuv1xCqPbSY9EK0ZvHao
kMkOKDnfvVIqjf+NlRWR18g4JaZJ8g==
=OBOr
-----END PGP SIGNATURE-----

--HW6+4X5ykr71KDpj--
