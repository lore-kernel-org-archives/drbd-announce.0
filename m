Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
	[209.85.208.174])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E655F16064E
	for <drbd-announce@lists.linbit.com>;
	Tue, 12 Aug 2025 12:26:20 +0200 (CEST)
Received: by mail-lj1-f174.google.com with SMTP id
	38308e7fff4ca-32f1df58f21so52011361fa.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 12 Aug 2025 03:26:20 -0700 (PDT)
Date: Tue, 12 Aug 2025 12:26:18 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-utils v9.32.0
Message-ID: <aJsWyl_Hv51IP2Hk@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IjdmHvUHb2cuMpmI"
Content-Disposition: inline
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


--IjdmHvUHb2cuMpmI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

This is drbd-utils version 9.32.0. We did not find any issues in RC1.
The RC1 announce for your convenience:

this is RC1 of the upcoming drbd-utils release 9.32.0. This is probably
one of the bigger releases in the last years. It contains various fixes
and improvements. All in all if everything works for you as of now there
is no too urgent need to upgrade, projects that depend on the
improvements (e.g., LINSTOR) will pull in the new version as a
dependency anyways. For packagers it might be interesting that we
deprecated some configure options: --with-{distro,rg-manager,heartbeat}.
We also removed ocf.ra at .service and ocf.ra.wrapper.sh. These have
been re-written in Rust for a long time and can be found in the
drbd-reactor project. That should be it with the "breaking" changes.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/74187fc01c6993b5ff40b797976c782d87c504d6
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.32.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
9.32.0
-----------
 * drbdsetup,show: show device config
 * spec: obsolute drbd-xen; major cleanups
 * doc: various fixes and improvements
 * drbdadm: allow "dump minor-N" plus sh-list-config-file
 * drbdadm: aggregate multiple --config-to-test
 * drbdadm: introduce drbdadm sh-list-adjust
 * build: deprecate --with-{distro,rg-manager,heartbeat}
 * drbdadm,adjust: detect and drop options unsupported by kernel
 * se-linux: fix policy
 * drbdsetup: add compat mode for DRBD8
 * drbdmon: various fixes and improvements
 * drbdsetup: allow to override genl rcvbuf size
 * drbdadm,adjust: improve adjust for diskless primaries
 * drbdadm,adjust: adjust unconnected connections first
 * scripts: rm ocf ra shell wrapper

--IjdmHvUHb2cuMpmI
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmibFsYACgkQRgmezyI6
myLZAAf+P4ngCsjF1QHLvVQCgVXMOZTx/rzIbSWrw4a75p4CxNuam24pSVEGcDfg
8X+Qx0cogiu+qwwVSRT/SASSAqSQ6AEqYo8lqTcXLUVJzDN7ZRWyJ7N5U8uDAyHy
x5CxB1k5AhD1ScIZbUI1wPJcF66THVNY/iCVxk/g15SohRWAL/FR0O4lzAt9cKm5
0msTg3vBt5kR6rpMdYocByuwJ8rAa2xyIAhIuBUBoHYUD25VPqJfvhiHVjGcsPc7
EvgdlwxV1YDW3mWMakmO3jmA0eNC12wI0ElAr1enxfM4g4HVI1eo0e+UZWbg+K+S
vtx33JzrC0CtNjzdRKf0hkDmrZyzPw==
=Pp96
-----END PGP SIGNATURE-----

--IjdmHvUHb2cuMpmI--
