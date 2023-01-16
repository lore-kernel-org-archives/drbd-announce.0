Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id AA3514202D0
	for <drbd-announce@lists.linbit.com>;
	Mon, 16 Jan 2023 10:12:50 +0100 (CET)
Received: by mail-wm1-f42.google.com with SMTP id
	f12-20020a7bc8cc000000b003daf6b2f9b9so2127330wml.3
	for <drbd-announce@lists.linbit.com>;
	Mon, 16 Jan 2023 01:12:50 -0800 (PST)
Date: Mon, 16 Jan 2023 10:12:48 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Y8UVED1SJfY9R3AU@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v8bqR0r8jkg2Hya9"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.23.0-rc.1
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


--v8bqR0r8jkg2Hya9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is the first RC for version 9.23.0. There are no big changes,
mainly smaller features and fixes that accumulated and would be good to
get out because some users and customers wait for it, please see the
short Changelog here for details or the git commit messages for more
details.

If we don't find any bugs, the final release will be in about a week
=66rom now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/b787a48884d0da27d9285a4777=
0b31c62c8198f4=20
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.23.0-rc.1.ta=
r.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/

Changelog:

 9.23.0-rc.1
-----------
 * drbdadm,v9,floating: fixup fake uname for 9.2.x strict_names=3D1
 * drbdadm,v9,parser: fixup globs, also rm GNU libc specific extensions
 * drbdadm,v9,parser: allow via outside-address for NATed peers

--v8bqR0r8jkg2Hya9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmPFFQ0ACgkQRgmezyI6
myKBwggAsbGX0YvpwkTKEpv6T9GeVEAwS+xrKJCz3V2nDbYpAkZto5vuvEHpr03P
5Fq3cONeB7GVK2tunNYjIQWm4QWnYVRKl155DXIRfXitZmR/TK6zCWHuMOfpKsbF
mZtPusk5YpQBCzkeAM1Rm5Re1AsodgUXNTYBr8VEcPKgdgsuAYiFJslTdUh+TzE4
72PUjZe8DAK9uoQSJ0CqhDLLq0Mm0AtIJYFLfNKbUFLRNnQYVv3dwfFpORnOJnyn
4w5eno69fFcDgjSMhjLBRHdmb8RlsIhtx1f5W6Da9i65c/ll7wLy+97G4gl9tZVa
GEDLYFnQ1Hs7RRJdU7xAMye8imzNcA==
=ZEzv
-----END PGP SIGNATURE-----

--v8bqR0r8jkg2Hya9--
