Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id A017A4210D9
	for <drbd-announce@lists.linbit.com>;
	Tue,  6 Sep 2022 14:58:15 +0200 (CEST)
Received: by mail-wr1-f46.google.com with SMTP id bj14so2060703wrb.12
	for <drbd-announce@lists.linbit.com>;
	Tue, 06 Sep 2022 05:58:15 -0700 (PDT)
Date: Tue, 6 Sep 2022 14:58:13 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YxdD5cRDseYFvidx@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IUTfRl54PKpUox6K"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.22.0-rc.1
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


--IUTfRl54PKpUox6K
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

This is drbd-utils version 9.22.0-rc.1. I assume this will get a
slightly longer RC phase to give users time to test the changes and give
feedback.

We deprecated named connections. This was a feature I assume not too
many users were aware of anyways, but it was possible to name
connections and if no name was given, the name of the peer was used as
default. This was for example then presented as "conn-name" in events2.
We have by now ways too many projects that assume that they can get the
peer's name from "conn-name" and would break if that is an arbitrary
name. Quite frankly, some of my tools/projects have that assumption as
well. If you have a custom name set for a connection it is now ignored,
an error gets printed, but the parser does not fail hard. In future
release I might change that to failing hard, so please get rid of named
connections now!

The second bigger change is that the rpm part now generates a
drbd-selinux sub package containing an updated SELinux policy. Depending
on the host distribution, that package might even become a runtime
dependency for the drbd-utils sub package. Users/downstream building
packages should add "checkpolicy", and "selinux-policy-devel" to their
build systems. The Debian (alike) world is not affected by that change,
as SELinux isn't that widely used (by default) there.

Please test!

TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.22.0-rc.1.tar.gz
GIT: https://github.com/LINBIT/drbd-utils/commit/04f894198b3c18dd5fc2759a24e9246eee0f7379
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/

Regards, rck

Changes since 9.21.0:

 9.22.0-rc.1
-----------
 * parser,v9: deprecate named connections
 * drbd-selinux: add sub package, minor packaging/spec changes
 * drbdadm: allow files from expanded glob to vanish

 9.21.4
-----------
 * drbdadm,v9: fix potential segfault in postparse
 * drbdadm,v9: fix sh-ip when set on connection/path

 9.21.3
-----------
 * drbdmeta: fix apply-al for bitmap sizes > 4GiB

 9.21.2
-----------
 * drbd-service-shim.sh: add secondary --force

 9.21.1
-----------
 * ocf: fix for dropped --peer option

--IUTfRl54PKpUox6K
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmMXQ9kACgkQRgmezyI6
myLeWQf9HUeu7EGSAI6dxcbenP0288nP6plnsiDja5rvr66G7XQyWsuprrE6R5Oz
KgK9c8IJbZBkY9JJfh/sMO37dQ2O28ZtMtLHodSBt+alOmpyx/FNjD1uLkiFVU1Z
E7wFzGONp5pC2QeNDiarFC5b2gTXVU4ALvAc0AC1pZzyQ0OmW7cMnC9L0K/VCdU+
CfhUFQtaUGjYd8HnrUjKgsflPCtFu3FAs9ggnxB2UxKpychjZ/eRTpKMy0uBvFKJ
nWU1Hpw8b5fzMu6Z9wmJwAI3agJuctlsl7Azp4IHfC9KF7y4ARXkchGoEA5lZ2Cq
JGqq5jQRl59B+nAZHysfFXhmolPR3w==
=ulbx
-----END PGP SIGNATURE-----

--IUTfRl54PKpUox6K--
