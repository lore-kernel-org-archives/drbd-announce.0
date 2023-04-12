Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 00FC4420151
	for <drbd-announce@lists.linbit.com>;
	Wed, 12 Apr 2023 11:45:42 +0200 (CEST)
Received: by mail-wr1-f54.google.com with SMTP id s12so1767737wrb.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 12 Apr 2023 02:45:42 -0700 (PDT)
Date: Wed, 12 Apr 2023 11:45:41 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZDZ9xRJEN7ds5k+E@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nHin6yMOTIdhJH1r"
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox v7.0.0
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


--nHin6yMOTIdhJH1r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD on PVE users,

This is version 7.0.0 of linstor-proxmox. First things first: This
*requires* LINSTOR 1.21.1 (or newer).

There have not been any substantial changes since RC1. The only change
was that the Debian package now depends on linstor-satellite >= 1.21.1.
This makes sense on its own, but also allows us to enforce a controller
version of 1.21.1, which is required because of the API calls we use in
the plugin.

The RC1 announcement:

So far we more or less (size reporting was always a mess) tried to show
a node-local view of storage. For example we only showed pools that
actually exist on a node. This was okay, but had two problems:

- showing only the local storage in a distributed cluster does not make
  too much sense. The actual data lands on nodes LINSTOR decides.
- there are people that have the storage nodes pretty much separated
  from the PVE nodes. For these we did not show any storage information
  on such nodes (as they did not have the RG's SP deployed), which is
  rather confusing.

Now we shifted the calculation of free/used storage to LINSTOR and that
is what we show on all nodes.

tl;tr: we shifted from a node local view to a cluster view.

For PVE nodes we have the following assumption, which we already had:
- linstor-satellite (and all that comes with it: drbd-utils,
  drbd-dkms,...)
- linstor-proxmox plugin installed

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/26123d9dd3eddccd3b053f618e6a79b4f2c824b6
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-7.0.0.tar.gz

--nHin6yMOTIdhJH1r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmQ2fcEACgkQRgmezyI6
myLezggAryGO0LJfTGagEdXW4bWsjWLUmsww4zDTj3C3BZGVdQuEBEIwJrLk8495
At7Py0YV90RkISfSK4BxLIbM/TMnJ2gHhxyXIy05aIJuanw1nnl5unPIDW3OY/ju
lRMEFRPeBCnJuBclYsQyxWLXShcg/3t7lNt5XSnaLEmTRxYqhjv+ZP1FTZiGesPS
6aCl9PR+jq/PWPTKef82vHm7NOP7yhYLL+acSnLSXIjC1a8VS8TLsvJ4t8pDs9Cd
bltSvFPPh6uJ6CE0maCfN1THzFD18A7PExKV0ZnAoL+F5jr2KY9crQsU2zH0WS+R
vWzKPO255FP1+r8P+NlXYTYX8FQf2w==
=cPVI
-----END PGP SIGNATURE-----

--nHin6yMOTIdhJH1r--
