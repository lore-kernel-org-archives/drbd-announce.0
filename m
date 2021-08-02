Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 977B342060D
	for <drbd-announce@lists.linbit.com>;
	Mon,  2 Aug 2021 14:58:36 +0200 (CEST)
Received: by mail-wm1-f41.google.com with SMTP id k4so10357435wms.3
	for <drbd-announce@lists.linbit.com>;
	Mon, 02 Aug 2021 05:58:36 -0700 (PDT)
Date: Mon, 2 Aug 2021 14:58:35 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210802125834.GO1404@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yVhtmJPUSI46BTXb"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.4.3
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


--yVhtmJPUSI46BTXb
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is version 0.4.3 of drbd-reactor which fixes some smaller bugs in
the promoter plugin:

- OCF arguments are now split like shell words, and not just by white
  space. This allows arguments such as k=3D"value with spaces".
- drbd-promote template got fixed for multi-volume resources.
- use of drbd-service-shim.sh (requires newest 9.18.2 utils) for
  drbd-promote override. This fixes SELinux shitting its pants.

If you don't use OCF agents, don't have multi volume resources, and
don't have SELinux enabled, you don't need to updated immediately,
otherwise you should.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/8dd830703ed45f51b0c28b56=
4d013e56199e00b8
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.4.3.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changes:
[ Roland Kammerer ]
* debian: add source/format
* doc: add snippets dir to FILES
* README.md: add info about autoload
* ctl: add .flake8
* promoter: use drbd-service-shim.sh

[ Moritz "WanzenBug" Wanzenb=F6ck ]
* pkgs: create /etc/drbd-reactor.d from deb/rpm
* promoter: split ocf args using shell word splitting
* promoter: fix drbd-promote template in multi-volume scenario

--yVhtmJPUSI46BTXb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmEH6/YACgkQRgmezyI6
myKllgf/ZR3yu1HJBfKvhrldEZdgp8c+Kqy4k+Gju+0ewiT4eCiXQsUQAOm0GzMk
Eh6wyE+NpMkscMBbVRvxpb6g0O+Ii3IYpqMN61HheZGEwdHLBpYgp58GYlk9fbJq
ZsPI18s1mwy/52Xw1GcVY9AdEOQtjQPqOfs3m9gg69qZCHH74rvOJgyEWXVSa8JP
ZFlAgJFxT3o7SYUvy4kAE+W7WmuGRiaDsFSXnyAyXQ2vJIOA6PZ5PGZfFZX8js46
Ra+tlHiRGhyoxtxNN534wmp+XHFhATBAI1cuA3vk68+612hgDxhDXvWoIfWOQcUA
eD+9WFpc0bteDyWpGr1enzuCgxIKCA==
=vjST
-----END PGP SIGNATURE-----

--yVhtmJPUSI46BTXb--
