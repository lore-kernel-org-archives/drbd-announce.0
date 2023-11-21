Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D259B42036B
	for <drbd-announce@lists.linbit.com>;
	Tue, 21 Nov 2023 13:28:41 +0100 (CET)
Received: by mail-wm1-f54.google.com with SMTP id
	5b1f17b1804b1-4094301d505so22748035e9.2
	for <drbd-announce@lists.linbit.com>;
	Tue, 21 Nov 2023 04:28:41 -0800 (PST)
Date: Tue, 21 Nov 2023 13:28:38 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZVyidrdCcS/9sGU9@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CAeVYk83TLeIF1oK"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v1.4.0
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


--CAeVYk83TLeIF1oK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is drbd-reactor version 1.4.0. We did not find any problems in RC1,
for your convenience the RC1 announce below:

The main feature is improved DRBD events tracking that now survives
kernel upgrades. There has also been an improvement for the prometheus
plugin that it works with any IP family even if "ipv6.disabled=1" is set
on the kernel command line.

Note that this requires the latest drbd-utils (9.26.0).

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/9e76084cc06116331ad4a0210aa480ab649cd5c0
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.4.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
[ Roland Kammerer ]
* build: add MIB to examples
* core,events2: allow events2 reloading
* filter_map(..).next() -> find_map(..)
* build: bump drbd-utils to 9.26.0

[ Moritz Wanzenb=F6ck ]
* prometheus: ensure default works with any IP family
* ci: fix coverage instrumentation

--CAeVYk83TLeIF1oK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmVconMACgkQRgmezyI6
myJcTAf8DIJHBphhjXw9830/vikoXIprjD3RZDPJo/zRVGnDq0jRBgA49zqabPL9
dBPtWzaM4expun94EOPIx7GoOZTwnBtSGYPJ7CZolNvfKmAJQ4LJZlzONXtYDEwY
ivb012yFA/XMe4cvc3bigQontFx+1Yq4A+UuFr77oJtEmTRQmsWaxSdGhrQu4I0D
/MXUSSINia87+hYDYfhCV5Xto3kq37ReRC0qYk1JyF/Ee15C0rlaojG1BnAAewbf
RwO0OAz3QKaaz3sIlzflSe4m6+p3dUKJ47HMhb3Ip5O7PCZrmG8tIR04jRFdZmIx
XdEdCGBakcjWrkSh9LBJE/2WnsEn4w==
=zGCh
-----END PGP SIGNATURE-----

--CAeVYk83TLeIF1oK--
