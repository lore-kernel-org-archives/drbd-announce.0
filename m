Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 08E5C4202C2
	for <drbd-announce@lists.linbit.com>;
	Fri, 18 Oct 2024 12:18:14 +0200 (CEST)
Received: by mail-lj1-f178.google.com with SMTP id
	38308e7fff4ca-2fb3c3d5513so21205981fa.1
	for <drbd-announce@lists.linbit.com>;
	Fri, 18 Oct 2024 03:18:14 -0700 (PDT)
Date: Fri, 18 Oct 2024 12:18:09 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: drbd-utils v9.29.0-rc.1
Message-ID: <ZxI14db2R5TMw1oH@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="I7wKeTHJWFXaHDJf"
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


--I7wKeTHJWFXaHDJf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is RC1 of the upcoming 9.29.0 release. It contains many fixes and
improvements ranging from fixed segfaults, fixed undefined behavior,
fixes for bugs that only triggered on arm64 to improvements for our
systemd templates and new features in drbdmon. If you have not been
bitten by any of the bugs, there is no too urgent need to upgrade,
still, the fixes and improvements are worth it.

Please test, if we don't find any bugs I will do the final release in
about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/1bbd986336341b753b0613e9306067a8dfb062c0
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.29.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:

9.29.0-rc.1
-----------
 * drbdmeta: fix initialization for external md
 * build: allow disabling keyutils
 * tests: export sanitized environment
 * drbdmon: various improvements
 * build: add cyclonedx
 * drbsetup,v9: fix multiple paths drbdsetup show --json
   strictly speaking breaking change, but maily used internally
 * events2: expose if device is open
 * drbdadm: fix undefined behavior that triggered on amd64
 * shared: fix out-of-bounds access in parsing
 * drbsetup,v9: event consistency with peer devices
 * drbdadm: fix parsing of v8.4 configs for compatibility
 * drbdmeta: fix segfault for check-resize on intentionally diskless
 * drbd-promote@.service: check if ExecCondition is available

--I7wKeTHJWFXaHDJf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmcSNdQACgkQRgmezyI6
myLxCgf9HdGio2UAZdLPQ+kDwdWVlJ1llmxliiL9zKqckqEtedoh/oOeGQIoPCeX
tomHJtNoaA87t5FPjbTjolskYD0Z0q03kiMbBggXB5gg1P9iVet1FR0VUnYdujdW
D4cwiTcKRNLAP2BcCKjGBZxavjKIy+DjJjaR5DLCT4qC+oqGj+xnreyT6gY7c5uC
mwfo2DvsTo1Okql4vFDXbFLkPRotjxjoFvK6mr8Vjo63OLLBp3prxrpfla9zx/1I
MKIHGWNqrC/I+zmqmWx3W1b3c1RmeKnsKBnyGI1n3LlokPrW98SA8hNxbsjKPoYK
5CKRfj3UT+Rv62t9H39E76ENROnqhA==
=PN+X
-----END PGP SIGNATURE-----

--I7wKeTHJWFXaHDJf--
