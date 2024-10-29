Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
	[209.85.167.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E2830420326
	for <drbd-announce@lists.linbit.com>;
	Tue, 29 Oct 2024 13:45:17 +0100 (CET)
Received: by mail-lf1-f43.google.com with SMTP id
	2adb3069b0e04-539e13375d3so6070881e87.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 29 Oct 2024 05:45:17 -0700 (PDT)
Date: Tue, 29 Oct 2024 13:45:12 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: drbd-utils v9.29.0
Message-ID: <ZyDY2E5rNLAujqNG@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="01DRqcKli1R9Ybb5"
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


--01DRqcKli1R9Ybb5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is version 9.29.0 of drbd-utils. We did not find any bug since RC1.
for your convenience the announcement of RC1:

It contains many fixes and improvements ranging from fixed segfaults,
fixed undefined behavior, fixes for bugs that only triggered on arm64 to
improvements for our systemd templates and new features in drbdmon. If
you have not been bitten by any of the bugs, there is no too urgent need
to upgrade, still, the fixes and improvements are worth it.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/28e2ab938fe5e99fdcb27c0c393a9f2a3fb8fdee
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.29.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:

9.29.0
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

--01DRqcKli1R9Ybb5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmcg2NQACgkQRgmezyI6
myICZgf/S6ucM8y7Rhbrf4SHaY0j0oqftYfkbC36bQ3FkPjKE42J/Hj/3ZYspgjc
c2i2L+QeByvnU2/Ov2ZMYIxbHHpifu6q/ebSO69BYefFMe1lvKNMSXXTATaDc+a4
biJPTr97VC9mOamr7ar2e79Y0js1DAJIJpnoSI5v1K/s3FyHXQZNp9ehzVPiVWhn
/i4OUj8GBfPypRJGfx/gB7aCzAXvOPsk2SUu0PqlzNN631s/HcUgZ40l9xteTZid
qcJiVJxELLXN2it/t3Bl0A+gLHKviBsmWqltUluatHhutlaQ12uW1F0ngyrHhn/V
Wk7tCXkHWf856jaX3G/c5K0n3v4I5Q==
=Lhdt
-----END PGP SIGNATURE-----

--01DRqcKli1R9Ybb5--
