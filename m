Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 5EA77420334
	for <drbd-announce@lists.linbit.com>;
	Fri,  8 May 2020 12:42:47 +0200 (CEST)
Received: by mail-wr1-f51.google.com with SMTP id k1so1304656wrx.4
	for <drbd-announce@lists.linbit.com>;
	Fri, 08 May 2020 03:42:47 -0700 (PDT)
Date: Fri, 8 May 2020 12:42:45 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20200508104245.GF1572@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="C7zPtVaVf+AK4Oqc"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils-9.13.0
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


--C7zPtVaVf+AK4Oqc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

Today we release version 9.13.0 of our low-level userspace utilities.
This mainly accumulates crm-fence-peer/drbd.ocf/Pacemaker 1/2 compat
fixes that were already in 9.12.x, but as the Windows part also got some
new features, this felt like a good point in time to push out what we
have. If you did not run into any Pacemaker/clustering related problems,
then there is no urgent need to upgrade. Especially not on a Friday :).

Best, rck

9.13.0
--------
 * crm-fence-peer{,.9}.sh: detect Pacemaker 2 promotable clones
 * submodules: switch to https, which makes it easier to clone
   if you are behind some weird company firewalls.
 * drbd.service: start pacemaker before drbd-proxy
 * windrbd: various new commands including create-resource-from-url,
   set-syslog-ip, scan-partitions-for-minor, install-bus-device,
   remove-bus-device

https://www.linbit.com/downloads/drbd/utils/drbd-utils-9.13.0.tar.gz
https://github.com/LINBIT/drbd-utils/tree/v9.13.0
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/

--C7zPtVaVf+AK4Oqc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAl61N50ACgkQRgmezyI6
myKLtQf+L1ar7JXZJxtTBjPN1wgsXkTf8zik5lYh9MT38vVOg4umca1koliey8vY
f10GIK97F+U7rLFX6VXGYb7CvYaZ/PPI5nFLtYloK72WDQc9VZk4wNMNDt1aR2VC
HGcp3WSlo4dJQoTOx7VlN2g0E4uhLtMQ64RAEPZnrYTkXY4+vzyjF6Csw/6QZS3s
bkUp4ywL+hfsmqMZNWMA6U7WI9UnRSmCfDkbPlQUAfoDCcMwReAwyvKLYjDEeAgG
v0OnKYJirB0U7iU3TMuQRIxIfvs0ZLj5gcx6qkwowIkvtGOGEfo8KJ8qfkdMJSjU
Yf9dNsSHEQQ8KPSZi5iXS6cW7yWiBA==
=asnl
-----END PGP SIGNATURE-----

--C7zPtVaVf+AK4Oqc--
