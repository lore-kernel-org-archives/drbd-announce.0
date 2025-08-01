Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
	[209.85.208.181])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 6B4E116090D
	for <drbd-announce@lists.linbit.com>;
	Fri,  1 Aug 2025 15:53:09 +0200 (CEST)
Received: by mail-lj1-f181.google.com with SMTP id
	38308e7fff4ca-33250b6be11so2565691fa.1
	for <drbd-announce@lists.linbit.com>;
	Fri, 01 Aug 2025 06:53:09 -0700 (PDT)
Date: Fri, 1 Aug 2025 15:53:06 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-utils v9.32.0-rc.1
Message-ID: <aIzGwoiadXLQasEV@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2NeZanBSp1/vArpF"
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


--2NeZanBSp1/vArpF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is RC1 of the upcoming drbd-utils release 9.32.0. This is probably
one of the bigger releases in the last years. It contains various fixes
and improvements. All in all if everything works for you as of now
there is no too urgent need to upgrade, projects that depend on the
improvements (e.g., LINSTOR) will pull in the new version as a
dependency anyways. For packagers it might be interesting that we
deprecated some configure options: --with-{distro,rg-manager,heartbeat}.
We also removed ocf.ra@.service and ocf.ra.wrapper.sh. These have been
re-written in Rust for a long time and can be found in the drbd-reactor
project. That should be it with the "breaking" changes.

Please test, if we don't find any bugs the final release will happen in
about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/529d38c7bfb1185280e7e590eb2344db06db6a95
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.32.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
9.32.0-rc.1
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

--2NeZanBSp1/vArpF
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEyBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmiMxpYACgkQRgmezyI6
myKMVgf4hcLrUVlzW+qJXaMsF9QsNv6/O3p8o/xTUZEmjiaclZsJ9F5MIdqNOjBZ
GVTrRrLx0YkKdTFxTSc8VCMc+DEaz8TaktRW7llYH5BV0ox4fjqsRBoDcV/KAol5
aOyxSTfTNIl+aT73tfjcacEp3+WmxpFUTbGdN1K52pHVbJLvTpd9dzq9PnZI7idj
XF6LUGdkQ2ZhypMV9RoTlblIB0VX41C0O2rJyevS1jZEMpequep6r7LHmgJ1LzM2
mYkqYFr+GHL7F1rb6XwWRkIwT3UzgDkteOSLuPk5usvV0/+T339G9P9CfJ4ksx8Q
5uN+OwHrcNeQYuHgajxsjnpv1S0l
=TlAj
-----END PGP SIGNATURE-----

--2NeZanBSp1/vArpF--
