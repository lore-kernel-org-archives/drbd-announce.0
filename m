Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 271DC420964
	for <drbd-announce@lists.linbit.com>;
	Mon, 21 Nov 2022 13:23:12 +0100 (CET)
Received: by mail-wm1-f45.google.com with SMTP id
	t25-20020a1c7719000000b003cfa34ea516so10266956wmi.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 21 Nov 2022 04:23:12 -0800 (PST)
Date: Mon, 21 Nov 2022 13:23:10 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Y3ttroeWuESrqNUO@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6osD6E/7Khhy4DZ0"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.10.0
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


--6osD6E/7Khhy4DZ0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is version 0.10.0 of drbd-reactor. The main changes should be under
the hood and not really noticeable by users.

Because the Python toml parser library every distribution ships is
broken and this is a Rust project anyways, I rewrote drbd-reactorctl in
Rust. This should contain all the functionality you know and fixes some
bugs on the way like actually never unmasking masked services on
"drbd-reactorctl evict" and some minor issues like that.

A user visible change is the output of "drbd-reactorctl status" for
promoter plugins. So far we just called "systemctl list-dependencies"
for the generated systemd target, which printed the service tree in
"random" (alphabetical?) order. While that has no consequences, it
confused users as one would expect the order to correspond to the
start=3D[] list configured for the plugin. Printing that tree ourselves
gave us the opportunity to also annotate the output. This now contains
information about the systemd/cgroup freezer state of a service.

Regards, rck

GIT:
https://github.com/LINBIT/drbd-reactor/commit/7932d466fb6e504a035d496158b92=
c6b361c1fce
TGZ: https://pkg.linbit.com/downloads/drbd/utils/drbd-reactor-0.10.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
[ Roland Kammerer ]
* promoter: check on-no-data-accessible
* doc: fix quorum settings
* ctl: fix enable help text
* completion: trigger make tabcompletion
* ctl: rewrite in Rust
* ctl: improve status for promoter
* prepare v0.10.0-rc.1
* ctl: use libc signal defs
* ctl,prometheus: fix template
* clt,prometheus: try ipv4 in case of anylocal
* rm .flake8
* clt,evict: only print name if promoter

[ Moritz "WanzenBug" Wanzenb=F6ck ]
* prometheus: use IPv6 anylocal address by default

[ Lars Ellenberg ]
* spelling fix for losing quorum
* add systemd dependencies on dbus and polkit

[ Amir ]
* Update README.md

--6osD6E/7Khhy4DZ0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmN7basACgkQRgmezyI6
myIdDgf/Su0QulVbI8I5ahz7tDbDNJJrsRwBa0BMa5d9Ktlvz3k+sGWsDRHyuFG7
Zm4eApiLhp0X2Hva5TtkxExbxhScoWSQaB+TCRS0LYW1/k8R5twMeFN+/IgApdKT
ypXFXTcIRSdmdh0OnU6H6AE0iZMKs6AfQALJCxyQ6euhjDn7DSIIttZpdEwR0YxF
2rXmALFWwAOmEZqYLPLONEBZkhr9ZJRd0rw4Dw0DRbmd6jc/5wVADLp2AtNPHAWP
UbY43nvrKnSMElZZCACqAggGvurEXfjnfJjR24Uu/loD17qLhJXbYM+7LwAFWMZl
lQqDah4SIbH+ZQ2QzYntR+0mLovQIw==
=HLlk
-----END PGP SIGNATURE-----

--6osD6E/7Khhy4DZ0--
