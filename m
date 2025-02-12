Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
	[209.85.208.174])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id BFA60160938
	for <drbd-announce@lists.linbit.com>;
	Wed, 12 Feb 2025 09:29:15 +0100 (CET)
Received: by mail-lj1-f174.google.com with SMTP id
	38308e7fff4ca-30738a717ffso57298271fa.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 12 Feb 2025 00:29:15 -0800 (PST)
Date: Wed, 12 Feb 2025 09:29:10 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-reactor v1.8.0
Message-ID: <Z6xb1hdm8rS_JEtj@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cV9IFpB+6xD1eZaw"
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


--cV9IFpB+6xD1eZaw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is drbd-reactor version 1.8.0. There have not been any bug reports
since the last RC. The initial announcement for convenience:

All in all reactor proved to do what it should, but there is one
improvement for the promoter plugin: We had a user that "drbd-reactorctl
disabled" a resource where the demotion of the DRBD device did not work
for whatever reason. Then the user enabled the resource again, but the
services on top were not started. The explanation is simple: The device
was already Primary, so drbd-reactor never saw a "may_promote:yes" in
the events2 stream and well, did not react.

New behavior: On plugin start we generate the systemd target templates
as usual, but we also check if we are already local Primary. If so, we
also start the systemd target unit. This does not hurt and might help in
such "things half started" scenarios.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/44c77aacc35a2a30f7c1000019c351b59c5189c5
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.8.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:

[ Roland Kammerer ]
* doc: mv on-{stop,drbd-demote}-failure
* promoter: start services on activation
* doc,promoter: note about LINSTOR
* build: mv .cargo/config.{,toml}

--cV9IFpB+6xD1eZaw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmesW9EACgkQRgmezyI6
myIuGQf9HtdcxLfZrhtPU5YjNBt9kIFD4Vq8kYDxh4ZaY02wJXsvEV/DoDp1dPCH
WKtGAM5dajWczBukqbYUeD7TxpmU73/zgRyV4FQlmki+wy4YWgR/qIh+APiw/c3t
ZFA+bKcwyqyXE7JTQXbyUs6SRdOZFfZ5jp3rBCnf+lKrrNtDFUB8o/aLVDkwIQOB
/WJD7+Q2cw7z5TPpzj6O2lxysbEqbqHgVTYFkHLYdjU/ugPPwBw2Jt2gR5+V4HIB
gLQnsevu5huumqyIWwTu2exMnFIciv7Lk65WGPoTE9WHzK19F33FaZjjg7zth7qN
PDB0GfJWZdROcBjiKFnZCF34VXw8EQ==
=cmVM
-----END PGP SIGNATURE-----

--cV9IFpB+6xD1eZaw--
