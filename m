Return-Path: <roland.kammerer@linbit.com>
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com
	[209.85.161.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E54E942066E
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Mar 2023 14:11:59 +0100 (CET)
Received: by mail-oo1-f51.google.com with SMTP id
	h18-20020a4abb92000000b00525397f569fso2304505oop.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Mar 2023 06:11:59 -0700 (PDT)
Date: Tue, 14 Mar 2023 14:11:53 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZBBymVo86gtvrgs8@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5qZXdkgQ72n+8neX"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v1.0.1
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


--5qZXdkgQ72n+8neX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is a minor bug-fix release for drbd-reactor. If you happened to use
OCF agents it could have been that environment variables generated from
OCF options have not been correctly escaped. We saw that on old versions
of systemd (e.g., RHEL7-alike), but now we should have proper escaping
on old an new systemd versions.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/releases/tag/v1.0.1
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.0.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--5qZXdkgQ72n+8neX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmQQcpUACgkQRgmezyI6
myK5eQf/c6fJsQ2IBO/T2KbMjGZoFT9i/B+Tm7wsDw53VHSMc/obdQoIUYXhuMlp
RPXKmUEaUj3+4UM6yHkAHjy8is7IgipB8p2oNELnEaXiRNxfAQ8mYJXe1zxtldhg
J44cgcePNt7VTJqAP6nwGI5z2ZW9KpXxjM9HQcKjwOUckB7f4MpggN82wp/Dufpl
gocuNZ7/QEuIwubAomFqvL8C68IEsQXwpv9/KAI5x08pKnn40XxpAlT1qtmMuqEk
7SYQg34PAYfBPCGhmSrx++RbRfENeGPu9qei2zd4x4YCpECT1EXmxGRcIAsQErcJ
cshbW7K79Q1SD0zf5PZbJsRPap+Cmw==
=u4Bp
-----END PGP SIGNATURE-----

--5qZXdkgQ72n+8neX--
