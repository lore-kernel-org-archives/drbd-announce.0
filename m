Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
	[209.85.167.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 41016162339
	for <drbd-announce@lists.linbit.com>;
	Mon, 20 Oct 2025 16:49:35 +0200 (CEST)
Received: by mail-lf1-f52.google.com with SMTP id
	2adb3069b0e04-57d5ccd73dfso4221713e87.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 20 Oct 2025 07:49:35 -0700 (PDT)
Date: Mon, 20 Oct 2025 16:49:33 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-utils v9.33.0-rc.1
Message-ID: <aPZL_euhZ0j8rlm1@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xHkFOoKtcirAUWsf"
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


--xHkFOoKtcirAUWsf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the first RC of the upcoming version 9.33.0. It contains
improvements and fixes all over the place. The main reason for this
release is that other projects depend on some of the fixes, but there
are valuable changes on its own like the improved compatibility between
DRBD8.4 and DRBD9. We need to be careful when DRBD9 finally lands in
upstream Linux to not break user space, and this is an important step in
that direction.

Please test, if we don't find any issues the final release will be about
a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/672ea1103c00b4c0e83a574b9bf7ba44e401f357
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.33.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
9.33.0-rc.1
-----------
 * drbdsetup,show: show device options in json output
 * drbdsetup,show: always show defaults in json output
 * drbdadm,create-md: avoid device UUID regeneration
 * drbdadm,create-md: do not reset effective-size
   on format conversion.
 * drbdmon: secondary --force and various improvements
 * all: various v8 v9 compatibility improvements
 * drbdmeta: allow bitmap granularity

--xHkFOoKtcirAUWsf
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmj2S9oACgkQRgmezyI6
myLmiAf+LJgcIUZ+MptaocFa7yqNXk5vyKcFMxQkPEAS8uOR22TthhIuS9sQjkFx
c5HBhD7ozTQHea2S1L4nXPCIeQkYAac9warNaJJR7+b3tXCR1xkM2NmFP4McGC7I
sOua1XzvgbdNTdY5b8vGE8cCBogrqj47btRzJ9jPsSjglWT1Hymsq8ujxuxiiij0
8suL0fW1mtRi9e7pH2s6D52mI1yXRS/GgE+8y9qLvH+YdWu4LeBmsLnhAKIpqwTm
UaZ4TwmgzRqBqqNZ1nrr8FvTnpos7IzGgt3n3yhVePSHmnYJaeX2R+AuhUm0/5Ry
QkjgThT5kRVO45/f0crsODzIw+hXqQ==
=zzxP
-----END PGP SIGNATURE-----

--xHkFOoKtcirAUWsf--
