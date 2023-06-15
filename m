Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
	[209.85.167.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 002AD4201C8
	for <drbd-announce@lists.linbit.com>;
	Thu, 15 Jun 2023 09:41:19 +0200 (CEST)
Received: by mail-lf1-f50.google.com with SMTP id
	2adb3069b0e04-4f642a24555so10163459e87.3
	for <drbd-announce@lists.linbit.com>;
	Thu, 15 Jun 2023 00:41:19 -0700 (PDT)
Date: Thu, 15 Jun 2023 09:41:18 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZIrAnqBJ+JDG5hxi@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="st+Hz/AvgXdVECAM"
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox v7.0.1
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


--st+Hz/AvgXdVECAM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD on PVE users,

this is version 7.0.1 of the linstor-proxmox plugin. The RC phase was
exceptionally long, which was a result of public holidays and me being
on vacation. There have not been any reported bugs, the original
announcement for your convenience:

- it fixes a performance regression introduced with 7.0.0
- it requires LINSTOR 1.23.0
- all users of 7.0.0 should then upgrade to 7.0.1

The detailed version:
Long story short, PVE calls status() freaking often. Depending on if you
select the storage in the GUI, this can happen every second, otherwise
like every 10s. To accommodate for that Proxmox's status() API has a
"cache" object that is passed in for every storage type. Let's say you
have 4 'drbd' storages (as in storage.cfg), then for the first call we
get an empty cache which we can fill, and for the next 3 we can use
that.

That helps, but
- we can not make use of that for more than one iteration (remember, PVE
  calls status an awful lot), that is why we introduced a file based
  persistent cache to keep some information longer than 10 seconds.
- things get even worse if you have a distributed system where then
  every PVE node hammers the LINSTOR controller with (the same)
  questions all the time.

Do the math, the LINSTOR controller gets too many "what is the status of
my storage" calls very very quickly even in setups with a handful of
nodes.

Recently we improved how we display storage information, but that also
rendered the built in PVE cache useless as we needed to query every RG
individually. That was known, I thought we could get away with it. We
did not.

How was it fixed:
- we can now query the storage information for all RGs once. That helps
  to again use the builtin cache more effectively as we again need 1
  call for every iteration.
- The new LINSTOR API for querying all RGs at once also got a cache
  parameter which also helps a lot because it avoids the pressure on the
  controller that resulted from the distributed nature of LINSTOR/DRBD.
  The http queries were/are not the problem, the problem is that the
  controller then needs to get the state of all satellites.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/e72f262ca0db1f875f996c22da322c28a39d7831
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-7.0.1.tar.gz

--st+Hz/AvgXdVECAM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmSKwJoACgkQRgmezyI6
myKcAQgAlsr0x0qpW7xyv/nYcbeoIJ+2oGHxvAx1mElebr/Y8dfG1zQ7Ugpt0b9u
xHFD8I3Emqt0xHNCBuCcMlaU3PIQoU7iW/CvMgQ3aBfhO/79vwgdYGUR1fYG0i7h
DW7b/gOv8c7/zayZIbSykV+EWKfXxP/Ov9jihgPxP3lHpLto6UutGv6u4/lLqScm
mcB+edc/aER4icqzwQdp0WiosoOXWVX/Dht/UH511ieqYn3UXGRdzolTX66dMdor
YxXh1/g4W0di57DzTygU5AebwyJYCc1w4xvddgeKSS152uVDkAE0EL1RvjhUToH2
mgljXjHgWVwHB+zYzdfqpb8ZyYOt4Q==
=8IVl
-----END PGP SIGNATURE-----

--st+Hz/AvgXdVECAM--
