Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 49C04420336
	for <drbd-announce@lists.linbit.com>;
	Mon, 31 Jan 2022 09:47:26 +0100 (CET)
Received: by mail-wr1-f51.google.com with SMTP id h21so23872403wrb.8
	for <drbd-announce@lists.linbit.com>;
	Mon, 31 Jan 2022 00:47:26 -0800 (PST)
Date: Mon, 31 Jan 2022 09:47:25 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YfeiHRZav0sRaQo3@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="A08yVjd35fIDJdGE"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.5.3
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


--A08yVjd35fIDJdGE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

This is version 0.5.3 of DRBD Reactor. It fixes a bug where under
certain conditions information about peer disks and paths got lost on
connection updates. As this affected the core in theory all plugins that
use that information are affected as well. The bug was found by a
customer in the UMH plugin for example that did not trigger on peer
device changes. All users should update. While fixing this bug I also
saw that some environment variables set by the UMH plugin did not match
their documented names. This got fixed.

Some more details: Reactor uses the (drbdsetup) events2 stream and
updates objects on DRBD event updates. Usually the information in
events2 is 1:1 what Reactor saves in its internal structs. If we get
an update (a "change event" in events2 speak), we just overwrite the
existing struct with the new content. What was overlooked is that the
connection struct not only holds its own information, but also the
structs for peer devices and paths. So on connection changes peer
devices and paths got overwritten with their default slices of structs
which are empty. This is now fixed, existing peer devices and paths are
copied to the update.

GIT: https://github.com/LINBIT/drbd-reactor/releases/tag/v0.5.3
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.5.3.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Regards, rck

Changelog:

[ Roland Kammerer ]
* core: preserve pds/paths on conn updates
* umh: fix env for peerdevice state

--A08yVjd35fIDJdGE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmH3ohkACgkQRgmezyI6
myJNkQf/eC7oBuXncQ/oFtGP8TmIi1kJzMdvkXnCiBUsGN5LEyHRg1mQVD6AkUnf
+t3cfAM17ZktEw7rHs7Aic01+pMbNKMz2Gbk0VKnR8NkgKHEbHcBHJ734Qs8INlX
JohrJ22bx7daHuHDcU7vCpNC9F3Zd08o6TsD6F4sVKLuxh6hm2wRPLOgl6leppdm
4DhlC53Sclwc5C3InF9K0lX6xKQhxHB4yj8Zz4Hh8RltCpvtgmSHcmN5Lo8U0IZj
9CugboWDjQKPiPzdz+GHsaQiTT5tFOQmDih84jYnwDEaXjnOJPf8f3JJWh/gwYQ9
IotqGGQwKdq8eY7eeZEdhbw/3RP/LQ==
=K6RR
-----END PGP SIGNATURE-----

--A08yVjd35fIDJdGE--
