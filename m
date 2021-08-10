Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id A20394203EF
	for <drbd-announce@lists.linbit.com>;
	Tue, 10 Aug 2021 09:25:03 +0200 (CEST)
Received: by mail-wr1-f50.google.com with SMTP id q11so6698254wrr.9
	for <drbd-announce@lists.linbit.com>;
	Tue, 10 Aug 2021 00:25:03 -0700 (PDT)
Date: Tue, 10 Aug 2021 09:25:01 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210810072501.GP1404@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x4pBfXISqBoDm8sr"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.4.4
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


--x4pBfXISqBoDm8sr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is version 0.4.4 of drbd-reactor. It fixes a corner case in the
promoter plugin where preferring nodes with a favorable disk state did
not always work. This corner case is triggered by linstor-gateway, so
this deserves a bugfix release on its own.

Details:
On switch/fail over we want to prefer nodes with a good disk state
(e.g., promote an UpToDate instead of a Diskless node). This is done by
checking the DRBD state of all disks in a resource and sleeping just a
bit on "bad nodes", so that "good nodes" win the race to promote the
DRBD device.

On drbd-reactor service reload (something linstor-gateway does when it
adds new resources), we have to provide the current resource state to the
newly added promoter plugin handling that new linstor-gateway resource.
On reload drbd-reactor just pauses 'drbdsetup events2' processing, sends
the new plugin the current resource state in a similar way how it would
have looked like when events2 resources would have occurred and then
continues with normal events2 processing. In this case we first told the
plugin that the resource exists and that it may be promoted. Both
information is in the same message. The plugin got that information (may
promote) and started its usual cycle. It did try to check the disk
states, but so far we did not even send any disk states. Therefor it did
not wait and promoted immediately. As drbd-reactor is the instance to
serialize DRBD state, the fix was easy: first tell the plugin the
resource exists without setting may-promote, then send the rest
(including disk states) and then an "update" that has may-promote set
according to the current/actual state.

Funny enough this is also how plain events2 looks like if the resource
is already up. Then the first "resource exists" message also already
sets may-promote before it sent the rest of the information (disk,
peer-disk, connection states). That is how events2 works, it is a simple
protocol without transactions, but there is now code in drbd-reactor to
handle such situations.

Regards, rck

Changes:
[ Roland Kammerer ]
* build: rename build Dockerfiles
* promoter: handle sleep for "cold boot" if res exists

[ Moritz "WanzenBug" Wanzenb=F6ck ]
* ensure reload updates don't trigger promoter early

GIT: https://github.com/LINBIT/drbd-reactor/releases/tag/v0.4.4
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.4.4.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--x4pBfXISqBoDm8sr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmESKcgACgkQRgmezyI6
myIsXggAhCQ9o65YlMgRHcCaCMMCjko2PepDmQD31tOW9CiQSgl+jTjkFogCpaE7
U61e/nKUO8Xj0cYhX58zd78J1RAQYvy5BtFszY7EzaHZHMU5D+VgbCI1gUfANFfq
jzRRGo0aAPEBp1c6+HhrIeAtSePncBKOi7wsjdX0TdNEJUdGy0SzS0Itu4F+D0IW
01XlcqhW91yIVeDd+zSx4XaXuuFF6D9sDV7Gtb2PakTi5wswlCK6DgLJiLY/sGfy
19emb46EtvKi0nPY13ivyUSZm8DiC9Wrpg3OfT1+gQtlKNjTtkkMn/pjCJZt8DBW
8fODfe3YHf0Cv0NOI0Nb9F2imj+FDw==
=2a+D
-----END PGP SIGNATURE-----

--x4pBfXISqBoDm8sr--
