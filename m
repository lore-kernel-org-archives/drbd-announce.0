Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 5E06D420471
	for <drbd-announce@lists.linbit.com>;
	Thu, 16 Jun 2022 15:12:23 +0200 (CEST)
Received: by mail-wr1-f43.google.com with SMTP id u8so1809297wrm.13
	for <drbd-announce@lists.linbit.com>;
	Thu, 16 Jun 2022 06:12:23 -0700 (PDT)
Date: Thu, 16 Jun 2022 15:12:17 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YqssMXAX+DAl6TWe@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zbl3tyGsuwEY1lYf"
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox v6.0.0-rc.1
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


--zbl3tyGsuwEY1lYf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD/LINSTOR users on PVE,

this is the RC1 of the upcoming 6.0.0 release. There are no dramatic
changes, but by bumping the major version I took the chance to flip
some defaults and remove some very old cruft.

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
better means to implement a HA linstor controller[1].

The 'redundancy' setting code was removed. This was completely dead
code, and was replaced with LINSTOR resource groups and their redundancy
setting a long time ago.

If you have the latest version installed it should be sufficient to
replace the LINSTORPlugin.pm on your system
(/usr/share/perl5/PVE/Storage/Custom) and restart the pvedaemon.service

Please test! If nobody complains this will become 6.0.0 in about a week
and get moved to the repositories.

Regards, rck

GIT:
https://github.com/LINBIT/linstor-proxmox/commit/83b769059539ac661a9fb627b5349f74bedfb789
TGZ:
https://pkg.linbit.com//downloads/connectors/linstor-proxmox-6.0.0-rc.1.tar.gz

[1]
https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-linstor_ha

--zbl3tyGsuwEY1lYf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmKrLCwACgkQRgmezyI6
myK8dAf/dGS4hv0k9ZrDj/Ruh5f9hBpEACUQajpGx7ybb1STLn/WKXIYZkjFqEFG
WhxRtVa4LMFOILHcu680j4x9BFeUsuZ4Py5RmyxP06ha19Sy986VZNb5rKtKTIIj
pSI2388nxkDlg6RPteBE1L4bLC7U/+L6nNLidwlyiZXWL1UYsROhIlk90eDoxoRl
D2FsmDz+8a8Qx+9H++mPA3Lmf/A0hzLNFNP4BaKIhGLwCTyk2e3FSGx/jNQJLScv
RN2aGAmcGqoxcdKTKzMi71yFsXgIUusa8iTeu41wA8/DPio4DH9wHrzqUB8ZGN6q
Aa5szdV/3FtefQDWvP4PSjvnIPesCg==
=H0fg
-----END PGP SIGNATURE-----

--zbl3tyGsuwEY1lYf--
