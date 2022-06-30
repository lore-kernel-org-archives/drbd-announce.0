Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 90B0E420647
	for <drbd-announce@lists.linbit.com>;
	Thu, 30 Jun 2022 12:55:07 +0200 (CEST)
Received: by mail-wm1-f52.google.com with SMTP id n185so11063071wmn.4
	for <drbd-announce@lists.linbit.com>;
	Thu, 30 Jun 2022 03:55:07 -0700 (PDT)
Date: Thu, 30 Jun 2022 12:55:05 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Yr2BCZXQNlAW55U6@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hfAdP6kixbvZmB67"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.8.0
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


--hfAdP6kixbvZmB67
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD Reactor users,

this is drbd-reactor version 0.8.0. There have not been any changes
since RC1, the slightly adapted original announcement for you
convenience:

The main change is integration of "secondary --force" in the promoter
plugin. IMO that is a very nice feature and can make the difference
between rebooting a node hat has hundreds of resources just because of
one faulty service and handling that scenario more benign, even
recovering from an isolated Primary.

There is a blog post that goes into more details here [1].

Using secondary-force is now the default with v0.8.0, no configuration
changes necessary. Old behavior can be restored by setting
"secondary-force = false" in a promoter section. This requires a kernel
module >= 9.1.7 and drbd-utils >= 9.21.2

Regards, rck

Changelog:
* CI: update for gitlab 15.0
* prometheus: expose force-io-failures
* doc: typo fix
* promoter: implement secondary --force
* bump min versions for secondary --force
* core: mv version checks to main

GIT: https://github.com/LINBIT/drbd-reactor/commit/c14b7903734a0152a5fc992c0bde5ac2f66fa08b
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.8.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

[1] https://linbit.com/blog/drbd-reactor-recovering-an-isolated-drbd-primary/

--hfAdP6kixbvZmB67
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmK9gQUACgkQRgmezyI6
myJzGwf/SsFvlbrp7imeWyO6+WhAdfGVzksPhRGXB2OIG8wYw2mIu9CBZqatpB4G
sLd9Uy8ajJ3+0eCzdEbCPmVhnbWvjytHUQHo1WZh2YNrdUUMuuAPTG6Ib1T+WAiJ
5Gr11ItEjww2APuYyyk2S2gTanOFFuaaE5CxfNw4sx0H6d5WLTIVAkEXFOrFX1sB
FRaiyJ3l0VlqzSW2t5L36f69tE0VT9hBzIe8JQ5FebZrAj0SvtPBT8UhjKTcgVMA
NjcltWYNNoJTt7RL+SG5YkWs61Za48fFfjv6T/YbUQpWHLd0tTyvhVjJUtiLKnQg
dNuKwkffWN/cndEWafrTtPJLvwyytA==
=kiBH
-----END PGP SIGNATURE-----

--hfAdP6kixbvZmB67--
