Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 07499420233
	for <drbd-announce@lists.linbit.com>;
	Wed,  7 Jun 2023 12:23:25 +0200 (CEST)
Received: by mail-wr1-f45.google.com with SMTP id
	ffacd0b85a97d-30b023b0068so346384f8f.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 07 Jun 2023 03:23:25 -0700 (PDT)
Date: Wed, 7 Jun 2023 12:23:24 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZIBanF1XA1WN9K2m@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HRR0S+ZkRqMkypcK"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.24.0-rc.1
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


--HRR0S+ZkRqMkypcK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the first RC for the upcoming version 9.24.0 of drbd-utils. We
accumulated a lot of minor improvements (updating the windrbd bits, lots of
documentation updates, user defined block sizes,...). The main reason to
finally get this out is that we added a new sub-command named "repair-md". This
currently contains 1 fixup where DRBD left meta-data in an unexpected state.
This command is executed automatically before an "attach", so there is no need
to do it manually.

Please check the individual commit messages for more details.

If there are no reported bugs I will release the final version in about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/19e9dcd98f0060c7651af8d3d76ca4780e7d4570
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.24.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:

9.24.0-rc.1
-----------
 * windrbd: various fixes
 * v9: Support user-defined block-size
 * doc,v9: improvements all over the place
 * drbdadm,v9: implement drbdadm role <res:peer>
 * drbdadm,v9: pass --verbose/--statistics to drbdsetup status
 * drbd{adm,meta}: add repair-md subcommand

--HRR0S+ZkRqMkypcK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmSAWpgACgkQRgmezyI6
myLqGAf/e/ZGtSnNUbt9gTAnx6km3U38vjv3j5dsv5qEUZAVnBG0h3KwAHKndICH
9iNpzWNM22Ul2QXi+X9pVrDkQbJYiQEh34EGojXMRnuFV8BzT8vuHC/3UREQ5ANU
x7JDyZ2DQ9xWl76JYnHxnT8fC9CYYxTDv6Yr0xOxNSA6pMRw5YQ4lbWrJGU1Ts8e
sujXhXHuhIIfnaS+JSO/XbWJVBSkbiosQ6Qb6eVBtzlgbA2aG5EjuWxMYhtMeH9A
7q9st8iptVbaLgRV8kRj50j128Su7TpFQK4CxheAjnLI0VsHX+r5lkTvCDXtWLWc
WXYsVDNdbAyOqZwJ9C9Bv2Xwsp3KeQ==
=cTge
-----END PGP SIGNATURE-----

--HRR0S+ZkRqMkypcK--
