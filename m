Return-Path: <roland.kammerer@linbit.com>
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 65664421039
	for <drbd-announce@lists.linbit.com>;
	Wed,  8 Mar 2023 08:23:37 +0100 (CET)
Received: by mail-ot1-f41.google.com with SMTP id
	e9-20020a056830200900b00694651d19f6so5631258otp.12
	for <drbd-announce@lists.linbit.com>;
	Tue, 07 Mar 2023 23:23:36 -0800 (PST)
Date: Wed, 8 Mar 2023 08:23:31 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZAg38/fnrcyf4nfm@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XodQ3kGjdll+ysAp"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.23.1-rc.1
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


--XodQ3kGjdll+ysAp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the first RC of a minor bugfix release to the latest stable
version of drbd-utils.

With SDS/LINSTOR/k8s/... we are more and more in a world where we see *a
lot* of DRBD resources and no longer the classical "1 resource with my
HA database" use case. There we also have to take care about what
happens when a systems boots (or activates all DRBD resources for what
ever reason at the same time) and then tries to resync hundreds of
resources that all compete for resources (i.e, net and disk). Actually,
DRBD has a feature for that, "resync-after" where one can define a chain
of resources to be synced after each other. LINSTOR will make better use
of that soon, but the fact is that one of the DRBD config file checks
for resync-after was too strict. And that is the only fix in this
release.

Please test, if everything works well I will release the final version
in about 1 week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/tree/9.23.1
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.23.1-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/

--XodQ3kGjdll+ysAp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmQIN+8ACgkQRgmezyI6
myJL3wf9EKsp7En79gXkEVj1kpIJx9iuWklONMi0rkhRq/QkNC1mbg8IvNZlCM1I
u2IsXcRHvZZfZ4AaIK/pmCvdrpxfiwZOj/OnUIMe9Yd5PPOK4I9vOtf2ZqHfyeb3
PvscUfifs42XXmI+xOmUHUMorVyYVhBZGOtzqvcnVwEPNmnoPEP+urOSYizLNI9L
U3jW0Ihw1OVURqFNlNqGuywOVteZ+0auZ+GqJuuw43PBCcSIhaKg5o858u90oSKr
CiocgK/KCJeSvQcsYCM9TY4YB7W/s6qGvbTHwU8yIYSpn6l7zUq+hleDa4iDUwpN
nNUnOxOD46RWV55cpM5pjj9D2CLKDA==
=aQwt
-----END PGP SIGNATURE-----

--XodQ3kGjdll+ysAp--
