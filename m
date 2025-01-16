Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
	[209.85.167.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 1CCCF160650
	for <drbd-announce@lists.linbit.com>;
	Thu, 16 Jan 2025 15:49:25 +0100 (CET)
Received: by mail-lf1-f45.google.com with SMTP id
	2adb3069b0e04-540218726d5so963933e87.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 16 Jan 2025 06:49:25 -0800 (PST)
Date: Thu, 16 Jan 2025 15:49:23 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: drbd-utils v9.30.0-rc.1
Message-ID: <Z4kcc88wky6O54Q_@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="daaVck8d0CK9P4O6"
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


--daaVck8d0CK9P4O6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is RC1 of the upcoming drbd-utils release 9.30.0. While there are
highly appreciated contributions in the area of drbdmon and windrbd, the
main reason for this release is some prepare work for the upcoming
drbd-proxy v4 (written in Rust).

One notable change is that we now default to the DRBD9 manpages. The old
8.4 ones are still installed, and on Debian one can switch between
versions via dpkg-reconfigure. On the RHEL side we had a bug in our
preuninstall script which deletes the necessary symlinks. This bug is
basically in all drbd-utils versions since we introduced these symlinks.
Long story short, if you want the new man pages, you have to "dnf
install drbd-utils" and then "dnf reinstall drbd-utils", or run the
postinstall script yourself. This will fix itself the second time you
installed fixed utils. What a nice bug!

Please test, if we don't find any bugs the final release will happen in
about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/0a7a75989f306208679e97cdd8ce1e88981ead5c
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.30.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:

9.30.0-rc.1
-----------
 * drbdmon: various improvements
 * drbdadm: preparations for drbd-proxy v4
 * ocf: explicitly timeout crm_master IPC early
 * ocf: account for "recent" name change to "Promoted"
 * windrbd: various improvements
 * doc: switch to drbd9 manpages by default
 * init: reverse dependency for drbd-graceful-shutdown.service
   drbd@.service now has an After dependency for it.

--daaVck8d0CK9P4O6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmeJHG8ACgkQRgmezyI6
myJXEQf+L+WooftXtUo5Wxecib4CDFYq3ibGls8m+hLTU2H8BAGtwD9qRQ4fRXlP
kEOhUgi++OcTj13F8R/X8tFGD8q+iqV5ui1oNY040M3/qkQmSpYJdEuCz+zRKBVy
1WjkGT8rPkmsapzs8dYrlWfZOm2UsaE7EZ0qLSreSAE4fpz6lxH0UdmFxcOCgHvJ
k9bwadAXd6evkNFvbZcbmW/GDyX2RBbeH7xmQrkY+dKO71xixP5+fypL8I8IMWNg
93giQA+9rHYSFs/PLIL9VTU1dzmXeSsRfdNJDcfSflzVAejL7kIbQoMynmu/up+Y
plwoqW8kd+O+QDpXhQP3hOvkc1o/wg==
=99Uf
-----END PGP SIGNATURE-----

--daaVck8d0CK9P4O6--
