Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
	[209.85.208.169])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2303F420370
	for <drbd-announce@lists.linbit.com>;
	Wed, 26 Jul 2023 10:01:45 +0200 (CEST)
Received: by mail-lj1-f169.google.com with SMTP id
	38308e7fff4ca-2b701e41cd3so93857001fa.3
	for <drbd-announce@lists.linbit.com>;
	Wed, 26 Jul 2023 01:01:45 -0700 (PDT)
Date: Wed, 26 Jul 2023 10:01:43 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZMDS5x13AQeIvm0k@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KI5+pZ0yKanaMI4Z"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.25.0
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


--KI5+pZ0yKanaMI4Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is version 9.25.0 of drbd-utils. There is no too urgent need to
upgrade if the latest stable release works for you. For your convenience
the summaries of the two RCs:

The most important new feature is a major update of drbdmon that is now
able to interact with resources (i.e., run drbd-utils commands on them).
The rest are improvements like putting lock files to a separate
directory and some SELinux improvements. drbdmeta got some new
subcommands to dump/hexdump the superblock which will be needed in the
future for LINSTOR.

There was one "breaking" change between RC1 and RC2: The format of
"drbdsetup show --json" for meta-data information changed. For indexed
external meta data which basically nobody uses anyways we generated a
key/value pair like: '"/path/to/dev/": 3'. This certainly was not on
purpose and we now generate:
"meta-disk": "/path/to/dev",
"meta-disk-index": 3

Note that "show --json" (in contrast to "status --json") always only was
as good as we needed it for our internal CI pipelines. Given the
basically "unparsable" key I really assume nobody uses the old broken
format.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/bb297231c27690a31bf527e8bf77dca1fc2ce268
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.25.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
9.25.0
-----------
 * drbdmeta: {hex,}dump superblock
 * drbdmon: major rewrite
 * build: gcc v12 cleanups
 * misc: put locks into separate dir
 * selinux: add fowner fsetsid, they dropped a global noaudit rule
 * drbdsetup,v9,show: fix meta disk format for json
 * drbdmon: various updates
 * build: fix RHEL6 spec builds

--KI5+pZ0yKanaMI4Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmTA0uAACgkQRgmezyI6
myLgtQf9Gy+9r5rYchD2MfevOM75/WSR4maQxnnWSZvjle5EnrkC1GgMGYM2l4K4
PQKvCMF2JX8Ejl9EOI5OYqTy9PVjcRb7s7E7RXKxXMsyveWGdq1qoUI4I3jrYkOt
DqLqQa1exsqXIJAJrZMTNbmeUMU7j1Flrjukqr8qetebhzevBKb7n6wKwfw6l/CK
84u9aUdyMI4zVE74kEytgWCclDteUWGxadMjoy0t3A4fbzgoQwmz4Urfimc7MR/7
7NE4JJotP11CG44WcntepFmAJUCEjgsfzv61kYtq2x8NHthi7KPq/OMcCqER8cCz
4q6rasSSU7fSASbpMO14uSIWvqWNTw==
=yZJr
-----END PGP SIGNATURE-----

--KI5+pZ0yKanaMI4Z--
