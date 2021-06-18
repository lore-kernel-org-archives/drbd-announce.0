Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 164834202F3
	for <drbd-announce@lists.linbit.com>;
	Fri, 18 Jun 2021 13:18:04 +0200 (CEST)
Received: by mail-wr1-f50.google.com with SMTP id n7so10377918wri.3
	for <drbd-announce@lists.linbit.com>;
	Fri, 18 Jun 2021 04:18:04 -0700 (PDT)
Date: Fri, 18 Jun 2021 13:18:03 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210618111803.GQ1398@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="H4SyuGOnfnj3aJqJ"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.4.0
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


--H4SyuGOnfnj3aJqJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the final release of drbd-reactor 0.4.0.

For details in this release please see RC1 [1] and RC2 [2].

There have been some additions since the last release candidate for the
promoter plugin:
- The promote systemd template we ship with drbd-utils 9.18.0 uses
  'ExecCondition' to switch the resource to Primary. This keyword is not
  available on older systemd versions (e.g., current Proxmox stable),
  and IMO 'ExecStart' is a better fit, so generate such an override.
- startup: the drbd-reactor.service file is now scheduled after
  networking, so that it can bring up the DRBD resources successfully,
  otherwise the IP for that host might not even exist and "drbdadm
  adjust" fails.
- coordinated shutdown: as you might know by now the promoter plugin
  starts systemd targets (drbd-services@.target). But on system shutdown
  these might stop, which triggers drbd-reactor to start them again,
  while it gets stopped,... This is now solved by generating a 'Before'
  dependency in the target override.

With 0.4.0 released, DRBD promotion should be handled by drbd-reactor,
so please set the according option to disable auto-promote, as shown
here in the "HA LINSTOR Controller section" [3].

[Roland Kammerer]
 * ctl,promoter: improve active on
 * promoter: compat with older systemd, make promotion a dependency
 * start after network is online
 * promoter: improve system shutdown

GIT: https://github.com/LINBIT/drbd-reactor/commit/6cc8b9d7e57f3bb27a4c975d8d4f1339d60b4462
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.4.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

[1] https://lists.linbit.com/pipermail/drbd-announce/2021-June/000454.html
[2] https://lists.linbit.com/pipermail/drbd-announce/2021-June/000460.html
[3] https://github.com/LINBIT/linbit-documentation/blob/master/UG9/en/administration-linstor.adoc#linstor-high-availability

--H4SyuGOnfnj3aJqJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmDMgOUACgkQRgmezyI6
myINhQgAk3gN1oOlwQYG+HYdAM4dcQeK5fsvNKvbo0N9zb26c51oz/yhKvnsXk+z
kJKlWa1PMaN3X9MHFPSHjLHGTtYhdpJFNU5UUii3Bje7BUM2fNLtpe/eOHBtlHVh
fubbPJIszZY0G9lScWuNmWbnn3hYqF7fSfNRXwQN/HeYfLxMW/znL0Nxo5ooIZnD
RkgjsaQI62FebtPZAq3nLX0Z/ejC5m3Vs7gaBsGcVxfzNRl5MGf98PzFQZsBn/JS
c02cVS7FJsP2iNkEVPSyx01R93hrjHTh50iXSD5UQi2zAUT/ayU65ZrlywS3GNHN
Gfae+xNUXQwKDtFl122VXCH2476LWQ==
=3UQI
-----END PGP SIGNATURE-----

--H4SyuGOnfnj3aJqJ--
