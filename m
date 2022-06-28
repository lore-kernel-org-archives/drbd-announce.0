Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B77DB4201F5
	for <drbd-announce@lists.linbit.com>;
	Tue, 28 Jun 2022 13:34:10 +0200 (CEST)
Received: by mail-wm1-f42.google.com with SMTP id k129so5754856wme.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 28 Jun 2022 04:34:10 -0700 (PDT)
Date: Tue, 28 Jun 2022 13:34:08 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YrrnMCkmhqO4LeD6@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dI8QJOieJC9AQ/Pc"
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox v6.0.0
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


--dI8QJOieJC9AQ/Pc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD/LINSTOR on PVE users,

this is version 6.0.0 of linstor-proxmox. Thanks to those that tested
and sent feedback offlist. There have not been any changes since RC1.
What follows is the original announcement for RC1:

There are no dramatic changes, but by bumping the major version I took
the chance to flip some defaults and remove some very old cruft.

The option 'preferlocal' is now set to 'yes' by default. This means when
you create a VM, the plugin tries to create storage on the node the
'create' command was issued. Previously it could have been that you
selected nodeA in the GUI, created the VM and it ended diskless on nodeA
and with actual storage on nodeB.

Keeping a status cache ('statuscache') for storage pool information is
now enabled by default and the default duration is 1 Minute. This was
available for a long time and users with huge clusters ran into issues.
Unfortunately PVE queries information a lot and the internal PVE cache
that can be used does not solve all issues.

The 'controllervm' (not to confuse with 'controller') setting that was
used for some form of controller HA is gone. We nowadays have ways
better means to implement a HA LINSTOR controller[1].

The 'redundancy' setting code was removed. This was completely dead
code, and was replaced with LINSTOR resource groups and their redundancy
setting a long time ago.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/d60e2d8c13b5c4ff83e62f15f09b2272eac4fbc0
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-6.0.0.tar.gz

[1]
https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-linstor_ha

--dI8QJOieJC9AQ/Pc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmK65ysACgkQRgmezyI6
myKV4AgAhqPvXfUwSVYxzVsm0Tixbhwm9bLhFS/yYfudBnXqmiXVb/w0Rh6PePq3
7mWvgU1jbpTCi7Sv45I8oQfPBPg68zbYyT7CLaNIHj4S+Hy+2sNJHA9mw6pJdg1P
54E6pj9pYI7RMct6zl8PzeIKr9qvtfQSGU5GLthZe338oFOoCxt0wzCCy3CpZoBQ
rP1FztV2eiLRV1f1DfnZyuRffFTRbr3j5OPu3SyIYYkxhxrz7pTxfN9na81T2PfS
uzzjUR2vl9T6GNt3lKF8ydo0ZnJ2rLO+vM/Z4ekEOoWwncXkX8XSF8l7twFGgVei
h1o6uH1qGRS/hvOs01BftepCxoq0Bw==
=BCSh
-----END PGP SIGNATURE-----

--dI8QJOieJC9AQ/Pc--
