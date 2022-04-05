Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D25FA4205A5
	for <drbd-announce@lists.linbit.com>;
	Tue,  5 Apr 2022 13:25:02 +0200 (CEST)
Received: by mail-wr1-f43.google.com with SMTP id w4so18761762wrg.12
	for <drbd-announce@lists.linbit.com>;
	Tue, 05 Apr 2022 04:25:02 -0700 (PDT)
Date: Tue, 5 Apr 2022 13:25:00 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YkwnDN+Jiq2L0UKU@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="I6BtPkedI+zNppnO"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.6.0
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


--I6BtPkedI+zNppnO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the final release 0.6.0 of drbd-reactor. This is a feature
driven release that brings some nice additions to drbd-reactorctl (the
daemon part is unchanged).

So far you had to have some deeper knowledge to switch over
highly-available resources managed by the promoter plugin. This was
basically:

$ drbd-reactorctl disable --now resname
$ drbdsetup status # in a loop to see if another node took over
$ drbd-reactorctl enable resname # so that it can fall back eventually

This for example could have had the problem that the resource was kept
disabled if during disabling it a on-drbd-demote-failure action
triggered and the system for example rebooted.

Long story short, there is now "drbd-reactorctl evict [resname]" that
evicts a resource (or all of them) from the current node. It also checks
if another node took over and reports the status nicely and makes sure
that resname gets enabled back again.

Temporarily pushing away a resource from the current node is one thing,
but sometimes one wants that the current node stays blocked and that
resources don't fall back. For example a maintenance action to upgrade
the DRBD kernel module. This can be done with:

$ drbd-reactorctl evict --keep-masked resname

This systemctl --runtime masks the generated target for the resource and
it will not be able to start on this node. A benefit of --runtime is
that it gets unmasked after a reboot without admin interaction. If you
don't need to reboot, one can issue that command:

$ drbd-reactorclt evict --unmask resname

The second addition is bash completion for drbd-reactorctl.

While smaller features, I think this really makes admin-life a lot easier.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/0ac05aae218a0df44b62367d1f6ce700afadba78
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.6.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--I6BtPkedI+zNppnO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmJMJwMACgkQRgmezyI6
myJKzAf9EjIwlst5oeLc6pFql9Mq9X0QwEY4+9ZI8YX68pSKUl+j+CjmW5mvO8ha
kAG8H4G6pmbZCQSc/JiGHkqSVeDg7b6loABeTXr3l8Jda9L64JJaJvl9NUsJoL88
Poh6xOIlhrINbfQPIxbRbn+bgJ9P7ceaXZP6YSUxxByngNlWsg+Y74trUY7aplj/
xpBhz3idQfp+Nz2HEK1Iwi+v1j5K/MYiz3GCqnmfyygvjVyvol6br+cgnLDhHQlG
Ky18llwKlYx6Zph3kK1rxib3G9K6L7YGpB3JwgsaiAtjp+T7Qi3yB2cU9Yl+3K/E
0N6Mjt08Ksn9KTZAnJOzUBS9BTg/4A==
=AiJP
-----END PGP SIGNATURE-----

--I6BtPkedI+zNppnO--
