Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
	[209.85.208.173])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id BF0DD16094D
	for <drbd-announce@lists.linbit.com>;
	Tue, 17 Mar 2026 09:34:23 +0100 (CET)
Received: by mail-lj1-f173.google.com with SMTP id
	38308e7fff4ca-38a42a0d7f7so4575001fa.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 17 Mar 2026 01:34:23 -0700 (PDT)
Date: Tue, 17 Mar 2026 09:34:21 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-utils v9.34.0
Message-ID: <abkSDZLb2sx6Ib8S@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3PShSInfYlZ2RjTE"
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


--3PShSInfYlZ2RjTE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the drbd-utils version 9.34.0. Since RC1 we fixed a regression
in drbd-meta introduced in 9.33.0. All users of 9.33.0 are encouraged to
upgrade. Other than that, from the RC:

It contains improvements and fixes all over the place. The main reason
for this release is the release of DRBD kernel module 9.3.1 which
introduced two new parameters, namely "discard-granularity" and
"tie-breaker".

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/7fe34d56a7264cfc92fc5270471827bb3f7773e6
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.34.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
9.34.0
-----------
 * drbdadm: fix adjust for a v8 config with a v9 drbd kernel driver
 * drbdadm: fix segfault if we don't know about peer devices
 * drbdsetup,v9: suspend-io: add --bdev-freeze option
 * drbdadm,adjust: split disk-options into early/late stage
   based on bitmap direction
 * drbdadm,adjust: fix segfault on _unknown options
 * drbdmeta: create-md: add --initialize-bitmap=set-all
 * drbd: add per-peer_device tiebreaker config flag for quorum
 * drbd-utils: add discard-granularity device option
 * drbdmeta: fix segfault during apply-al

--3PShSInfYlZ2RjTE
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmm5EeoACgkQRgmezyI6
myLRygf+KhhgbQtr+Pye/8w2/2k0QIJvsvCkZj9vgawWCn8jTiwnVi41R5CA/fzu
HNFL/MrX+SgdXivM0misFR+qWGXpLL85J3p+0WZLalex3farBSWj/wEIFW77LbEh
O6Z36NnhA3yNabiSxGTTQU+271AdrChaN++MbrNsg0vKopYYoOFOxyrH7dlpj7ty
h9Rd/NCUSDm79YFe9OGx8ycfxj473D7Y9Y/awwAmIv4qOYqt7wek9K4mQF+K9pVb
9289zRgdHoc4574nd3hDu4QokbwGw2DrQDX7DvFScm7jRix6zCiPhLbCFkPsaIoj
aRm8S1Taz3+8Fs88UNWbnqElpMlrXg==
=Aur4
-----END PGP SIGNATURE-----

--3PShSInfYlZ2RjTE--
