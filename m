Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4FA98420306
	for <drbd-announce@lists.linbit.com>;
	Mon, 26 Sep 2022 13:20:05 +0200 (CEST)
Received: by mail-wr1-f54.google.com with SMTP id x18so9674867wrm.7
	for <drbd-announce@lists.linbit.com>;
	Mon, 26 Sep 2022 04:20:05 -0700 (PDT)
Date: Mon, 26 Sep 2022 13:20:03 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YzGK4xKyRkqvwegp@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tI1HokQczjcYdXF1"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.9.0-rc.3
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


--tI1HokQczjcYdXF1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is RC3 of the upcoming drbd-reactor version 0.9.0. There was only
one commit in the promoter plugin that now does not run "systemctl
freeze" with all services as arguments in one call, but calls freeze for
every service individually. That allows is to filter service we don't
want freeze actions like in mount units and we can write better
warn/error messages if we split that up into several calls.

No big change, and only visible if one enables freezing, but sill a
change I want people give the chance to test before the final version.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/183ba9ff477536e7e3acdcec=
41d97a9fe4153cad=20
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.9.0-rc.3.t=
ar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--tI1HokQczjcYdXF1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmMxiuAACgkQRgmezyI6
myLHOwf+O3Zgf3sfy+Fu8a3nvYlr4cTz+vn/5fG4yVkmcOOWWOjNvDSZug2pZbOk
hsz+gBeIDrYkrXCawAYqRJcH9rMQayMwuzElhbNsbFp8BlJE6hGWcXgemu7L98Gk
9yivjKprC0SpvZe0tWgILlWMaqWT3S6D8XAGxgjmVV32H9XiyEOTdVsGeGcIBv2p
fS6o4vyin6OlLL1RjhGK4Ni/Aj3wAHPAIKtRhCtfdIG5Y+KAyDRCw5KC6Rh728wC
97PKsWWTIhxhkXYMtN+nPbzPLaiK24eNKrIj3JU6sQOWVNv4CrR3vwk9bs3gsw6a
uAiUjgdt5EOyihSG/1rH/qBSuB2luQ==
=T/uM
-----END PGP SIGNATURE-----

--tI1HokQczjcYdXF1--
