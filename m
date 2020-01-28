Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 9FFE942011A
	for <drbd-announce@lists.linbit.com>;
	Tue, 28 Jan 2020 11:36:28 +0100 (CET)
Received: by mail-wr1-f44.google.com with SMTP id a6so786443wrx.12
	for <drbd-announce@lists.linbit.com>;
	Tue, 28 Jan 2020 02:36:28 -0800 (PST)
Date: Tue, 28 Jan 2020 11:29:36 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20200128102936.GD322@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HcAYCG3uE/tztfnV"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils-9.12.0rc1
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


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the first release candidate for the upcoming 9.12.0 release.

As usual, this include low level tools for DRBD 8.4 and 9.0 of the DRBD
kernel module.

There is no urgent need to update, but the OCF resource agent learned
some nice tricks.

Please test and report bugs. As usual, if we don't get negative
feedback, we release the final version in about 1 week from now.

Best, rck

9.12.0rc1
--------
 * drbd.ocf: new wrc_timeout param, fail on attach failure,
   remove_master_score_if_peer_primary param,
   fail_promote_early_if_peer_primary param, improved helper logging
 * drbdadm,v9: fix dumping meta-disk in corner case
 * crm-fence-peer.9.sh: fix Pacemaker 2 compat

https://www.linbit.com/downloads/drbd/utils/drbd-utils-9.12.0rc1.tar.gz
https://github.com/LINBIT/drbd-utils/commit/2fe72920d827173ba8175fc8102272f99805a470

--HcAYCG3uE/tztfnV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAl4wDQ0ACgkQRgmezyI6
myJa2AgAkv6+QFiC35la3h3LP1MEn9msUr10A7Ib5oJoHux0grkr4KVVV8bItCSe
MTBnHKCjLdUjJ0P/c805b5GM6dclqhpwccDazXbvRvrUEI0k0mdCTw3p/2UQaDG4
mA/4qcNH6aUf1rbynV48WUXS5mWf1LxNSfAIWAmvCvM7WYXQz5ktTg+xlKMpleNH
CKxwFt/DJVuuuw1+KlqAs9+DHFJ1sKDiKbma7ptfc/DSRbfnSoWnFRZeNw02H7lV
lbgRxziACYxlCeSUgvmpYd/aPyoTEWQUTpHSPVCeA575lp1cQdjwCNIIIzevmLh8
n9nb1LMoORvg7RcA4ziukoHsAj9PkA==
=vNZz
-----END PGP SIGNATURE-----

--HcAYCG3uE/tztfnV--
