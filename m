Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B79534208A0
	for <drbd-announce@lists.linbit.com>;
	Fri, 19 Nov 2021 10:14:26 +0100 (CET)
Received: by mail-wr1-f50.google.com with SMTP id i5so16994422wrb.2
	for <drbd-announce@lists.linbit.com>;
	Fri, 19 Nov 2021 01:14:26 -0800 (PST)
Date: Fri, 19 Nov 2021 10:14:24 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20211119091424.GH1745@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="C1iGAkRnbeBonpVg"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.19.1
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


--C1iGAkRnbeBonpVg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

This is the final release of drbd-utils 9.19.1. There have not been any
changes since RC1.

There is no too urgent need to update for most users.

The main fixes and improvements are that this version brings is that it
fixes a bug for our customers that use DRBD-Proxy and want multiple
connections to share a proxy node; that this version now also builds on
the upcoming RHEL9.0; and that we introduced some further nice systemd
helper. This helper can be used to demote a DRBD resource or escalate to
a failure action, therefore its name "drbd-demote-or-escalate@.service".
While of course it can be used stand-alone, the main purpose is
drbd-reactor::promoter, which can then properly fail-over to a cluster
node if "DRBD is stuck" (because there are still openers from another
service for example). But that is something for the soon to follow
drbd-reactor release.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/tree/9.19.1
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.19.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--C1iGAkRnbeBonpVg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmGXau0ACgkQRgmezyI6
myLpRwf/fy6AfTsK9QuvRy4We7+vprtYl0EBTjtV3jHHRZizsVP2CdjXr24Lj4PD
xSFM28nE9d4mOVMLp5VTdr/MQ0pXKtqbs5tKhIN/JGx3G3SbsGcEx95VIflnpK4T
Fnb/OJiHqt3zSBOF5RXdovaaAoP1pksdRHcjsSFuhZ7WWfDkftm3x9b0XhTUiEXD
or5lF4lnWlnGf3wkhuuASN5+a59pQDZt6nwG5ea2qO5SY8f8V3UEQAC9kVZqnClT
jLr1F3pZbM6g2CDQpHDUruoWCkjQCARRbS1fIWyqzq25TnMoNimMB0mSlmjr8+NL
MrBFhWzRo1SsDw98kPYRdLliE0WOVw==
=kzkJ
-----END PGP SIGNATURE-----

--C1iGAkRnbeBonpVg--
