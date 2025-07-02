Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 5C5DF16090D
	for <drbd-announce@lists.linbit.com>;
	Wed,  2 Jul 2025 12:33:11 +0200 (CEST)
Received: by mail-lj1-f178.google.com with SMTP id
	38308e7fff4ca-32aabfd3813so43253341fa.3
	for <drbd-announce@lists.linbit.com>;
	Wed, 02 Jul 2025 03:33:11 -0700 (PDT)
Date: Wed, 2 Jul 2025 12:33:09 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-reactor v1.9.0-rc.1
Message-ID: <aGUK5dieAg-VnTJF@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3FX0BaYxYxvWjqGE"
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


--3FX0BaYxYxvWjqGE
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

This is the first RC of the upcoming 1.9.0 release. It mainly contains
one new feature related to what is known as automatic switch back:

So far when preferred-nodes were set they also were taken into account
when a service was already running on a lower priority node and the
higher priority node joined later. In this case the lower priority node
stopped the local service and (most likely) the higher priority node
took over.

It is a valid use case not wanting to switch back if services are
running and a higher priority node joins. One might want to keep the
running services on the lower priority node. This is now implemented via
preferred-nodes-policy, which can be "always" (default and old
behavior) or "start-only".

If we don't find any issues we will release the final version in about a
week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/04cb730f6ba7c4d9b70f724b=
a1acc5ec60f936d9
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.9.0-rc.1.t=
ar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
[ Moritz Wanzenb=F6ck ]
* ci: use git fetch instead of archive download

[ Roland Kammerer ]
* promoter: improve log message
* promoter,doc: document uname -n
* promoter: add preferred-nodes-policy

[ ggqshr ]
* Update promoter.md

--3FX0BaYxYxvWjqGE
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmhlCtsACgkQRgmezyI6
myKhrQgAqkCXyGeKiZNI+VDPMpRKA/xvVVN2r9B3MgkSgx7UXpoz3a5KH1ff0JoI
GRi3ev0OcvQHbMFkj0RV9W8hlp4yZk5sLLRFqJc9rZk3QozNRvXq7QvYj5m4dp4C
ue0ogW6v8c2EwH+dTr92GAnGbImYJ7I0wppKb/DP8hA6kqUpI5ufGshtkcfTk0SP
j+8QMwVVN3Q+9fC4TIQZtmQ988PKanPNW5h9n2xBWBRf0cY6ITNBSfv53mWGXYfB
j1QvFuFh/dV77/B4q2An12by/oo27rf4Ga7GDAJ87WH4OoM5Igb48r+lPUeVQFRA
ltXk8RcJS8Ktx5RGmmEkfGm3VtxQ2g==
=dKM/
-----END PGP SIGNATURE-----

--3FX0BaYxYxvWjqGE--
