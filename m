Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id CA6624201C3
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 Jan 2023 13:11:42 +0100 (CET)
Received: by mail-wm1-f43.google.com with SMTP id l8so11274876wms.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 Jan 2023 04:11:42 -0800 (PST)
Date: Tue, 24 Jan 2023 13:11:41 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Y8/K/R8EA9x3PQz2@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Sa38LhsuZEwHGLJl"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.23.0
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


--Sa38LhsuZEwHGLJl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the final version of drbd-utils 9.23.0. There are no big
changes, mainly smaller features and fixes that accumulated and would be
good to get out because some users and customers wait for it, please see
the short Changelog here for details or the git commit messages for more
details.

The only change between RC and final was some cosmetic type changes that
help building on Alpine/musl libc.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/4f7d26a69e20e826bc8eb70822a61fb476c020aa
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.23.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/

Changelog:

 9.23.0
-----------
 * drbdadm,v9,floating: fixup fake uname for 9.2.x strict_names=1
 * drbdadm,v9,parser: fixup globs, also rm GNU libc specific extensions
 * drbdadm,v9,parser: allow via outside-address for NATed peers

--Sa38LhsuZEwHGLJl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmPPyvkACgkQRgmezyI6
myLkXAf7BMaZGzyUkPRmoYtULcA9Z6Tu8dQRS0oHRW9h7xhHR+gFkb8UWQcFjQLg
yW8X929oe97GUTvlAQN5KsTCPbZ8Eqy8QCmadcfU/0NlspnbTPepL/SIPmq5ztXn
fZGJK9SiDG8tISmkUPM/BrAuM2CUEIwHpFltllyJB5q3rw6IzXKE/lfl5UFFSc9g
8dCIHiQBDlbputU2jR7DxsR2s1f75KIoT3QIGqcKX0wWyBLpsv762VpaM+z7BA8X
yCMFYRbRWaXQsN+qea4CCaifmdO9novUCgEldr9JQxoQr0dT3h76GkSNc699g0eE
lZ5IaRdIGKP1/8l9H2Dp8m8XQBVzRQ==
=1FlI
-----END PGP SIGNATURE-----

--Sa38LhsuZEwHGLJl--
