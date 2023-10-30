Return-Path: <roland.kammerer@linbit.com>
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
	[209.85.218.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 1418B4201CD
	for <drbd-announce@lists.linbit.com>;
	Mon, 30 Oct 2023 12:55:23 +0100 (CET)
Received: by mail-ej1-f41.google.com with SMTP id
	a640c23a62f3a-9c3aec5f326so1143541866b.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 30 Oct 2023 04:55:23 -0700 (PDT)
Date: Mon, 30 Oct 2023 12:55:20 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZT+ZqPQb2HaER2H3@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YGrE+HRWz/rHosYQ"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.26.0
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


--YGrE+HRWz/rHosYQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is version 9.26.0 of drbd-utils. We did not find any bugs in RC2,
the only changes between RC2 and the final version are some minor
documentation updates.

For your convenience the RC1 and RC2 announce messages:

RC1:
ktls: For all the details please see Phil's drbd-9.2.6-rc.1 announce
mail, this adds the userspace bits. Note for packages: this introduces a
new dependency, see the debian dir and the spec.in file in the git repo
for details.

drbd-graceful-shutdown.service: DRBD benefits if a connection is shut
down properly instead of just vanishing. This is a bit of a problem on
system shutdown. A dependency to that service is automatically
configured for every DRBD device when the device shows up in udev. It
configures dependencies on network-online and the drbd@.service and
drbd.service (do not use the later one, it is deprecated and we have
ways better ones like the drbd@.service one!) and on shutdown then downs
the resources.

I think these are the most important features, but there have been
improvements to drbdmon, windrbd, the CPU mask size got increased,
events2 with --poll now terminates if the kernel module is unloaded and
returns a specific exit code for "module unload" which allows some
drbd-reactor improvements in the future,...

RC2:
We did not find any problems in RC1, but we wanted to squeeze in some
new configuration options.

GIT: https://github.com/LINBIT/drbd-utils/commit/fd0904f7bf256ecd380e1c19ec73c712f3855d40
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.26.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Regards, rck

ChangeLog:
9.26.0
-----------
 * config,v9: new config option load-balance-paths
 * config,v9: new config options rdma-ctrls-(snd|rcv)buf-size
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

--YGrE+HRWz/rHosYQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmU/maUACgkQRgmezyI6
myLoKgf9HdojMv0C0mXsNyOfGtHBsRcnOJptg6+N6XKIbT6J8orQgf7yIdMW45/N
7KY5qjuvlkdArvkaaO/DDWRwD2yLGFjsXLpRUwPeCaYixdroqpA2JTzn3oTYabX9
HF9UweEy0Uz80fQG189V4lFRgKo8Y0ron8DPPM+l50fBO6jhafL+Q7O7HIUNeYiR
Lr8tdDwy1fZ9hxdTQEHPEMFo1/2ReDcDhOvngkOGsdqXHrp4ooLF1oTj0Kiy9r8Y
+XmtEjgthyr9Tu/fqCC4yUP/QEl4c0NYMLn4XnhdieEsk97YFhqiQzwTtVr9cxoe
1PhNrzf9p9duJI0DGqHGjEvhMOk2xQ==
=cWr0
-----END PGP SIGNATURE-----

--YGrE+HRWz/rHosYQ--
