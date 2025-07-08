Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
	[209.85.167.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 65B6416098B
	for <drbd-announce@lists.linbit.com>;
	Tue,  8 Jul 2025 09:52:15 +0200 (CEST)
Received: by mail-lf1-f47.google.com with SMTP id
	2adb3069b0e04-553bcf41440so4143761e87.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 08 Jul 2025 00:52:15 -0700 (PDT)
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: linstor-proxmox v8.1.2-rc.1
Message-ID: <aGzOLSJkrL2MxxIk@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HVTh6hOkYCQhRpl9"
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
Date: Tue, 08 Jul 2025 07:52:16 -0000


--HVTh6hOkYCQhRpl9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear PVE users,

this is the first RC of the upcoming 8.1.2 release. The only change is
that we now use LINSTOR's make-available API to create diskless
assignments. This should not show any user visible changes except that
make-available handles corner cases (e.g., if "unrelated" nodes are
down) more benign.

Please test, if we don't find any issues I will release the final
version in about a week from now. Packages are available in the public
testing repos.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/af23a51879ccc8e0cb264381fed76f92cf5b69fa
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-8.1.2-rc.1.tar.gz

Changelog:
[ Roland Kammerer ]
* use make-available in activate_resource

--HVTh6hOkYCQhRpl9
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmhszh4ACgkQRgmezyI6
myK0jQf/RDWgD0WlHp6W15Sjv8W1KA/leniIfsl2a+H4rv2ji1/K1E73hZ5dgQrq
xP2SjpWd1cOfa3tGYZgpcEhjvS7/O9Nb59trSY4BMJ818UDm82TqQdwt6cLV0AHI
7nSIrdy5pC1Mwubwc1xG1scH3/XhdhI5C0dZ1VKx3sHqwdKsMCqKomN6TOELOtJd
c4MaLpGAsgt3OeBtFkc9y7dypr4mNenwaunulbTwUxo6y8Xo6VgT2gWvgHm6ehkW
kEDb/UOLSuqhnT4q4788YIOnV0gdSphtf6zzr/Wq2oSSDmXXpoMQzMTfh8nDTOqq
V4v6dhguorE5OhX2R02KB8dXU5KX+w==
=ZLyL
-----END PGP SIGNATURE-----

--HVTh6hOkYCQhRpl9--
