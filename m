Return-Path: <roland.kammerer@linbit.com>
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
	[209.85.167.179])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 27B6A42066E
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Mar 2023 11:32:57 +0100 (CET)
Received: by mail-oi1-f179.google.com with SMTP id bi17so11445503oib.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Mar 2023 03:32:57 -0700 (PDT)
Date: Tue, 14 Mar 2023 11:32:52 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZBBNVI7yKqqOraxM@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lNyoyNsjgr4qI2Q7"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.23.1
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


--lNyoyNsjgr4qI2Q7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is version 9.23.1 of drbd-utils. There have not been any reported
issues since RC1. For convenience the original RC announcement (note
that LINSTOR in the meantime also found a workaround for the problem):

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

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/tree/9.23.1
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.23.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/

--lNyoyNsjgr4qI2Q7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmQQTVEACgkQRgmezyI6
myIY9wf/aaCw/K26+Cw1sAKlPCoaMvDq4oMmI5uL7MaNHxywkAWMhJ6JcA7ExNiT
9fpWkcp/+aEqcIiQZ/hZ8W03GoFJ+ML1AHdsyigkH5rHtms9yPoodKNTjGSBnp3i
mSD8Wx423NCwEcUpDa1njBdFzUtYD3cZHlr2Zs6A5p0KvQDuBfytb8U7vPiTUy/2
RzZbHW+UbcwpXmngEU9jijO9nbm3YyEsoItxVU2M07HIh5YjbTncSJ8VieD3ez5G
QD8UGK8Sn5aHWbEPZ2MvU/frugZdSs95HUUuas7jKAxZyxJalmkdi5f5zhBSptPe
8I19M9xA5xZS5GaG5ha3a8sFfqGy3g==
=MHAm
-----END PGP SIGNATURE-----

--lNyoyNsjgr4qI2Q7--
