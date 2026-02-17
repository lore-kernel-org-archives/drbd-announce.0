Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
	[209.85.167.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 585AA160872
	for <drbd-announce@lists.linbit.com>;
	Tue, 17 Feb 2026 13:27:43 +0100 (CET)
Received: by mail-lf1-f44.google.com with SMTP id
	2adb3069b0e04-59e614b3dbcso4364442e87.2
	for <drbd-announce@lists.linbit.com>;
	Tue, 17 Feb 2026 04:27:43 -0800 (PST)
Received: from localhost (static.57.82.181.135.clients.your-server.de.
	[135.181.82.57]) by smtp.gmail.com with ESMTPSA id
	2adb3069b0e04-59e5f5635ddsm3755789e87.12.2026.02.17.04.27.40
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 17 Feb 2026 04:27:40 -0800 (PST)
Date: Tue, 17 Feb 2026 13:27:40 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-reactor v1.11.0-rc.1
Message-ID: <aZRevMyHXxZiy-4c@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7L7oEey0/p5kyqDR"
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


--7L7oEey0/p5kyqDR
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is the first RC of the upcoming 1.11.0 release. The highlights:

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

GIT: https://github.com/LINBIT/drbd-reactor/commit/12e4b4ff3cd4f0bcb5818440=
c9c8bfcafbe93da0
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.11.0-rc.1.=
tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/

Changelog:
[ Christoph B=F6hmwalder ]
* grafana: add $resource variable to dashboard
* doc: add configuration options for prometheus exporter

[ Moritz Wanzenb=F6ck ]
* ci: replace gitlab internal registry image
* ci: use custom trivy image

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

--7L7oEey0/p5kyqDR
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmmUXrgACgkQRgmezyI6
myKw6wgAr6DI/gA/HrbIwGb3CByjNbD+3JxKvIKPLRlw3Gj8BFfcnWPTaL5szDAk
J4LeHPOXzkFnoMox7/8bxZY8/cLLI4MHfmCjuKDPvE76tZottFQkAfJ3uFeDf/GP
icemd9n0+7re3rEQDDyxHv9og1yKq9u4iFDOBtHgDczUYfvzz7wgjsQJOj4Nj+if
0DgWmyOMumX/QLKznU95C+y4+g/ACHtM57i06Fwrr278Rok6zK/GuYp53Y1comuk
NgG/O0MCiHOWAbZ43uAam5wIlCrBFi02SFqDPkbMt0f2N2g3p18AVDthCZnlQNW4
7p3ZgOw713Plo0BKp/YvyxirwFoK4A==
=HI8b
-----END PGP SIGNATURE-----

--7L7oEey0/p5kyqDR--
