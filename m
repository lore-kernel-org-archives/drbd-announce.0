Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
	[209.85.208.180])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 8493D4201D2
	for <drbd-announce@lists.linbit.com>;
	Tue, 16 Jul 2024 09:37:28 +0200 (CEST)
Received: by mail-lj1-f180.google.com with SMTP id
	38308e7fff4ca-2eedec7fbc4so33243701fa.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 16 Jul 2024 00:37:28 -0700 (PDT)
Date: Tue, 16 Jul 2024 09:37:23 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: linstor-proxmox v8.0.4
Message-ID: <ZpYjM7-NoFmFlXYs@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="H7oAAGg97ZhjUD4b"
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


--H7oAAGg97ZhjUD4b
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD/LINSTOR on PVE users,

this is version 8.0.4 of the linstor-proxmox plugin. It contains the
following fixes and improvements:

# Fix sizes when VMs with EFI disks are restored

Here the problem was that restoring backups with EFI disks failed
because the vzdump tool in PVE has certain assumptions. The tiny EFI
disk gets created and if sizes are within 4MB it shuts up, if they are
bigger it fails. The plugin had a minimal DRBD resource size of 5MB,
which then got rounded up to 8MB (e.g., LVM, DRBD-meta data,...), which
was no longer in the 4MB tolerance and restores failed. This is fixed
and should then also allow restoring backups that previously failed.

# Keep tie-breaker node

When a diskless assignment gets deleted LINSTOR usually (depending on
the number of nodes obviously) converts that assignment to a tie-breaker
so that one still has for example 3 resources/nodes to keep quorum.
Usually when a VM is then started on a tie-breaker that gets converted
to a regular diskless and after use it gets downgraded to a tie-breaker
again. But if LINSTOR sees a delete on a tie-breaker, it will really
delete that (diskless) DRBD assignment, which perfectly makes sense and
usually does not happen because of the described toggling between
diskless and (diskless) tie-breaker. In certain scenarios sends 2
deletes to the plugin, then the first switches from diskless to
tie-breaker, but the second then actually deletes the tie-breaker. This
got fixed, but requires LINSTOR 1.28.0 or later. The plugin can be used
with older LINSTOR versions, but then the described behavior stays.

# Allow names as used in backup fleecing

We needed to relax our name filters once more for disk names as they are
used for backup fleecing. That is done, but it has to be said that using
a DRBD disk for backup fleecing is a very bad idea in general, don't do
it, use fast local storage such as thinlvm for that.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/b55df5145e3ea5866bb177bdca2a75d60d69856d
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-8.0.4.tar.gz

Changelog:
[ Roland Kammerer ]
* fix backups with EFI disks
* keep tiebreaker
* allow names as used by "backup fleecing"

--H7oAAGg97ZhjUD4b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmaWIysACgkQRgmezyI6
myLDFgf9Eh781C1qOsVZ4VonbrEV7dsJn3iGw/iUT+80aXTx5J+Rl6p1EVcFknnu
JSXSmgXk2HNIgBP0SXD6EKLanNcw3Y6Em95Dp5FcZbHDnrTj+qgBH3zRQyEdJdBH
OHJI0JURITzxtmArWOWOJVxAQyyUdiFy7I5nr/j1t5Ev+GAbjEJAOoVljDfAIpbN
CQ5LUT2xhd14FRmb4B1U5oKtYWFwVrMnmzSLmiWX9muSv8AiNbL4tVxKM1CW61M2
73F+NXFV0w7EIqL+CTYTFqzynsMkMGW0DYimsYATkIHx8p8Ccw1IlISBv9B7xpwi
rJtS4cUGWgqOaGsUqiVUDQ4gNGdR2A==
=Twid
-----END PGP SIGNATURE-----

--H7oAAGg97ZhjUD4b--
