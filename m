Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B7786420206
	for <drbd-announce@lists.linbit.com>;
	Fri, 12 Nov 2021 13:02:46 +0100 (CET)
Received: by mail-wr1-f54.google.com with SMTP id d24so15160357wra.0
	for <drbd-announce@lists.linbit.com>;
	Fri, 12 Nov 2021 04:02:46 -0800 (PST)
Date: Fri, 12 Nov 2021 13:02:44 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20211112120244.GD1745@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1yeeQ81UyVL57Vl7"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.19.1-rc.1
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


--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

This is the first release candidate of drbd-utils 9.19.1.

There is no too urgent need to update for most users.

The main fixes and improvements are that this version brings is that it
fixes a bug for our customers that use DRBD-Proxy and want multiple
connections to share a proxy node; that this version now also builds on
the upcoming RHEL9.0; and that we introduced some further nice systemd
helper. This helper can be used to demote a DRBD resource or escalate to
a failure action, therefore its name "drbd-demote-or-escalate@.service".
While of course it can be used stand-alone, the main purpose is
drbd-reactor::promoter, which can then properly fail-over to a cluster
node if "DRBD is stuck" (because there are still openers from another
service for example). But that is something for the soon to follow
drbd-reactor release.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/tree/9.19.1
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.19.1-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--1yeeQ81UyVL57Vl7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmGOV+AACgkQRgmezyI6
myLnWgf9Hn0x0g/Gpv0/1GoAAEM63C3idTZi4zRx0HyCysIYhuQqrG5RRsvEE9kn
QCLjbU+5G4S/fs3X2c/etUkF5UvXWHherJKrc7z7li1VdRyAwmyIsuzxWk9GZTYY
Em7P75ukfnfZYnPdanJK//CAJRv4QJlakJNPPGJuk5rQM4rehcM9CiWoef1hFaDA
mUpey2npMC0F5T+koW77qe39Jv9d2fDybljChpmg/SOVl2P3MeVxfdgxFsm7hX8F
SE7b3KeozE3Ia2Keaw4bqwdvhKn2dmtmNLj6J9T2JUyOqS5MHcUHIXgcmqOLomFQ
xw9TpU8iYTPtloWd6jLWBdKAVC2VmA==
=epaw
-----END PGP SIGNATURE-----

--1yeeQ81UyVL57Vl7--
