Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 1339E4202C2
	for <drbd-announce@lists.linbit.com>;
	Fri, 22 Dec 2023 13:37:35 +0100 (CET)
Received: by mail-wm1-f47.google.com with SMTP id
	5b1f17b1804b1-40d4a7f0c4dso1276855e9.1
	for <drbd-announce@lists.linbit.com>;
	Fri, 22 Dec 2023 04:37:35 -0800 (PST)
Date: Fri, 22 Dec 2023 13:37:32 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZYWDDPTI+ZFjhcCg@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2kfQp48/5Rdg0yCa"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.27.0
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


--2kfQp48/5Rdg0yCa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is drbd-utils version 9.27.0. There have not been any changes since
RC1. For your convenience the announce mail for RC1:

There is no too urgent reason to upgrade if things work for you, but
this release contains some bug fixes and features:

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

Regards, rck

Changelog:
9.27.0
-----------
 * adjust,v9: retry for diskless primaries
 * tests: sanitize env (e.g., TZ)
 * drbdmeta: dump and restore the members field

GIT: https://github.com/LINBIT/drbd-utils/commit/fdd9a4d603a9dc99d110d8bd0e288d7c0b6f586e
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.27.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

[1] https://lists.linbit.com/pipermail/drbd-announce/2023-December/000693.html

--2kfQp48/5Rdg0yCa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmWFgwcACgkQRgmezyI6
myL4FAgAkPig0guyoBXOL8xwWzqAUJeCpztHHau7rMSJr0ft97GuZwZnVqPfrHNa
liXh6GSH2/0BZ5kr0rFC3cpI2DvFKnw+JLSfIDpubmV38Wzyx6NfPa8WT36RpneI
aGkZIw/V26uzwbyKk0zwHakjBNUOyrHkrj04as2gM8DuFqAACTF3i9AL4MbzvtQ7
ZrthNbTJ81MnnwnufYl5w9SMq4m7EEJWQPitpe7vTxQIlnZ2xDQJSsUYb9Ym7CUc
jxRmMSd7JxWC5JtOnHJ1KTLFuzq08e3kBWQarEEdjXyAvbO+IZtMR8vHBxTvAJsW
WtXQ/p78z3LFQ92cRXPfJAgpQaA9QQ==
=U0z6
-----END PGP SIGNATURE-----

--2kfQp48/5Rdg0yCa--
