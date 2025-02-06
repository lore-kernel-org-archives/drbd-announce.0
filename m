Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
	[209.85.167.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2FE3D16B867
	for <drbd-announce@lists.linbit.com>;
	Thu,  6 Feb 2025 10:47:25 +0100 (CET)
Received: by mail-lf1-f41.google.com with SMTP id
	2adb3069b0e04-54411e3c610so193005e87.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 06 Feb 2025 01:47:25 -0800 (PST)
Date: Thu, 6 Feb 2025 10:47:20 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: drbd-reactor v1.8.0-rc.1
Message-ID: <Z6SFKGCHtKIgTTAv@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ceYlgwwBIl+i7xJa"
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


--ceYlgwwBIl+i7xJa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is RC1 of the upcoming drbd-reactor version 1.8.0. All in all
reactor proved to do what it should, but there is one improvement for
the promoter plugin: We had a user that "drbd-reactorctl disabled" a
resource where the demotion of the DRBD device did not work for whatever
reason. Then the user enabled the resource again, but the services on
top were not started. The explanation is simple: The device was already
Primary, so drbd-reactor never saw a "may_promote:yes" in the events2
stream and well, did not react.

New behavior: On plugin start we generate the systemd target templates
as usual, but we also check if we are already local Primary. If so, we
also start the systemd target unit. This does not hurt and might help in
such "things half started" scenarios.

Please test, if we don't find any bugs the final release will happen in
about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/7a6f9c29fdb3bae7324a76b5a82b65805b87abcb
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.8.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:

[ Roland Kammerer ]
* doc: mv on-{stop,drbd-demote}-failure
* promoter: start services on activation
* doc,promoter: note about LINSTOR
* build: mv .cargo/config.{,toml}

--ceYlgwwBIl+i7xJa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmekhSUACgkQRgmezyI6
myKjLwgAtCeumEN3Kn/pOsx4y2j+9OyQ+3H38mhzL3q8k3j3P7qbIFLoBRTgMj+B
SyJ3REMX7syKAvnArr6mAIRkftEIfwTOrA6gNCvIGLrFtX2wxPmoKEMpHLdppS6w
S2QlXr+6v5/ZuUO1eadDJ+I7GJiMg8Ngrhs/t+K55dKKKDsEJJudEQlkbA2lTk73
S5WIbl8kj3jkm7fMTDHyZGzdFUp1zBj9eWmRkU0IsDPodYas+7rIVHX/1+GgcyfO
7OUOFAIySX8+JaNV6I5/O4P170JQOFTV6Ma/D7MR5Ajmae0B3P8pc8qSveUHDDW9
EXEvBOHxY5K7i4VLMINWseC4QyA7zA==
=cbAJ
-----END PGP SIGNATURE-----

--ceYlgwwBIl+i7xJa--
