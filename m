Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
	[209.85.167.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 6388C4201BF
	for <drbd-announce@lists.linbit.com>;
	Fri, 19 Apr 2024 08:34:51 +0200 (CEST)
Received: by mail-lf1-f48.google.com with SMTP id
	2adb3069b0e04-51967f75729so1893392e87.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 18 Apr 2024 23:34:51 -0700 (PDT)
Date: Fri, 19 Apr 2024 08:34:48 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: linstor-proxmox v8.0.1
Message-ID: <ZiIQiFgcy5IhruxV@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Zd8deaRCZvl5lV4W"
Content-Disposition: inline
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


--Zd8deaRCZvl5lV4W
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD on PVE users,

this is version 8.0.1 of the LINSTOR Proxmox plugin. It is a small
bugfix release that contains two changes, both related to cloud-init
images.

The first is a fix for a regression introduced with 8.0.0: By being ways
stricter with what names (usually VM disk names or snapshot names) are
valid it was no longer possible to create cloud-init images on DRBD.
That is now possible. A word on if that even makes sense later.

Secondly, PVE behaves a bit different for cloud init images compared to
VM disk images. Disk images are created once ("alloc") and then used
after an "activate" and get a "deactivate" when they are not used
anymore. In "alloc" we create the LINSTOR resource (which might get
placed on a subset of PVE nodes), and when the VM is started
("activate") we check if there is the necessary DRBD device on that node
and if not we create a diskless assignment. On "deactivate" we delete
such unnecessary diskless assignments. Cloud init images on the other
hand have their configuration stored in PVE and if such an image does
not exist it can be re-generated immediately, the config is just a few
KB, the "iso" a few MB.

So if a VM with it's cloud init image on DRBD starts on a node that
currently does not have access to the DRBD device hosting the cloud init
image this happens: PVE stat()s the device path and it does not exist,
it does not send an "activate", but it just tries to recreate it
("alloc"). And that is where we failed, because the LINSTOR resource
already existed (and we errored out in "alloc"), but it just was not
available yet on that node. If we detect that scenario now, we return
=66rom "alloc", and wait for the "activate" to make the cloud init image
available on that particular node.

People insist on having everything on one storage, but my personal
opinion: Don't put cloud init images on DRBD, I don't see any
reason for that. The config (IP settings, DNS settings,...) is in PVE,
they can be created on the fly, and that is what PVE does. Just put them
on local LVM and be done with it. When you move a VM PVE will recreate
the cloud init image on the destinations node's local LVM (and delete it
=66rom the old node).

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/595c9f15ea72d99dd3f82=
fb94cefa74aaf0b0770
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-8.0.1.tar=
=2Egz

--Zd8deaRCZvl5lV4W
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmYiEIMACgkQRgmezyI6
myKIvgf/UTj/mFZ1WV3siaxdcb3C76VAl+SESBf+h3KnufUdhKl9V1UZEHvcX+o2
zusMA+80SyhsLjr7QDtwg6xRRenR+6djiIY1jCHeYPic7UFo2y3+GlpNGvT4uKqU
u8+xsOIK9MhollmtmsdT6lRxwr9eBGGX40n+1lq6WVadex5jhZo69D5nfGN0Mpu0
II1hUboDQlsMEX0sugLoqfVZ6IN4DGFBc+ygKMawWWbqxM2mddwVUMDn3PjI33l4
YlMS7c4bEvmFXOzO61acK0aeyY0tYycMNmZd9YRjNZazquvSEgG4+0jF5TfyeOXv
dq1rozjqbjQ4RgP2yb+P/VEMQaWgFg==
=ovJ1
-----END PGP SIGNATURE-----

--Zd8deaRCZvl5lV4W--
