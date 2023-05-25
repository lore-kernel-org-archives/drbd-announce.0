Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4157D420632
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 May 2023 13:16:57 +0200 (CEST)
Received: by mail-wr1-f49.google.com with SMTP id
	ffacd0b85a97d-30a1fdde3d6so1925014f8f.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 May 2023 04:16:57 -0700 (PDT)
Date: Thu, 25 May 2023 13:15:55 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZG9Da0sMZ5VMJgUQ@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KKNzK5L877YHDZET"
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox v7.0.1-rc.1
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


--KKNzK5L877YHDZET
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD on PVE users,

this is the first RC for the upcoming 7.0.1 version.
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

Please test! If I don't get any negative feedback (positive one is
welcome as well), I will release the final version in about a week from
now.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/6541b7d624b543c92107d4e562ac7f9e555a3fad
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-7.0.1-rc.1.tar.gz
DEB: https://packages.linbit.com/staging/public/dists/proxmox-7/drbd-9/pool/linstor-proxmox_7.0.1~rc.1-1_all.deb

--KKNzK5L877YHDZET
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmRvQ2gACgkQRgmezyI6
myICQQf+M0Kb+IaMoQlO7tBDAwQoKwJk3v+cnm7YFmt77UTsCl4xGCfIlWQydzsX
U/jh2OmqKgl1VPxaxWWlacGRqobpDHGXtL/eqgVFIPOKMobWweC8BKUoFjEQiqVw
yGPP72D3ncKaC5tfMfdA8cLcwz1y9fusBpoQ3wpxLEvVXV/SSt+IdQS+H3Nn5aG9
2xKlCYAQ11UdT9NjSFONC+3iU9pEi6gRquJt4Nb7kPEVtYw/aTVVrceTy7DdeGxg
IHskkF+8ytRIDIRPXpOOlV5d5Wa9Z2snMP7hKVkzhXOzHiDjKLfBy4uH+l/hCCNB
JWNZ9Dopj7llYU8eQ65/nAS4vI+Nqg==
=dFNf
-----END PGP SIGNATURE-----

--KKNzK5L877YHDZET--
