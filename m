Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id BEC39420012
	for <drbd-announce@lists.linbit.com>;
	Wed, 21 Jul 2021 09:56:48 +0200 (CEST)
Received: by mail-wr1-f41.google.com with SMTP id d2so1170092wrn.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 21 Jul 2021 00:56:48 -0700 (PDT)
Date: Wed, 21 Jul 2021 09:56:45 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210721075645.GR1286@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kXdP64Ggrk/fb43R"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.18.1
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


--kXdP64Ggrk/fb43R
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is version 9.18.1 of drbd-utils which contains minor fixes to the
recently introduced systemd templates [1]. The drbd@.service one did not
pull in network-online and therefor might have been started before the
interface to the peer was even up, causing the rest to fail. Also make
sure to read and understand [2].

The second main fix is working around pretty outdated SELinux rules
concerning DRBD (we need to upstream a recent version eventually) and
SELinux as deployed on RHEL in general. For example we could not use
'systemd-notify' in a .service file, a known bug, because how would
notifying systemd in a service file be useful, right?... So we basically
moved all the inlined shell code to shell scripts in a location that is
blessed enough by SELinux (at least on RHEL). So it does exactly the
same as before, with exactly the same shell code, but now SELinux shuts
up and it is obviously sEcUrE now. And that is pretty much all I can say
about SELinux without cursing.

TGZ:
https://pkg.linbit.com/downloads/drbd/utils/drbd-utils-9.18.1.tar.gz
GIT: https://github.com/linbit/drbd-utils/tree/9.18.1
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

[1] https://linbit.com/man/v9/
[2] https://www.freedesktop.org/wiki/Software/systemd/NetworkTarget/

--kXdP64Ggrk/fb43R
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmD30zoACgkQRgmezyI6
myLetAf7BTYENR0ClgJ+ujvdcbTJNIwR4OoS44axt7prZDj/GuUpvIEl9Ijgzq5m
DYKEymEgVVO2ny+KEKL6QE8zhwYDWU0pMpoOtB7vpcnKqnbqTzC0QxHuBRlEcHUR
3rvh5drDraxODZMP9Pd+j/QNDZh5NK1ID04Ycj4cip+sGJUlpnFVPMeCJl0rVOih
NTkUMty8RP6Zch9KT/luB1UqyR3VqRLgvwduwrR+oib7HKT/JsV6QzM8xOLTL1nA
ncMVXKZIdfZQomeY3fd8fI8toND3eXymCUwR5KLmXUotOGz0YHXcrdeDS0xPGK9j
5OTNkCgtMq/o+arXMduYWoto6ThDSw==
=uOTu
-----END PGP SIGNATURE-----

--kXdP64Ggrk/fb43R--
