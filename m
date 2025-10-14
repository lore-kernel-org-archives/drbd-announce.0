Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
	[209.85.167.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D7EF4160956
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Oct 2025 14:29:34 +0200 (CEST)
Received: by mail-lf1-f47.google.com with SMTP id
	2adb3069b0e04-59093864727so4038737e87.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Oct 2025 05:29:34 -0700 (PDT)
Date: Tue, 14 Oct 2025 14:29:32 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-reactor v1.10.0
Message-ID: <aO5CLN48tkUGVN7C@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="G30H/wgxM58VRM6q"
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


--G30H/wgxM58VRM6q
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is drbd-reactor 1.10.0. This version is a bit bigger than the last
ones, but contains some nice features and fixes. It also saw some very
minor changes since RC1, see changelog below. The noteworthy overall
changes:

We now support two node clusters if fencing is properly configured[1].
The split-brain avoidance policy is auto detected and there are no
visible changes for existing (i.e., quorum) users. There are edge cases
where we want to support two node clusters with fencing, but all users
that can should use DRBD quorum as avoidance mechanism instead.

The second change worth mentioning is that we now generate a stronger
dependency (i.e. BindsTo) for the drbd-promote@.service. Details can be
found here[2].

Starting with this release I will also GPG sign the release commit and
the git tag with the same key this mail and the PPA are signed.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/64b22be45fa288febc8deec6=
e4745dc1b7b0611b
TGZ: https://pkg.linbit.com/downloads/drbd/utils/drbd-reactor-1.10.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/

Changelog final:
[ Roland Kammerer ]
* drbd: fix error message
* ctl: improve status output
* promoter: print detected sb avoidance

Changelog RC1:
[ Moritz Wanzenb=F6ck ]
* ci: add CVE scan
* remove atty dependency
* deps: bump crossbeam-channel
* debian: do not clean Cargo.toml.orig

[ Roland Kammerer ]
* example: add tmpcontroller.sh
* ctl: don't use clap crate_authors!()
* promoter: simplify sleep calculation
* doc: minor drbd-reactorctl(1) fix
* nix: add clippy
* promoter: add support for 2 node cluster
* update .gitignore
* promoter: generate stronger promote service dep

[1] https://github.com/LINBIT/drbd-reactor/blob/master/doc/promoter.md#two-=
node-clusters-with-fencing
[2] https://github.com/LINBIT/drbd-reactor/commit/f592044ea5565c4471f138ad6=
3fa5a757cabf6b4

--G30H/wgxM58VRM6q
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmjuQiYACgkQRgmezyI6
myLxSAf/aFxAG+CjnuNJq+/n81sepKF4K7DsvnX65LLYSa0Q9NOiU9Ug/CsWsp0S
mdEaY8Qp656F4lubGgJukppp9/YOOtJiwnNtH31j6QhoObGxkPqik9rMHwElzKZV
+PSzcKoa0N4N+OWALDM477Dg1G/Ji/xInxd4DtC80ySiApIpYb7lnwYtuZJK3SKv
WICsh7HJpH6IqUt2oS+kKCpysO7truEo/V7SIKMwBhyYhwzotHFXioXi+HoYJlr7
8/ubiDwx95t31gfXvBG1nNsjBvW/LEGFtPs1djVCJlWGWa+UJ6G0EGAfKaTkDVWc
0pkSdGOwWTIqt+bxJv3C929x91LQKA==
=CJKr
-----END PGP SIGNATURE-----

--G30H/wgxM58VRM6q--
