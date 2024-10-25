Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
	[209.85.167.46])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 43F6E420358
	for <drbd-announce@lists.linbit.com>;
	Fri, 25 Oct 2024 12:47:25 +0200 (CEST)
Received: by mail-lf1-f46.google.com with SMTP id
	2adb3069b0e04-539fe76e802so2407676e87.1
	for <drbd-announce@lists.linbit.com>;
	Fri, 25 Oct 2024 03:47:25 -0700 (PDT)
Date: Fri, 25 Oct 2024 12:47:19 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: linbit-keyring
Message-ID: <Zxt3N5qWG6DI9PED@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rJlMnm/OeFL/f3RN"
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


--rJlMnm/OeFL/f3RN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is meant for our customers as well as FLOSS users that use any of
our public repos (except the Ubuntu PPA).

The short version: There is now a linbit-keyring package with our old
key and our new key and we will start using the new one on November the
15th to sign repo meta data. As the keyring contains both keys you can
install that package now and change your repo config (if necessary),
then you don't even notice the upcoming changes.

Details are described here[1], if there are any questions, please ask.

[1] https://kb.linbit.com/linbit-keyring-software-package

Regards, rck

--rJlMnm/OeFL/f3RN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmcbdzQACgkQRgmezyI6
myJzrwgAnvX9JeS+c9XFyP47CCK3B2+sGsDFo5gpx7AK+F2fNs/PyXCY++Fi7PDJ
rSxBZqUUJqX3Tf4fe1YH5RtsclxjQrdTx95C72m9vjWdbJwTW2dcem5s3j9Ee7uE
fLbaZymI2vwtmKGVsxZWIBcGREGtOTzoSXQlJhgF3eern930KG7IUJxsUIDZya8R
b2PVCVGgGx8+CblVWFk6T0MVQNcT+Vq+k5DDINulVRf+03mGGeTUYTxFdYzdtH1z
2Uv9owZZCBgjFfWY4oagQ8+K2OM0O1EpZ7rX3+3rKzeg4W1vRHBJFboN/RHGJwk3
nbc5tzsK9tU00NMuXgpif/UaXyaqfg==
=CB7O
-----END PGP SIGNATURE-----

--rJlMnm/OeFL/f3RN--
