Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4FE6342063D
	for <drbd-announce@lists.linbit.com>;
	Thu, 13 Jan 2022 15:17:24 +0100 (CET)
Received: by mail-wm1-f47.google.com with SMTP id w26so3996712wmi.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 13 Jan 2022 06:17:24 -0800 (PST)
Date: Thu, 13 Jan 2022 15:17:21 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YeA0caah1YgdS0Zf@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WvxHRqm5TJSb9pow"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.20.0
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


--WvxHRqm5TJSb9pow
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD-users,

this is drbd-utils version 9.20.0. There is no too urgent need for an
update if the current 9.19.1 utils work for you, but this version has
some new features and several bug fixes as well.

Most notably meta data is now created in chunks which allows the process
to be interrupted and helps for large DRBD resources where the meta data
then is also quite big. It is now also possible to specify how the meta
data should be zeroed out.

Other fixes/improvements include crm-fence-peer which now works better
with Pacemaker 2.1. drbd-attr which called a non-existing "drbadm" so
far got fixed as well.

For more details please check the individual commit messages.

Regards, rck

Changelog:

9.20.0
-----------
 * drbdmeta: do init in chunks; allow different methods
 * build: various minor fixes (udev detection, POSIX,
   compiler flags, allow doc building with asciidoctor,...)
 * drbd.ocf: fix type (relevant for certain pcs versions)
 * drbd-attr: fix typo "drbadm" -> "drbdadm"
 * crm-fence-peer: fix timeout with Pacemaker 2.1

GIT:
https://github.com/LINBIT/drbd-utils/commit/ef3ee681e05e886fcd890466d8d99aefd80b724c
TGZ:
https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.20.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--WvxHRqm5TJSb9pow
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmHgNG0ACgkQRgmezyI6
myLGxAf9E4qf3gX8n4aFzh5GMKX4Q/w7wpFaiwzLEWLnKQbZMkGFtZYY/h2Ac5nP
XBRsSEsHvbai6g565NjO5v91aS4d1pTalchmfPCWIIyl/Kti80KAz/aqJN9kCghw
9uwQmlu4ooUOpvlQVU08K0nbHqavRij2+9pwJ1NfaVLvfnrckiUz3NkNZbPVEuKH
vRBe5WBYh0g9B3PV5WHsM94AGUZNW8yIghprDUHTVE3z8mMRv3c6fBgEXzkWoli6
5cw9ltUl4j8HqIwggPHEab1IfWoWgFH7tx7VSeEa92sOevQqhQAvgFr1MVKT5LuF
XobL58twgNZ9nyWk8yuQELn1I2vxiQ==
=2axf
-----END PGP SIGNATURE-----

--WvxHRqm5TJSb9pow--
