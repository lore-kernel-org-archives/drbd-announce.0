Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id C2B10420647
	for <drbd-announce@lists.linbit.com>;
	Tue, 12 Jul 2022 09:37:17 +0200 (CEST)
Received: by mail-wr1-f47.google.com with SMTP id v14so9934811wra.5
	for <drbd-announce@lists.linbit.com>;
	Tue, 12 Jul 2022 00:37:17 -0700 (PDT)
Date: Tue, 12 Jul 2022 09:37:15 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Ys0kqwWYybYAcVwJ@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WJNecHu1GWRwVPzo"
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox v6.0.1
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


--WJNecHu1GWRwVPzo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD/LINSTOR/PVE users,

this is linstor-proxmox plugin version 6.0.1. This was triggered by a
bug report[1] and fixes cloning container storage from snapshots in
several ways. There have not been any changes since 6.0.1-rc.1.

When one clones a container from a snapshot, PVE does:
- activate_volume() a new LINSTOR resource based on the snapshot
  (snap_$snapname...).
- create the new image vm-$id... (alloc_image()).
- internally copies the content from that "temporary" snapshot resource
  to the new image.

This had several problems:
- if a second clone was created we failed as the "temporary" snapshot
  DRBD resource already existed.
- we never removed that "temporary" resource.

The first part is easy, only create that LINSTOR/DRBD resource when
needed, otherwise skip it, that resource is supposed to be read-only.

Deleting is more involved as to my best knowledge we don't get any
"deactivate" call to delete that resource after the copy finished. The
best we can do is to keep that resource and delete it on
volume_snapshot_delete(). We saw that problem already when implementing
vzdump support. I think we can assume that we always want to delete that
snapshot resource when the actual snapshot is removed.

This means that between the clone(s) and the time the base snapshot gets
removed, we keep that temporary/unnecessary resource. But IMO that is
the best we can do and certainly better than not deleting it at all.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/c38e52a6fb0634f19b054fffed905464153f947c
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-6.0.1.tar.gz

[1] https://github.com/LINBIT/linstor-proxmox/issues/51

--WJNecHu1GWRwVPzo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmLNJKMACgkQRgmezyI6
myKbKgf9G6CBzonl+GKyJu/1JIrqIqTsvem4cIBxz9trrj7sl+sdtmvUev9VFJZp
F54K19nKgd9RUX+Ns8KoeYRiOujGdBJQyP4PfjLh/az8Y66r9ZRvUXLJMSy28eTR
v+P7nAkMnTACO81ybOUXRu2jtlGbiZrAmTcyIi8vgiho7kPsVkkPxiOEgR/FgFXl
oWNX/ym8+/E6YozDCIZBqn90H7qPZSX42tr++RjqEi8PqzMcEoFLf72bZflYHvmy
LPqfSweoy2HubBg6stUSKvaDMtqwarWLG5dLCCMuw1v0y6Uz+kAIcZFhjtSHyOWu
eGu1KX+Jnz/rN4Gw2Nf0bS1m+2Wz+g==
=x/6I
-----END PGP SIGNATURE-----

--WJNecHu1GWRwVPzo--
