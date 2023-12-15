Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 5FB1342021F
	for <drbd-announce@lists.linbit.com>;
	Fri, 15 Dec 2023 13:42:45 +0100 (CET)
Received: by mail-wm1-f48.google.com with SMTP id
	5b1f17b1804b1-40c19f5f822so3149665e9.1
	for <drbd-announce@lists.linbit.com>;
	Fri, 15 Dec 2023 04:42:45 -0800 (PST)
Date: Fri, 15 Dec 2023 13:42:41 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZXxJwf8kbR0WjNfK@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rJlGXrcsGixEMwcW"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.27.0-rc.1
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


--rJlGXrcsGixEMwcW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is RC1 of the upcoming drbd-utils release 9.27.0. There is no too
urgent reason to upgrade if things work for you, but this release
contains some bug fixes and features:

"adjust" got improved for diskless Primaries. So far if the
configuration changed in a way that for example the (only) connection to
a diskful node would be deleted and another connection to another
diskful would have been established, the change failed because the old
connection was removed first. But this can be a valid change and now the
first failure removing the connection is retried after the other
connection is established.

Our tests (i.e., the script that executed them) did not sanitize its
environment, which was responsible for test failures if the user running
the tests was for example in an area with a '-' time offset. This should
now be fixed.

The third change are the bits needed for the improved quorum handling in
the upcoming DRBD release as announced here[1].

Please test. If we don't find any bugs, the final release will be in about a
week from now.

Regards, rck

Changelog:
9.27.0-rc.1
-----------
 * adjust,v9: retry for diskless primaries
 * tests: sanitize env (e.g., TZ)
 * drbdmeta: dump and restore the members field

GIT: https://github.com/LINBIT/drbd-utils/commit/45b17aa0217007b122e16143e47b699fc502d489
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.27.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

[1] https://lists.linbit.com/pipermail/drbd-announce/2023-December/000693.html

--rJlGXrcsGixEMwcW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmV8SbwACgkQRgmezyI6
myLOsAf/bCJc2Zeztvk6P8DbRTYiECzPYaVV3xQMYAhMryCaKUkfeGOenawUw4HV
SK74xx5RXsZB2gKK05salKhL1XwIHEqK9vie8Q2OrsBwuQqDSKd2k/sSdMQuTXSb
9dPDiQ+qjqfM0iLHhMXRHznt0SZUOHurl8O+iwKrvK2MjmpUqqtfcQPxoYEypjxO
m7d/9CmDMeyH3L0HKqiaWo+KqfQ4PU1R5rbeIerXkE+8U0rxR88NjWiS3dKq7sm7
juG+dWLk2CITIiaOErX2vT4o3CIQrD/bmP8EUjZG303f69Jf7C8blA79ixpyFJXL
noqSLycguWPE7XULRQ3eRc2CugtGgQ==
=f9Nf
-----END PGP SIGNATURE-----

--rJlGXrcsGixEMwcW--
