Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 649B14203DE
	for <drbd-announce@lists.linbit.com>;
	Tue, 12 May 2020 15:10:27 +0200 (CEST)
Received: by mail-wm1-f50.google.com with SMTP id e26so21673220wmk.5
	for <drbd-announce@lists.linbit.com>;
	Tue, 12 May 2020 06:10:27 -0700 (PDT)
Date: Tue, 12 May 2020 15:09:24 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20200512130924.GF1483@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Nq2Wo0NMKNjxTN9z"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils-9.13.1
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


--Nq2Wo0NMKNjxTN9z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

If you already updated to 9.13.0, and if you use crm-fence-peer*.sh, you
should upgrade, there was a bug in a regex. Thanks to Andreas Mock for
reporting it. While at it also fix a bug in the man pages.

Updated packages are already in our customer repos for amd64, ppc64le,
and arm64. I will updated the PPA when time allows.

Best, rck

9.13.1
--------
 * crm-fence-peer{,.9}.sh: fix regex
 * doc: fix c-min-rate

https://www.linbit.com/downloads/drbd/utils/drbd-utils-9.13.1.tar.gz
https://github.com/LINBIT/drbd-utils/tree/v9.13.1
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/+packages

--Nq2Wo0NMKNjxTN9z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAl66n/4ACgkQRgmezyI6
myLLzwgAnicZzMv5G3ISsYkPVjBT5EQ6tT95EK1kkUDBVlJrw0OHcEan25ilw52l
uqJISqRvpYqewcq/FhyrYaSpkhSPjVIGgIZHEU9BFevWYJgJykUfK9UomunW5Gb6
N31jpbK8x84tGRXIVA8U0KR8QSfuoGMJ4iT6pn7xO+PrdBm/+uBupadjXXktyR9u
9YwBMwMr8L47k+naPo2XNCaN80VfI/0bttrGOjZGTI8YXRQwaD8o5FSvjGuh76D6
Vh3OJG4EzvWhtKOCSd13cSp86LA4nQXeAlS/e0qL2iaE1iPBlebY/WiKpjBIPw6A
xHQIqXcD/Tgr8UlfWTEp4Q3aQ/VtTw==
=pySY
-----END PGP SIGNATURE-----

--Nq2Wo0NMKNjxTN9z--
