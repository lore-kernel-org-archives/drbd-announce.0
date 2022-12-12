Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 6A9044202FA
	for <drbd-announce@lists.linbit.com>;
	Mon, 12 Dec 2022 16:23:24 +0100 (CET)
Received: by mail-wr1-f42.google.com with SMTP id co23so12461330wrb.4
	for <drbd-announce@lists.linbit.com>;
	Mon, 12 Dec 2022 07:23:24 -0800 (PST)
Date: Mon, 12 Dec 2022 16:23:22 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Y5dHapLmpYyYKK4a@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BE8ImdHPmIqiIQbC"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.10.2
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


--BE8ImdHPmIqiIQbC
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is drbd-reactor v0.10.2. This fixes logging errors if said errors
happen very early in the startup of the daemon which have been skipped
as of now. The second fix is that we only run DRBD kernel module and
drbd-utils version checks if we really need them. For example our k8s
containers use drbd-reactor::prometheus to export DRBD metrics. Here we
don't actually need very recent DRBD kernel versions with the latest
features. On the other hand we want and need these features for
drbd-reactor::promoter. Now we check if there are any promoter plugins
configured and only run the DRBD checks if that is the case. If the
requirements are not fulfilled on startup the daemon fails to start. If
later a plugin is added and the check fails this snipped is skipped.

This version also brings a small feature: "drbd-reactorctl edit" now
works like you might know it from "kubectl edit". If there are any
syntax errors the editor will respawn and show what was wrong in the
header section of the temporary config file.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/920b01e79b63b746a02c9828=
b55767a680ffc1b5
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.10.2.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
[ Moritz "WanzenBug" Wanzenb=F6ck ]
* ci: test compatibility with different rust version
* daemon: ensure logging is available early
* events: do not panic on missing drbdsetup

[ Roland Kammerer ]
* fix rest of unknow -> unknown typos
* ctl,edit: add k8s style editor reopen
* core: drbd checks only if we have promoters

--BE8ImdHPmIqiIQbC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmOXR2UACgkQRgmezyI6
myJvXgf9H1wFIq2XmNR9Uj2yuaJ/P3OXOuSUIMRylz51WJDiwHEsSSlSlViBDd39
Wx4P1xlLvGT/IBTMLFEh0pfJoTgjGCzXgkXttbHTqY4nG6bpRg3TpA6qKZoLHJe5
oF0/jRpGukM+bbkXEcjeii+giyMhX38mXdg5XRjUEYhaVKZJbKfBZm1npmQi+AAz
R93NORT0805bTTwQuiybdSjMRbhQzoGnsv6AgAvFIO32P6IiXS2xuTwnI/1OBra2
L9tHSRLd8W0ZMe4rMj486aKjCMbdWYvKNurjJ2RjGWgXetXqilpgmWkdUODYuByJ
yPAovYewGMcg1O86nOmrVCr7laBfXQ==
=rt9L
-----END PGP SIGNATURE-----

--BE8ImdHPmIqiIQbC--
