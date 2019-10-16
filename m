Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id BAAC14203D2
	for <drbd-announce@lists.linbit.com>;
	Wed, 16 Oct 2019 13:48:09 +0200 (CEST)
Received: by mail-wm1-f43.google.com with SMTP id i16so2576728wmd.3
	for <drbd-announce@lists.linbit.com>;
	Wed, 16 Oct 2019 04:48:09 -0700 (PDT)
Date: Wed, 16 Oct 2019 13:48:07 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20191016114807.GD2194@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tKW2IUtsqtDRztdT"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils-9.11.0
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


--tKW2IUtsqtDRztdT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi DRBD users,

This release contains some bug fixes and some new features. The features
were mainly driven by customer requests, so they solve some specific
corner cases. If you don't use these features (or a pretty recent
kernel), there is no urgent need to upgrade now.

Highlights include:
- There were changes in netlink for Linux 5.2. If you use one of these
  kernels, you should update. This change is shared between utils code
  for versions 9.0 and 8.4 of the kernel code.

- rr-conflict got a retry-connect option. This is particularly useful in
  setups where quorum and pacemaker are used. See the according commit
  msg.

- drbdsetup got an option to force resync which, on new-current-uuid'
  set the current data set UpToDate and forces a resync to all peers.

- drbdmon got a 256/16 color mode.

Overall the changes are pretty small, so I'm almost sure it won't kill
you kittens. The new versions can be found on the usual locations.

9.11.0
--------
 * drbdsetup,all: prepare for netlink changes (linux v5.2+)
 * drbdadm,v9: fix a check for setting up connections multiple times
 * init: setup file backed loop devices (mapping from LINSTOR)
 * rr-conflict: add retry-connect option (>=drbd 9.0.20)
 * drbdmon: 256/16 colors; events2 handler improvements
 * drbdsetup,v9: new flag: force-resync (>=drbd 9.0.21)

https://www.linbit.com/downloads/drbd/utils/drbd-utils-9.11.0.tar.gz
https://github.com/LINBIT/drbd-utils/tree/v9.11.0
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Regards, rck

--tKW2IUtsqtDRztdT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAl2nA2AACgkQRgmezyI6
myLgUwf/XJFzU2DuQbYflYynmT6LWDaVimlsN1+ctsD1mjOXHDM+OieFoLULmzL1
keOcoji8uMhbP6bOHTHsU82vjjz0BYN5IZxF68cLNTogz40QVYezjPonbitv1kRm
HXB4N2x0KnXJVUFdLagQcDRoqiJ7yKlrV+OwpnCfabU551LT00OHlqsVai3pQ+oM
lgRqlqwl7CCD9W0ncYE4PrgWDD6l1EBfqhFKcxDIKDiMLgpgGnNkScCROe21fnai
qdUy/igDnuAHwJk+nJuRXJF6GfIcdy8EJRJ36nINO06xInIWsRmsJ/+Ia7PcgWKo
7ROGT6Ldzw1x1pC3DvTq38VkT3B27A==
=Rnxd
-----END PGP SIGNATURE-----

--tKW2IUtsqtDRztdT--
