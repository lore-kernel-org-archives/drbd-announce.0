Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 02B684202C6
	for <drbd-announce@lists.linbit.com>;
	Wed, 17 Apr 2024 09:55:39 +0200 (CEST)
Received: by mail-lj1-f178.google.com with SMTP id
	38308e7fff4ca-2d8b2389e73so61128091fa.3
	for <drbd-announce@lists.linbit.com>;
	Wed, 17 Apr 2024 00:55:39 -0700 (PDT)
Date: Wed, 17 Apr 2024 09:55:35 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: linstor-proxmox v8.0.0
Message-ID: <Zh-Adx0FnNAultpA@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="v3khkHxJjxCjIAxG"
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


--v3khkHxJjxCjIAxG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear PVE on LINSTOR/DRBD users,

after some calmer period I'm happy to announce the final version 8.0.0
that includes two new features, but let me first notice that this
version needs LINSTOR 1.27.0 or later!

We did not find any bugs in the RC, for your convenience the last RC
announce mail:

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

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/2da369dba902b7f540c6c36a28a29c07c3bc1030
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-8.0.0.tar.gz

Changelog:

[Roland Kammerer]
 * show diskless disks in "VM Disks"
 * allow reassigning disks
 * test: add simple test script
 * api: also check for APIAGE
 * add online mv storage
 * fix spelling
 * set allow-two-primaries in RD creation

--v3khkHxJjxCjIAxG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmYfgHUACgkQRgmezyI6
myIKhQf+IZizrBMmQFTPwwrlVCTwBdn8XtM5NkintY3fqyooLMpUu9F7ub2Sl+aH
hecLJVfrcPEHTj7cDQtKrOXw0G7ziJ3QxAOAMiaiAlKkXVqQGLD/EyULZoGTAQ7s
OWcs827+MOt0PRxexttzDYZtwAhb3NdskPXiWNtD3u82bkYqvVaAm1vafzpWHWGi
s9yc9DDLLnyniJvlzffYIFNVPIB+ERbD1ZpzLHHrQ4B6gfwdc1+vqvT94H3LrTmL
Al1yPDcOJ3P2CZpwPd3yX1mgEEdswfu6rxtlyQtuEZoKPj4y2djb+CQ2oDmkwLPe
j2Nht+cJxj2MX7Ah9F48bnZOb9y52g==
=5M4Q
-----END PGP SIGNATURE-----

--v3khkHxJjxCjIAxG--
