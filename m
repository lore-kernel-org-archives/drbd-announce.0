Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 638A34204BE
	for <drbd-announce@lists.linbit.com>;
	Wed, 22 Jun 2022 10:50:18 +0200 (CEST)
Received: by mail-wm1-f53.google.com with SMTP id
	m39-20020a05600c3b2700b0039c511ebbacso10635463wms.3
	for <drbd-announce@lists.linbit.com>;
	Wed, 22 Jun 2022 01:50:18 -0700 (PDT)
Date: Wed, 22 Jun 2022 10:50:16 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YrLXyMxnYYgrHZjF@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3sBEGjtjPDl/5wMP"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.8.0-rc.1
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


--3sBEGjtjPDl/5wMP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD Reactor users,

this is RC1 of the upcoming drbd-reactor v0.8.0 release. The main change
is integration of "secondary --force" in the promoter plugin. IMO that
is a very nice feature and can make the difference between rebooting a
node hat has hundreds of resources just because of one faulty service
and handling that scenario more benign, even recovering from an isolated
Primary.

There is a blog post that goes into more details here [1].

Please test, using secondary-force will be the new default for v0.8.0,
no configuration changes necessary. Old behavior can be restored by
setting "secondary-force = false" in a promoter section. This requires a
kernel module >= 9.1.7 and drbd-utils >= 9.21.2

If there are no complaints I will release the final version in about a
week from now.

Regards, rck

Changelog:
* CI: update for gitlab 15.0
* prometheus: expose force-io-failures
* doc: typo fix
* promoter: implement secondary --force
* bump min versions for secondary --force
* core: mv version checks to main

GIT: https://github.com/LINBIT/drbd-reactor/commit/93a2b3728f7781db93de2a40a45f61921fb53f75
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.8.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

[1] https://linbit.com/blog/drbd-reactor-recovering-an-isolated-drbd-primary/

--3sBEGjtjPDl/5wMP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmKy18QACgkQRgmezyI6
myLZ8gf9Hvs8yK3LAtzwyxeD+eKAHEfQNk1ftLliWrvTwsNeXkAyu/4JchomqWk+
yiNTiwaIdcGWijN58DIQpUZFUtUEO5dMj4i1c3fga9lgNVsqz9aNi9RdHXFkF9yv
8AabqAbxMZ1afJqv0tEHYt9URguLw02aGUGV+DsKcMOxBzYYZY/OEmHrC/6oDhtk
i/rVoD80LzuL55vbE4UnFvh99a0tcGH3DXdjZ6tM99a8AA4gYz99lQlV+Iu0sBML
ik4VXfu5Lq+cw77y1z1wivPiwuPaXEX3d9Y3de3rcUZcLEg7A77SPXNbua/0Ziow
1dzl9SO+D+G0+RPtrJbIQNMvF6pIhg==
=Jdef
-----END PGP SIGNATURE-----

--3sBEGjtjPDl/5wMP--
