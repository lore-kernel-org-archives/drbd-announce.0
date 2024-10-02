Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
	[209.85.167.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 1C90F4200DC
	for <drbd-announce@lists.linbit.com>;
	Wed,  2 Oct 2024 14:22:45 +0200 (CEST)
Received: by mail-lf1-f53.google.com with SMTP id
	2adb3069b0e04-53988c54ec8so6012380e87.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 02 Oct 2024 05:22:45 -0700 (PDT)
Date: Wed, 2 Oct 2024 14:22:42 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: drbd-reactor v1.5.0
Message-ID: <Zv07EvwGc9AVwBJ7@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="e8qcowBnUcYpB56/"
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


--e8qcowBnUcYpB56/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the final version of drbd-reactor 1.5.0, we have not found any
issues in RC1. For you convenience the RC1 announce text:

There are smaller fixes and improvements all over the place, the
important changes happened in startup of the daemon and the promoter
plugin:

We have customers that have hundreds of promoter resources managed by
drbd-reactor. So far every instance on startup wrote their systemd
target units and then called `systemctl daemon-reload`. That takes some
time and in sum systemd might kill the drbd-reactor service because it
did not start in time. We now call daemon-reload only once, and we
improved sd_notify(3) communication between reactor and systemd. Startup
with lots of plugins should now be faster and timeouts should no longer
be a problem.

Please test, if we don't find any bugs I will do the final release in
about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/41f11c14c901442981df80ddc8d59a0ca6b0caf0
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.5.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
[ Lars Ellenberg ]
* promoter: fix Description override to use %N not %p

[ Roland Kammerer ]
* doc: fix start-until procedure
* promoter: check for '/' in service names
* ctl: improve evict error message
* build: add sbom files to tarballs
* build: rm packaging targets
* promoter: add trace logging around adjust
* promoter: systemctl daemon-reload only once
* promoter: use EXTEND_TIMEOUT_USEC in sd_notify
* promoter: use Stdio::null() for systemctl commands
* all: stop using plugin::system and use Command
* daemon: use Stdio::null() for stdin
* systemd: improve notify

--e8qcowBnUcYpB56/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmb9Ow8ACgkQRgmezyI6
myIysAf+KFYWaZB8yhb8Qhb3pV5qHA7EtYh4CZBCBWiZXT4yOtXwwjbMIgvBckdW
62H9TLHHnFoQCCE5UFwCST3+dhcaOx136ULwLxAvHxJYW6NY0XMv7xi0KwwK7IGV
BQ8KETIKJBz5Ib5WynND7wsU58xuksdkHEmWcAH/f0mfecs7BJx5OqZFWyhLyEQf
IJE08YNQSeeWAONM51yRv9yt7NMK7t+/llAAbtMccG2t2//4+kqoxyT8gEg3InWU
75UwD/295UAWUjN+54YhGScCzkDXkLSbkVPDwukrJ7OeG8UvUPaW5188AEnYViv4
LjEGFpEo+brOV55PXht5VKVj8GmndQ==
=C85K
-----END PGP SIGNATURE-----

--e8qcowBnUcYpB56/--
