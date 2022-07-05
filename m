Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 85B7C420643
	for <drbd-announce@lists.linbit.com>;
	Tue,  5 Jul 2022 09:52:16 +0200 (CEST)
Received: by mail-wm1-f42.google.com with SMTP id
	be14-20020a05600c1e8e00b003a04a458c54so6772294wmb.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 05 Jul 2022 00:52:16 -0700 (PDT)
Date: Tue, 5 Jul 2022 09:52:13 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YsPtrarONjoc0bo6@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QwWfLjYqXAsyuDYj"
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox v6.0.1-rc.1
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


--QwWfLjYqXAsyuDYj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD/LINSTOR/PVE users,

this is RC1 of the linstor-proxmox plugin 6.0.1. This was triggered by a
bug report[1] and fixes cloning container storage from snapshots in
several ways:

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

Please test, if there aren't any complaints this will be released in
about a week from now. Fetching LINTORPlugin.pm, overwriting the
existing one, and 'systemctl restart pvedaemon.service' should be good
enough to test.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/c432fb16aac26d6d510ad7f2a689146d2d2c1f95
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-6.0.1-rc.1.tar.gz

[1] https://github.com/LINBIT/linstor-proxmox/issues/51

--QwWfLjYqXAsyuDYj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmLD7aQACgkQRgmezyI6
myLhKwgAnwPUEpAIFI9qstLTiXbsqGBTMVNQp982YFmPkwzalAX3O7l4Uvvb+eEZ
a7DZtD5ez57tUUHC8H527tJmafYIy/raK7y54mDQAjcIayMnP2h1pP85IACTV7q7
U0BM9dHYVwS3jB6PV3K8Db1PpyFF+NSElsZ8oC/E6TaIcDDXu7re555zgFOWaWyR
fru3wmt/WbziAfUcm252p3CCcdXd2lBxl0AT/PaiNd8iQDcJFu3tX7uLvgXOnMQU
wnZcGe6JCdH8g/ZK3Ag0gYvzSMRtWLh4IfONLUOKG114US+8onQ8fTJBhzZXhOzq
/KnXo5yi6ui7w7sROH92Ha+StpFVYw==
=0nhd
-----END PGP SIGNATURE-----

--QwWfLjYqXAsyuDYj--
