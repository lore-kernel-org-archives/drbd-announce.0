Return-Path: <roland.kammerer@linbit.com>
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
	[209.85.218.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 974F8420023
	for <drbd-announce@lists.linbit.com>;
	Fri, 20 Oct 2023 13:18:11 +0200 (CEST)
Received: by mail-ej1-f43.google.com with SMTP id
	a640c23a62f3a-9b1ebc80d0aso108000666b.0
	for <drbd-announce@lists.linbit.com>;
	Fri, 20 Oct 2023 04:18:11 -0700 (PDT)
Date: Fri, 20 Oct 2023 13:18:09 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZTJh8eXaqtYmy4Zg@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wYD570fb77kWdDX/"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.26.0-rc.2
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


--wYD570fb77kWdDX/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the second release candidate for the upcoming 9.26.0 release. We
did not find any problems in rc.1, but we wanted to squeeze in some new
configuration options.

Please see the rc.1 announcement for details, and the individual commits
for the new RDMA and (load balancing) TCP transport options.

Please test, if we don't find any bugs I will tag the final version in about a
week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/03932e3edf6a996b14efd6176172c4998af48cc2
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.26.0-rc.2.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
9.26.0-rc.2
-----------
 * config,v9: new config option load-balance-paths
 * config,v9: new config options rdma-ctrls-(snd|rcv)buf-size

--wYD570fb77kWdDX/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmUyYe0ACgkQRgmezyI6
myLxAQf+JWzLSrSLSHxkMexFy+p3OJwP4DJQ/ziYj+36CS1WqhZCQfGSqKuayhnX
aX6ZlTjyGdC5MMnhuSgAsqFMcMrh+e/WAgxWg8zvjV0PsLgn5G937N4IISNaBOrL
BN97QjMOjQGyU3advoOTiG5lFBvN494RwAldPsOk2H9neG9RPSGNKBOKGGn6+0DO
gl4gFAZP4y1QgoSIe12H16seqn/4fi5ED72w1h3+qdXU0KjR4ia6ml8ho469Zf1a
MGCqhjhuTS3GsN+mvDUzVRmu8bQAcAyqTEmFaP5qq3oWc4TvUYh+R5E3hDTItN0Z
hVeExVLQ19nGQo0zoS66sOODNzHqGw==
=SU0E
-----END PGP SIGNATURE-----

--wYD570fb77kWdDX/--
