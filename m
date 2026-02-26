Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
	[209.85.167.46])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 20C12160911
	for <drbd-announce@lists.linbit.com>;
	Thu, 26 Feb 2026 14:50:13 +0100 (CET)
Received: by mail-lf1-f46.google.com with SMTP id
	2adb3069b0e04-59e5eaa491cso1100748e87.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 26 Feb 2026 05:50:13 -0800 (PST)
Date: Thu, 26 Feb 2026 14:50:10 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-reactor v1.11.0
Message-ID: <aaBPkjS_UBxaQnIb@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d0iWIgADj8QPCvUN"
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


--d0iWIgADj8QPCvUN
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is drbd-reactor version 1.11.0. There has been a minor new feature
that allows disabling adjusting of DRBD resources on startup[4].

The promoter now supports an on-disk-detach policy[1]. When the local
DRBD disk on a Primary gets detached, the new "fail-over" policy stops
services if an UpToDate peer is available, triggering a failover. The
default ("ignore") preserves existing behavior.

We fixed initial startup ordering on intentionally diskless nodes[2].
Diskless nodes tend to be ready faster and could win the startup race
even when they shouldn't. We now also consider disk state during initial
startup.

drbd-reactorctl status learned a --json flag[3] for machine-readable
output.

Please test, if we don't find any bugs we will release the final version
in about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/8fb5c64950ed07e6f21d6089=
1abc7168ff99d806
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.11.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/

Changelog:
[ Christoph B=F6hmwalder ]
* grafana: add $resource variable to dashboard
* doc: add configuration options for prometheus exporter

[ Moritz Wanzenb=F6ck ]
* ci: replace gitlab internal registry image
* ci: use custom trivy image
* promoter: add adjust-resource-on-start setting

[ Roland Kammerer ]
* doc: add info about systemd symbols
* core: add toml/target monitoring
* fix minor linter warnings
* ctl: add json output for status command
* promoter: fix initial startup on diskless
* promoter: add on-disk-detach policy for local disk failure
* ctl: rm runner from template
* all: switch to captured identifiers

[1] https://github.com/LINBIT/drbd-reactor/commit/2d3ebad08ea1cb632166d7cc0=
d78fc4a74349926
[2] https://github.com/LINBIT/drbd-reactor/commit/2539fc95f0ae8854b26c6c137=
b4983565ba33956
[3] https://github.com/LINBIT/drbd-reactor/commit/a19a50794c98984ed8f79bc73=
5b0b31443a76baa
[4] https://github.com/LINBIT/drbd-reactor/commit/cbd79508cd432f26dc6ea095f=
7c3e43449985572

--d0iWIgADj8QPCvUN
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmmgT5AACgkQRgmezyI6
myJdnwgAjVa3HCYkK+0zfdjI2uUctWzJ50lbkwqH6uJvA9t7s2CRyKmrfJXD5R5H
5jSQx1Vgw2Go7ZwK8YfWFhrcZPvv6DD9XKuCBzo/oFbFdPrpTrWrV2C7Dji6uEsT
AubKvMtwAsyRRGe1piqU70Rh5kEnTa5DVW5pkRaEYTVxLxyeawUwTAFF9f/8afb1
ORdFn4ZDz1v1nn2FI8UBxSNKzZ6JpFWq7UgA+2RG5Ik9QMBQOMTlJPSvKDhiGLDO
t2E23lgWizyH8FlVXBnm8IT/YIugZo8HbVSUQ0aY3z2K4Wdy82nGTzMsjM0viwaV
R4BzmMna+ez5daelScPHi0gKxiNnVQ==
=gTz8
-----END PGP SIGNATURE-----

--d0iWIgADj8QPCvUN--
