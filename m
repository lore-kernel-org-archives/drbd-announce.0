Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 9C0FB4203CE
	for <drbd-announce@lists.linbit.com>;
	Tue, 23 Mar 2021 14:58:01 +0100 (CET)
Received: by mail-wr1-f53.google.com with SMTP id e18so20888219wrt.6
	for <drbd-announce@lists.linbit.com>;
	Tue, 23 Mar 2021 06:58:01 -0700 (PDT)
Date: Tue, 23 Mar 2021 14:57:59 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210323135759.GA1491@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DocE+STaALJfprDB"
Content-Disposition: inline
Subject: [DRBD-announce] drbdd v0.2.0
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


--DocE+STaALJfprDB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

This is version 0.2.0 of drbdd. There have only been some minor
documentation fixes since the last RC release. Work on the prometheus.io
plugin has already been started.

The RC announcement:

The main new feature is the "user mode helper" plugin, which allows
users to define simple filters for DRBD state changes that are then
matched. A match triggers the execution of a user defined script.
Information is passed via environment variables.

A quick example for a rule that sends an alert whenever a resource gets
diskless looks like this:

[[umh.device]]
name = "now Diskless"
command = "sms.sh $(uname -n): $DRBD_RES_NAME $DRBD_NEW_DISK_STATE"
event-type = "Change"
old.disk-state = { operator = "NotEquals", value = "Diskless" }
new.disk-state = "Diskless"

I think the umh plugin has great potential to remove many hackish
scripts that did some kind manual DRBD state tracking.

There is extensive documentation on rules, types, environment
variables,.. [1,2]. This brings me to the second, not that exciting
change since 0.1.0: drbdd now has proper man pages for the daemon, the
config, and all plugins [3].

Eventually this will also replace the helper scripts that are currently
triggered by the kernel, but that will require more work on the kernel
and low level user space parts.

GIT: https://github.com/LINBIT/drbdd/releases/tag/v0.2.0
TGZ: https://linbit.com/downloads/drbd/utils/drbdd-0.2.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Regards, rck

[1] https://github.com/LINBIT/drbdd/blob/master/src/plugin/umh.md
[2] man drbdd.umh
[3] drbdd(1), drbdd.toml(5), drbdd.promoter(5), drbdd.umh(5),
drbdd.debugger(5)

--DocE+STaALJfprDB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmBZ8+IACgkQRgmezyI6
myL6CAgAnJB7BK4YelFjxcmhzMda938yHseaghUeqlv5KI69iIlJwvolOjPKjcG7
8K11yqncvS+bvGTZGcqECpzrOOQpJWD+M+upKaKTkujiwGSviAcbA6wQP2Fopmwr
BfB5pr4SAagASlxtzCiGkVJUXWmt3ehiaAWrCbDHljmwGzmSqrbqvoYiBrvEP4j7
orGG6Bfj8wdeGRToIqreXFcczVl62xaefd5LALAuVHMBkcLJ/ANzomjlZ2LrmWUk
vftsznfA0xEM96ii3aZrCuAnu9LdZgzPcAWw5nYm6FEElAF8tbeeaAUIRvunpOn5
bm1H0CYAeZIh6A2rzSil6aa5/cklJA==
=vTIb
-----END PGP SIGNATURE-----

--DocE+STaALJfprDB--
