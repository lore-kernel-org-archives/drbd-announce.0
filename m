Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 55AF64201CB
	for <drbd-announce@lists.linbit.com>;
	Tue, 20 Sep 2022 09:42:55 +0200 (CEST)
Received: by mail-wm1-f41.google.com with SMTP id
	n35-20020a05600c502300b003b4924c6868so422433wmr.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 20 Sep 2022 00:42:55 -0700 (PDT)
Date: Tue, 20 Sep 2022 09:42:53 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <Yylu/bm4YwuvQEu6@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Pku+5Vk4hOyPE+9w"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.22.0
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


--Pku+5Vk4hOyPE+9w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

This is drbd-utils version 9.22.0. There have not been any reported
issues since RC1, the only change is some changed wording in the
documentation.

We deprecated named connections. This was a feature I assume not too
many users were aware of anyways, but it was possible to name
connections and if no name was given, the name of the peer was used as
default. This was for example then presented as "conn-name" in events2.
We have by now ways too many projects that assume that they can get the
peer's name from "conn-name" and would break if that is an arbitrary
name. Quite frankly, some of my tools/projects have that assumption as
well. If you have a custom name set for a connection it is now ignored,
an error gets printed, but the parser does not fail hard. In future
release I might change that to failing hard, so please get rid of named
connections now!

The second bigger change is that the rpm part now generates a
drbd-selinux sub package containing an updated SELinux policy. Depending
on the host distribution, that package might even become a runtime
dependency for the drbd-utils sub package. Users/downstream building
packages should add "checkpolicy", and "selinux-policy-devel" to their
build systems. The Debian (alike) world is not affected by that change,
as SELinux isn't that widely used (by default) there.

TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.22.0.tar.gz
GIT: https://github.com/LINBIT/drbd-utils/commit/409097fe02187f83790b88ac3e0d94f3c167adab
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/

Regards, rck

Changes since 9.21.0:

 9.22.0
-----------
 * parser,v9: deprecate named connections
 * drbd-selinux: add sub package, minor packaging/spec changes
 * drbdadm: allow files from expanded glob to vanish

 9.21.4
-----------
 * drbdadm,v9: fix potential segfault in postparse
 * drbdadm,v9: fix sh-ip when set on connection/path

 9.21.3
-----------
 * drbdmeta: fix apply-al for bitmap sizes > 4GiB

 9.21.2
-----------
 * drbd-service-shim.sh: add secondary --force

 9.21.1
-----------
 * ocf: fix for dropped --peer option

--Pku+5Vk4hOyPE+9w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmMpbvkACgkQRgmezyI6
myLhqgf/SkqT5teatXDBzRBpU6hZLwvv2ahqjMyJKSv93nwE8vS5Qunu4NmFAkFr
wQpsuZ/p7SuNoX3Ze5a6lar96Ix5kUs8uSamWvVYfpSW5MnoCmdP9z6HTjks2vGF
twGIS4OSJgN7I3tc04cH9K6gu60u73RR9OEICbvazNx7Pa0owkQNXQtzIbjEHzQv
GlXayBxMfv9dYJpGlsqGqHb7HhNeEJXkD+NTX++zTScXZyBEF1jLgXN98DFesiyy
PG2rvinG3YvPuU+ufzm8rO/Md9ttWCJnWaOWUW122nyalLjFMFZCcsUn6iYpM0u4
nAcRd+OKyghGwB+XrD4qa+ZwTk9e2w==
=iFt3
-----END PGP SIGNATURE-----

--Pku+5Vk4hOyPE+9w--
