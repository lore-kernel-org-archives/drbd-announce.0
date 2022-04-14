Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 14B98420004
	for <drbd-announce@lists.linbit.com>;
	Thu, 14 Apr 2022 14:22:43 +0200 (CEST)
Received: by mail-wr1-f43.google.com with SMTP id u3so6674840wrg.3
	for <drbd-announce@lists.linbit.com>;
	Thu, 14 Apr 2022 05:22:43 -0700 (PDT)
Date: Thu, 14 Apr 2022 14:22:41 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YlgSEaw8oNuUJr5s@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5bZPmlv55B5t7Eg8"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.21.0-rc.1
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


--5bZPmlv55B5t7Eg8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the first RC for drbd-utils 9.21.0. The main reason is the
addition of "secondary --force" Phil wrote about in the DRBD kernel
module RC announce.

This also includes all the fixes from 9.20.1 and 9.20.2, and various
other small fixes like a fix for "drbdadm sh-resource", and fixes for
notify.sh for DRBD9. Please see the Changelog and the commit history for
more details.

Regards, rck

TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.21.0-rc.1.tar.gz
GIT: https://github.com/LINBIT/drbd-utils/commit/313cd3005cd759e44dd6c394ba6a8d9abdcf68c1
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
 9.21.0-rc.1
-----------
 * drbdsetup,v9: show susupend reason in json output
 * drbdsetup,v9: add secondary --force
 * drbdsetup,v9: fix *susp_str() for events2 diff mode
 * drdbdadm,v9: fix sh-resource
 * doc: various improvements
 * windrbd: ask user if for admin if access denied
 * ocf: deal with situation where PM node name and actual node name do
 * not match
 * notify.sh: deal with unset DRBD_PEER env variable

--5bZPmlv55B5t7Eg8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmJYEg4ACgkQRgmezyI6
myISiAf/cQooV9wRzYa9dwY1WpbKs5lhxhDnv8hkK59Vy9MBWyypqd0/nuwpHM6a
X2gJbcjcL7C15twAS6nFYp4I6mREhfY3ormnikwXora7ZlV+7+FS6BHfmW3RYlxO
5C0F4cOONJnaBhfoa6+tpCp6Sj3flyvxQjQTCQ48rs3zUtKkbNIaHTqfAaCukMu5
S4p3ecbSr3W/K2XBc+FvpJEraIWfqkzOJ4WsSWrnPOzVohAbPSIGFBrvYhs7ceiB
AsJ3wgOzBycBglzX6be0Uwc6Y0hTYuGC5zzbmJdZet5qUrjWjxhEenIfcYY6Nwep
8F3LLakqTJSZQ+I2YQ2sU65WsKPIzw==
=a32P
-----END PGP SIGNATURE-----

--5bZPmlv55B5t7Eg8--
