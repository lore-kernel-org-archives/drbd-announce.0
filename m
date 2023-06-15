Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B64164205F5
	for <drbd-announce@lists.linbit.com>;
	Thu, 15 Jun 2023 10:44:51 +0200 (CEST)
Received: by mail-wr1-f45.google.com with SMTP id
	ffacd0b85a97d-31119a33ea8so120788f8f.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 15 Jun 2023 01:44:51 -0700 (PDT)
Date: Thu, 15 Jun 2023 10:44:49 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZIrPgU6VBs723f07@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5/pngwpx/iNR1e9X"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.24.0
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


--5/pngwpx/iNR1e9X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is version 9.24.0 of drbd-utils. There have not been any changes
since the last RC. For your convenience the original announcement:

We accumulated a lot of minor improvements (updating the windrbd bits,
lots of documentation updates, user defined block sizes,...). The main
reason to finally get this out is that we added a new sub-command named
"repair-md". This currently contains 1 fixup where DRBD left meta-data
in an unexpected state.  This command is executed automatically before
an "attach", so there is no need to do it manually.

Please check the individual commit messages for more details.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/c331d6627ad1af44c4d2ec17b0ff6d5f8ba0e833
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.24.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:

9.24.0
------
 * windrbd: various fixes
 * v9: Support user-defined block-size
 * doc,v9: improvements all over the place
 * drbdadm,v9: implement drbdadm role <res:peer>
 * drbdadm,v9: pass --verbose/--statistics to drbdsetup status
 * drbd{adm,meta}: add repair-md subcommand

--5/pngwpx/iNR1e9X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmSKz34ACgkQRgmezyI6
myIdGQf+KrmNXslHLV6LkR6H1lb8hCk5NLQMN3E0y3tAWoYgzrUjXiwkWZ7Fcs1c
2p2hIOTc2ZS6i/hsFpZF9pCcKjMxgHKTAPPuFl/OzSPcqxh422HtX0wnNNRKjaug
PdLWIt5CNHDCGfqVzaYQpZKsJ2w/kXsP7GTqRpxhn4qstvSeuTuA0Z9DHCJFYMvc
DhYRujecYaJb8+uXFGNIw20okQAjuTBXM+KKktFZrq4gjhetS0eqbkzatQlOUZuT
TWSE6gITBX1qwprtRp7ukohTl1ssf3kHayNuUrdLMAuquqCQ2UWvLO5O245p8257
n0XMaDEMfSiNZ7YF1WQMFiEGNlkaMw==
=T6hB
-----END PGP SIGNATURE-----

--5/pngwpx/iNR1e9X--
