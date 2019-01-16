Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 501A7103B4D0
	for <drbd-announce@lists.linbit.com>;
	Wed, 16 Jan 2019 15:20:32 +0100 (CET)
Received: by mail-wm1-f51.google.com with SMTP id m1so2167344wml.2
	for <drbd-announce@lists.linbit.com>;
	Wed, 16 Jan 2019 06:20:32 -0800 (PST)
Date: Wed, 16 Jan 2019 15:12:15 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20190116141215.fg7enk7x3gjlguab@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="od5nr2sk54xjjgmp"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils-9.8.0
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>


--od5nr2sk54xjjgmp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi DRBD users,

This release contains mainly "infrastructure changes", but also contains some
bug fixes. These fixes are pretty specific (mainly stacked DRBD9 setups, you
want to avoid anyways), so there is no urgent need to upgrade immediately.

Highlights include:
- We now use proper po files for i18n. This has consequences for
  packagers. In this case it helps our Japanese translators, but it
  might be useful for other languages as well.  Regenerating man pages
  will require "po4a". If you build packages from release tarballs, you
  do not need this dependency. Man pages are included in the tarball,
  and there is a configure option named --with-prebuiltman. The spec
  file also takes a "--with prebuiltman".  See the rpm Makefile target.
  One should never build packages from the source tree (always build a
  proper release tarball first), but if you want to build Debian
  packages from a git checkout, you want to set
  "DEB_BUILD_OPTIONS=noprebuiltman" to trigger manpage generation. You
  do not want to do that, you want to build a release tarball first.

- Regression tests: While drbd-utils are implicitly tested by lbtest[1],
  we can do better and integrated a basic regression test suite. If you
  have old res files that segfaulted or triggered bugs, I'm interested
  in these! The suite uses "clitest". If it is installed at ./configure
  time, "make test" runs the tests, otherwise "make test" is a NOOP. As
  always with software that was invented after the 80s, "enterprise
  distributions" do not contain it, so I did not make it a hard
  dependency.

- There have been several fixes regarding stacked DRBD9 setups. These
  were triggered by customers that use this kind of setup for a reason.
  In general you really want to avoid stacked DRBD9 setups.

- "Breaking" changes: The output of drbdam --dry-run does not contain
  trailing white spaces any more. This was a bug nobody cared about, but
  it makes matching output in the test suite ugly/difficult. So if you
  did depend on pixel perfect output of dry runs, adapt. :-). The second
  change is that drbdsetup show --json (not to be confused with
  drbdsetup status --json) generated a duplicated key ("disk"). Fix that
  by renaming one of these to "backing-disk". Unfortunately this never
  triggered a warning/abort while I implemented it and used "jq" as
  "linter". As this was developed for the LINSTOR test suite, I assume
  this was never really used in the wild anyways.

As usual, I hope this release does not destroy your kitten factory.

9.8.0
--------
 * i18n: use propper po files
 * v9,stacked: allow node-id in stacked section
   but one should not use stacked with v9 anyways
 * dry run: remove trailing white space
   This eases test integration.
   Mentioned here because strictly speaking output changed.
 * regression tests: if at ./configure time "clitest" is detected,
   one can run tests via "make test". Target is a noop otherwise.
 * drbdsetup,v9: fix wait-for (same patch as in 9.7.1)
 * doc,v9:  require-drbd-module-version-*, events2 --now --poll
 * drbdadm,v9: allow stacked-on-top-of sections without address
 * drbdadm,v9: bring up only the correct paths in multi-site scenaios.
 * drbdadm,v9: fix parser segfault if node-id is missing.
 * tests: require that they pass on release.
 * drbdsetup,v9: fix key collision in show --json.

https://www.linbit.com/downloads/drbd/utils/drbd-utils-9.8.0.tar.gz
https://github.com/LINBIT/drbd-utils/tree/v9.8.0

[1] https://github.com/LINBIT/lbtest/

Regards, rck

--od5nr2sk54xjjgmp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAlw/O7kACgkQRgmezyI6
myLi1wf/RjouaLjY+lU/0XrojEbmodN9qdKt/jLdq3SogWDYRqoa+Z7FtJwQHWdP
sh6LpmbDzD7mA73ujAMsGjkk6R0sLAbb/ykV76EFFihzwxBoL1htigyvzZ+QuFdg
20Sda+hYNjZs5OK5aAODcLtu3t/m0UxZ95sUnWmfN+g8u+4HfhCjm/FinG29cAJ8
kK+uZNDzqwzIodyvJRndCi9qnWAZaTqJG12xNHGLWTrvLVIsl+APr3Pl7I3zlIII
sRCN6bq/YyEyZE4vERT24dgu4lDBHJ39JNLyjklw9ZeHn2d3ArdyXwDbg5xyGZ8G
Qqp/+OtFuzpe70LET+9DLl0mGibLvQ==
=Zoc7
-----END PGP SIGNATURE-----

--od5nr2sk54xjjgmp--
