Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4C5E04202D6
	for <drbd-announce@lists.linbit.com>;
	Mon, 18 Jul 2022 08:12:58 +0200 (CEST)
Received: by mail-wr1-f45.google.com with SMTP id b26so15532669wrc.2
	for <drbd-announce@lists.linbit.com>;
	Sun, 17 Jul 2022 23:12:58 -0700 (PDT)
Date: Mon, 18 Jul 2022 08:12:56 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YtT56IpW1QwQSZ6n@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o/F2a8jSCwNIZ4oL"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.21.4
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


--o/F2a8jSCwNIZ4oL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD-users,

this is version 9.21.4 of drbd-utils. It is a bugfix release, but if things
worked for you so far there is no too urgent need to update. The fixes were
triggered by customers in rare edge cases like an uncommon drbd-proxy setup.
The second fix is for the sh-ip subcommand that segfaulted when IP
configuration was only specified on connection/path level and not on a more
global level like the on-section.

Regards, rck

GIT: https://github.com/linbit/drbd-utils/tree/9.21.4
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.21.4.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

 9.21.4
-----------
 * drbdadm,v9: fix potential segfault in postparse
 * drbdadm,v9: fix sh-ip when set on connection/path

--o/F2a8jSCwNIZ4oL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmLU+eMACgkQRgmezyI6
myI1Vgf/Todqwb+VhorR7AfL/6sE/oNHr51H2p2e9uUu7uQIunJgpYATlcvUfNYU
nNYS2DBxAenixF2dk5E/V2U8dKobgP+cVPsJqZcQF8xHZpIdJF9OEsGXPhkWOnNn
DwkDJTJZBRFpsE5hTQrxKbi8aHhlcOQhUmriyAVa1UTz6vu5QL/6v49DwMu4xy8V
Ns94aC++oDrBONLf/YOea8IVp+tXQPgFocr6yO/QjZnRjs3ghlYMiNJ476LA6Xsq
bfc+yhWEHsLPLZ2+IJMNyEeyq77RaVO6m77z3Rb7/WNNZgTnkZdhlesg+MTWaYW6
B5PcU2Dod0lcN5uD2BOigXKy8o3GDw==
=s5v0
-----END PGP SIGNATURE-----

--o/F2a8jSCwNIZ4oL--
