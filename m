Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4C5C5420966
	for <drbd-announce@lists.linbit.com>;
	Thu, 23 Mar 2023 16:09:28 +0100 (CET)
Received: by mail-wm1-f43.google.com with SMTP id
	p13-20020a05600c358d00b003ed346d4522so1320244wmq.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 23 Mar 2023 08:09:28 -0700 (PDT)
Date: Thu, 23 Mar 2023 16:09:27 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZBxrp7Dw1+pw35yq@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="US0dhm8/2xoz8CW2"
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox v7.0.0-rc.1
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


--US0dhm8/2xoz8CW2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD on PVE users,

This is RC1 of the upcoming 7.0.0 release of linstor-proxmox. First
things first: This *requires* LINSTOR 1.21.1 (or newer).

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

If nobody complains this will become 7.0.0 in about a week from now,
please test.

If you use PVE7, you can take this package for testing (LINSTOR should
already be in the stable repos):
https://packages.linbit.com/public/staging/dists/proxmox-7/drbd-9/pool/linstor-proxmox_7.0.0~rc.1-1_all.deb

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/8589c4f41da4d78d4f8c1eb3051e83c296cc10ed
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-7.0.0-rc.1.tar.gz

--US0dhm8/2xoz8CW2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmQca6MACgkQRgmezyI6
myLHnAf6AsRrSYtUwCHWSBJ3aXLPBw4Et0l87gJJHb7TUMP9kV5utVC2v0pO81ND
IxANw2Tzd4QQmr2Gsaz8j9xF7unWaHMewQX6QQCb9Pyexch0mpqwyd+e1CNW9qPb
hNcqigUwIW9iHMAMenUGbdpLq6u5iapHZASJtMhKVlvOGDtRvn1RJ/g5Q96HE0rr
Zl0Yj1xHBVXTmlF5dVuunDS3UqMB7vZprH2r/5rLSJJxM+gvUEPHzvneIu6vf6pT
5MP8x/stNajwMw50ewcfLEWW8iqLVL4C1vi7c4xkCn++rVEVk2vIlYxURpHrLk/n
PwlgwHD7TIXV1ZAztS02jd9aLUW5mw==
=ktie
-----END PGP SIGNATURE-----

--US0dhm8/2xoz8CW2--
