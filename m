Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 9052A4203B5
	for <drbd-announce@lists.linbit.com>;
	Mon, 26 Apr 2021 10:56:07 +0200 (CEST)
Received: by mail-wr1-f49.google.com with SMTP id h4so45910897wrt.12
	for <drbd-announce@lists.linbit.com>;
	Mon, 26 Apr 2021 01:56:07 -0700 (PDT)
Date: Mon, 26 Apr 2021 10:56:05 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210426085605.GH1935@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.17.0
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

Dear DRBD users,

this is the final release of drbd-utils. This release contains
some bug fixes that should not affect too many people (like a 8 year
unnoticed bug in drbdmeta that only triggers under certain conditions).

A change that happened between RC1 and the final release:
- drbdadm sh-ll-dev is now allowed for diskless resources. It prints
  "none" in this case. This is similar to a change in "dstate" some time
  ago and while it changes existing behavior, it is considered a bug
  fix.

The noteworthy additions are:
- drbdsetup events2 --poll now also works without --now, so also in
  combination with for example --full. This is needed for drbdd (which
  will be renamed to drbd-reactor soon). The events stream now also
  contains backing device information.
- drbdsetup invalidate(-remote) now allows a bitmap based resync after a verify.
  "--reset-bitmap=no" allows triggering a bitmap based resync after an
  online verify operation found some out of sync bits.
- With Debian Bullseye I removed the dependency on dh-systemd. If you
  build for very very old distros and you build imaged don't contain it,
  you might need to adapt.
- The recommends on "mail" was dropped as it only might be used if you
  use the example handlers we provide. We assume if this is the case,
  one tries their setup at least once, but there is no need to pull in a
  complete mail setup via that dependency.

There have also been some changes to release naming (you might already
know them from the kernel module part starting with the 9.1 series).
Crafting a release now might require extra tools. If you use the tarball
we provide on our web page you should be fine, but if you decide to
create release tarballs from git, you might need to change. More details
in:
https://github.com/LINBIT/drbd-utils/commit/733ab29dcc247835abdd26db47947d5f7280eca6
Also as a heads up: I might decide to remove all the "rpm"/"deb"
related targets from the Makefiles soon. It is just too much effort to
consider all of the possible situations like building from git, building
a tarball form git, packages from git, packages from the tarball, a
tarball from the tarball and then a package... Again, I expect that for
99.99% of our users our tarballs are good enough, but if not, you will
be on your own soon, as well if you are building packages. People doing
that should know how to do it.

Please test now. If nothing unexpected shows up I will do the final
release in about a week from now.

TGZ: https://linbit.com/downloads/drbd/utils/drbd-utils-9.17.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/
GIT: https://github.com/LINBIT/drbd-utils/commit/b63a36e40ae9f29ade26d4fed9473ef88e3ca6c0

9.17.0
--------
 * drbdadm,v9: fix dstate for diskless volumes
 * build/release: use lbvers.py
 * drbd-attr: don't leak fd to drbdsetup
 * doc: various fixes and additions
 * drbdsetup,events2,v9: add backing_device
 * build,Debian: rm dh-systemd dependency
 * drbdsetup,events2,v9: fix --poll regression
 * drbdmeta: fix bug with ALs with small final extents
 * build,Debian: rm mail recommends
 * drbdsetup,events2,v9: allow --poll without --now
 * drbdsetup,invalidate: allow bitmap based resync after verify
 * drbdadm,sh-ll-dev: change output to "none" if diskless

--IS0zKkzwUGydFO0o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmB+qEgACgkQRgmezyI6
myIJmQgAor5DqNk2m24U7lUSeDQ8rLee6meJDaXdQ8c38gJXys6uXMAsi6h5FMDQ
X4evpBZPZ56JX5GuV71g6IfwqflPdg4P3irZSW5+jyCoxyExKNfVPaCoXTpmqLDu
ksp9g8CVyvmaVycbdmyn16F0lwN48Ukk8k952UJP61NZY+aEI3g57m9h9Ov/FNUA
1py9MiyTzIrUIkx51SVKln4bzAdO1c28mvj+NwtIwglTwDAVP5awj2OtyR5EADw0
cRGm8sf/zFYSfvpsRUoIur4HaT8I30Xtz0UkMaksbBRoglhjx5zltthPcgnh/8F0
q86IIbgj40KsRqu3NivqXL43Rwy5yw==
=R22f
-----END PGP SIGNATURE-----

--IS0zKkzwUGydFO0o--
