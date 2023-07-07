Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 732604203A5
	for <drbd-announce@lists.linbit.com>;
	Fri,  7 Jul 2023 13:54:23 +0200 (CEST)
Received: by mail-wm1-f48.google.com with SMTP id
	5b1f17b1804b1-3fb4146e8fcso15367245e9.0
	for <drbd-announce@lists.linbit.com>;
	Fri, 07 Jul 2023 04:54:23 -0700 (PDT)
Date: Fri, 7 Jul 2023 13:54:21 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZKf87Qng3iq556X1@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mfxpwM5yCSewlwnc"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.25.0-rc.1
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


--mfxpwM5yCSewlwnc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is RC1 of the upcoming drbd-utils version 9.25.0. The most
important new feature is a major update of drbdmon that is now able to
interact with resources (i.e., run drbd-utils commands on them). The
rest are improvements like putting lock files to a separate directory
and some SELinux improvements. drbdmeta got some new subcommands to
dump/hexdump the superblock which will be needed in the future for
LINSTOR.

The new drbdmon is certainly worth it, but there is no too urgent need
to update. Never the less, please test, I will release the final version
in about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/5fd3835bf678a88530d8893416f596fceb7645e3
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.25.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
9.25.0-rc.1
-----------
 * drbdmeta: {hex,}dump superblock
 * drbdmon: major rewrite
 * build: gcc v12 cleanups
 * misc: put locks into separate dir
 * selinux: add fowner fsetsid, they dropped a global noaudit rule

--mfxpwM5yCSewlwnc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmSn/OkACgkQRgmezyI6
myL2WAf/dAktwYRyGuvLKeG6MHdVWnmhGYVpkBz0seb0VF/L01LrptoTbVW9I/Iy
ImW/JtfMew9yXtp2PkM13VwMn+e8TAWi+ndiL1SUmmnx1eIIg7kcfNOPSpgy5xEX
uNQAuXVskCbgcdcL6pZL5oa6Mgy00BOdJ+Fsco8fEGdY4/q7IdShaFbQkw6me52P
nJT0moKuVMyIDAVSxPotoIScTnSrXAruTqajRx7MqSVbW5/HmH3Jco6hXhlEBB5l
CTGAKDXtz3ZuU2luen9oQfSZ7SXOJeQn8Rsyk9SUWAKj20nyaDUNpqEMZ94bGIWT
wtKkxKLwdoYaGEQPCx8GKuo4mZd5bQ==
=DnjT
-----END PGP SIGNATURE-----

--mfxpwM5yCSewlwnc--
