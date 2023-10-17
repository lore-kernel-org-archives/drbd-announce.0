Return-Path: <roland.kammerer@linbit.com>
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 3CE934201C8
	for <drbd-announce@lists.linbit.com>;
	Tue, 17 Oct 2023 10:05:16 +0200 (CEST)
Received: by mail-ed1-f43.google.com with SMTP id
	4fb4d7f45d1cf-53db360294fso9500798a12.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 17 Oct 2023 01:05:16 -0700 (PDT)
Date: Tue, 17 Oct 2023 10:05:14 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZS5AOuqHj0bb6GlO@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3+3xKZgppOVWJUX1"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.26.0-rc.1
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


--3+3xKZgppOVWJUX1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the first RC for the upcoming 9.26.0 release. My feeling is we
accumulated more features and fixes than usual, so let's introduce some
highlights:

ktls: For all the details please see Phil's drbd-9.2.6-rc.1 announce mail, this
adds the userspace bits. Note for packages: this introduces a new dependency,
see the debian dir and the spec.in file in the git repo for details.

drbd-graceful-shutdown.service: DRBD benefits if a connection is shut down
properly instead of just vanishing. This is a bit of a problem on system
shutdown. A dependency to that service is automatically configured for every
DRBD device when the device shows up in udev. It configures dependencies on
network-online and the drbd@.service and drbd.service (do not use the later
one, it is deprecated and we have ways better ones like the drbd@.service one!)
and on shutdown then downs the resources.

I think these are the most important features, but there have been
improvements to drbdmon, windrbd, the CPU mask size got increased,
events2 with --poll now terminates if the kernel module is unloaded and
returns a specific exit code for "module unload" which allows some
drbd-reactor improvements in the future,...

Please test, if we don't find any issues I will release the final version in
about a week from now.

Regards, rck

ChangeLog:

9.26.0-rc.1
-----------
 * drbdadm,v9: fix segfault if proxy has no path
 * drbd: increase maximum CPU mask size
 * systemd: introduce drbd-graceful-shutdown.service
 * drbdmeta,v9: fix regression, allow attach after offline resize
 * drbdsetup,v9: add path established information to JSON status
 * events2: terminate on module unload even under --poll
 * events2: specif exit code if module unload
 * docs: add spdx license file
 * drbdmon: various smaller improvements
 * drbdsetup,v9: support for TLS/kTLS

GIT: https://github.com/LINBIT/drbd-utils/commit/0198719f67b5d8cc7895524aefdfba35f2818ec6
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.26.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--3+3xKZgppOVWJUX1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmUuQDYACgkQRgmezyI6
myLkkAf/QSiiYCc0tA59W7Ti/wrJwDmB31weKKc63LIWSIIsVQ7ormRKy3FzziAb
jE5lCy6IL8s/1JebR+UE8cqFimxpZv0jdMBrizOBIq5fA2VnzNqjo7XNwqrr2YR3
O7A/wb7oaXQ/xDZ660ixKhSl0+0V/1J3ojHKPFhchWq5D2Mr2xEqk9FBwJTNn01z
D2mSDHwEkgzkT8Dls/F2feuaMMRE+sBy5gx/2aDBajioMMnGEFlTTNaUaOkbbQpY
ZCAuoId6m+NmzHIgJTxVGVZhRKNC8yfpzpnH49u7k4amQWxhPrrZhXfYySF2Xk7K
eaBbFI5xIxkJuCyfSmoacnhcw2e3wA==
=pOf2
-----END PGP SIGNATURE-----

--3+3xKZgppOVWJUX1--
