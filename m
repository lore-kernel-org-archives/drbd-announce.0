Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 03E5F42019F
	for <drbd-announce@lists.linbit.com>;
	Fri,  5 Apr 2024 10:48:49 +0200 (CEST)
Received: by mail-wm1-f54.google.com with SMTP id
	5b1f17b1804b1-4162e19b663so3011185e9.2
	for <drbd-announce@lists.linbit.com>;
	Fri, 05 Apr 2024 01:48:49 -0700 (PDT)
Date: Fri, 5 Apr 2024 10:48:46 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: linstor-proxmox v8.0.0-rc.1
Message-ID: <Zg-67sWeLaJjetnJ@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QMawYehS7POKL4HX"
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


--QMawYehS7POKL4HX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear PVE on LINSTOR/DRBD users,

after some calmer period I'm happy to announce an RC that includes two
new features, but let me first notice that this version needs LINSTOR
1.27.0 or later!

- reassigning disks from one VM to another
- online migration of external storage like LVM to LINSTOR/DRBD

Reassining disks:
In order to allow reassigning disks between VMs we had to change the
naming scheme. New disks (also clones of old ones) will have names like
"pm-12cf742a_101" on PVE level, and "pm-12cf742a" on LINSTOR/DRBD level.
This is a static prefix ("pm-"), 8 characters of a UUID, and on PVE
level the VMID separated by an underscore ("_101"). The new naming
obsoletes the old "vm-101-disk-1" like names. Old VMs with legacy names
still work with version 8 of the plugin. For the user this change should
be completely transparent and should not require any changes besides
getting accustomed to the new names.

Online migration from external storage:
So far it was only possible to migrate data from external storage like
LVM to LINSTOR/DRBD if the data was migrated offline. If you want to
migrate data online you can now *temporarily* set "exactsize yes" in
your "storage.cfg" for a particular DRBD storage and then migrate disks
to it. After you are done, remove the "exactsize" option from the
"storage.cfg" again. The LINSTOR property that allowed temporary online
migration is then deleted when the disk is activated again (but not if
it is currently active). If you want to delete the property for all
active disks after migration, or you want to be extra sure, you can run
a command like this:

# linstor -m --output-version v1 rd l | jq '.[][].name' | \
  xargs -I {} linstor rd sp {} DrbdOptions/ExactSize False

Please test, if we don't find any bugs we announce the final version in
about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/96acca6cb738633a13c71c34094e9640597bf9d0
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-8.0.0-rc.1.tar.gz
DEB: https://packages.linbit.com/public/staging/dists/proxmox-8/drbd-9/pool/linstor-proxmox_8.0.0~rc.1-1_all.deb

Changelog:

[Roland Kammerer]
 * show diskless disks in "VM Disks"
 * allow reassigning disks
 * test: add simple test script
 * api: also check for APIAGE
 * add online mv storage
 * fix spelling
 * set allow-two-primaries in RD creation

--QMawYehS7POKL4HX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmYPuusACgkQRgmezyI6
myKxhwf9FAnIf/kLyv0HaysNPN87yAQ7GpCKomt3cIj7riHJC8uYcc7GaUoneoOB
1UZkm1BDFTd5ex1AZBXEU7SM9UUTCGAHX7BTdJ/k3GArhlAvIJIiw+yBYXC2lemg
VrB2TJi5vrP7/okVd98cfeuRQZw+N+CSMBJWwNzM4ZHsCvfrw74//k6y88MLMds4
Wrd/fB9cHAbEAhDSAKT7tgSYUDk5ZRpuYg+YFEYMwuUAXjI+ibgjoUXq67Js8H9h
FXV9Awm6FFt1RoUlMp6kI5EOvcYW7PIKR5pUvKcIkMP0LLI+Cjg9kgVbC3pCslml
mTM4iN1WNGmc3YQqaSOe/pUmUgg1sQ==
=lY+5
-----END PGP SIGNATURE-----

--QMawYehS7POKL4HX--
