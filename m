Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
	[209.85.208.176])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id DC340160994
	for <drbd-announce@lists.linbit.com>;
	Thu, 23 Jan 2025 14:49:39 +0100 (CET)
Received: by mail-lj1-f176.google.com with SMTP id
	38308e7fff4ca-30737db1ab1so8213471fa.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 23 Jan 2025 05:49:39 -0800 (PST)
Date: Thu, 23 Jan 2025 14:49:36 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: drbd-utils v9.30.0
Message-ID: <Z5JI8LbLnE7MoJKw@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="90Q0FBrQW/nFvDLk"
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


--90Q0FBrQW/nFvDLk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is drbd-utils release version 9.30.0. While there are highly
appreciated contributions in the area of drbdmon and windrbd, the main
reason for this release is some prepare work for the upcoming drbd-proxy
v4 (written in Rust).

One notable change is that we now default to the DRBD9 manpages. The old
8.4 ones are still installed, and on Debian one can switch between
versions via dpkg-reconfigure. On the RHEL side we had a bug in our
preuninstall script which deletes the necessary symlinks. This bug is
basically in all drbd-utils versions since we introduced these symlinks.
Long story short, if you want the new man pages, you have to "dnf
install drbd-utils" and then "dnf reinstall drbd-utils", or run the
postinstall script yourself. This will fix itself the second time you
installed fixed utils. What a nice bug!

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/36ea199f38b543b2da92219109c2832e122e5bf9
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.30.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:

9.30.0
-----------
 * drbdmon: various improvements
 * drbdadm: preparations for drbd-proxy v4
 * ocf: explicitly timeout crm_master IPC early
 * ocf: account for "recent" name change to "Promoted"
 * windrbd: various improvements
 * doc: switch to drbd9 manpages by default
 * init: reverse dependency for drbd-graceful-shutdown.service
   drbd@.service now has an After dependency for it.

--90Q0FBrQW/nFvDLk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmeSSO0ACgkQRgmezyI6
myLF6Af/R2z/8Vv+CA/7kzgded1Ld40bDYDUDjMguYUQipy7bCIZKj5lcaTGHVA8
En744+htUxUhVRiM/yKXwmXGF4ZhZETerNlyXJ78CKUEf46VYZ73XCj5HyyAaWW5
nGnsONqf/tQnr7Ty4sNssf3Y69+CUbznIUFlewbDwKepte8v2klyEPnCcaYa8n4U
cbGq7l6/CJTLeaVZ8GcbJtdQ/9aI1etfw+DPBPHKrGMf475qcNgYjz4XaFoxJBln
WeE/Vj20MrNAc/+4u1NdXjcD+KntGAwwwr0gNpNUB2XgSap24VXmIoCDTrB1I9WP
IgJVv7jq3+aS7ukE7o5I1hpz+42xHw==
=2EvP
-----END PGP SIGNATURE-----

--90Q0FBrQW/nFvDLk--
