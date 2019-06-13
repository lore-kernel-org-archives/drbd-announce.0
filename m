Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 9AF161011BF6
	for <drbd-announce@lists.linbit.com>;
	Thu, 13 Jun 2019 16:21:11 +0200 (CEST)
Received: by mail-wm1-f46.google.com with SMTP id w9so6747491wmd.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 13 Jun 2019 07:21:11 -0700 (PDT)
Date: Thu, 13 Jun 2019 16:21:08 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20190613142108.d57enbmjijydkdbx@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="a5neivjg7cr3wva3"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils-9.10.0
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>


--a5neivjg7cr3wva3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi DRBD users,

This release contains minor bug fixes and one new feature. There is no
urgent need to upgrade.

The highlight is a new option that can be set to disallow reading from a remote
peer. This can make sense in certain DR site setups. There will be more
information on that in the according DRBD 9 kernel release note. This
drbd-utils release is mainly to get out the code allowing this feature.

Another fix is that one can now create meta data for huge disks with many
peers (there was a bug summing up the overall volumes).

This is rounded up with the usual drbdmon improvements and JA doc updates.

9.10.0
--------
 * drbdmon: limit desplay lenght, minor fixes
 * drbdsetup,v9: avoid underflow when resync regresses
 * drbdmeta,v9: allow huge (~1PB volumes)
 * drbdsetup,v9: add allow-remote-read flag
 * docker: switch to UBI images
 * doc: update JA doc

https://www.linbit.com/downloads/drbd/utils/drbd-utils-9.10.0.tar.gz
https://github.com/LINBIT/drbd-utils/tree/v9.10.0
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Regards, rck

--a5neivjg7cr3wva3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAl0CW88ACgkQRgmezyI6
myLHfQf+MzVHAEsGnTFZHQa9nNHntf2kK6yH2ckeRleR0gtkkkHrlGXrXV1BzBfz
vXG2w0WRj+s2B2RgvOlFnIaR7yyszx0Mzj2/DAxC2/RjLPNKJygr1vYGq1OWIX3t
x1c3B7SoJKyQYBf/lASayxcbO0ar6Y0xCssDdlhbR5EgeC9F/b4mgF1w/uoYgCvY
hb2EvIsB5zrXOWg+0uqjtUHv2qQOA/RLmPvHFLFKlLoUYihOeRNoJA9rZYFHgZu3
agHVPIgQ0rDOKf6roE9xo439SDjEtgM5IbJ1fn3eX01U2iaVeyNPflNm+xMJfaAO
1zOWdoPqbAhYifgDUqN4v+bT7MkeOA==
=vb+Q
-----END PGP SIGNATURE-----

--a5neivjg7cr3wva3--
