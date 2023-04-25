Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2C1F64202E5
	for <drbd-announce@lists.linbit.com>;
	Tue, 25 Apr 2023 16:34:32 +0200 (CEST)
Received: by mail-wm1-f53.google.com with SMTP id
	5b1f17b1804b1-3f19c473b9eso84876015e9.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 25 Apr 2023 07:34:32 -0700 (PDT)
Date: Tue, 25 Apr 2023 16:34:30 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZEfk9jvTgibwM0xE@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l0G3WDyaUlGzAHYG"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v1.2.0-rc.1
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


--l0G3WDyaUlGzAHYG
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is first RC1 of the upcoming drbd-reactor version 1.2.0.

There are two noteworthy changes in this release:

- The promoter plugin used a shell wrapper script shipped in drbd-utils
  to handle OCF agents. This wrapper was replaced by a proper Rust
  binary. The advantage is that we can (re)use that in our Windows port.
  Every shell script re-written in a proper programming language is a
  benefit on its own.

- So far it was possible to specify an "id" for plugins in their
  configuration snippet and that was the handle to decide which plugin
  instances got stopped, kept alive, or started on drbd-reactor reloads
  (systemctl reload/kill -HUP). Now we keep hashes of the configuration
  structs (i.e., they are trait Hash) and reloading changed plugins just
  behaves like expect: No weird "id"s, changed plugins restart, new get
  started, unchanged ones stay, the ones now without a config get
  stopped. The "id" fields in configs are now marked as deprecated
  (i.e., specifying them prints a warning in the log) and don't have any
  special meaning anymore. Note that they still contribute to the hash
  of config struct. In order to make the config structs trait Hash we
  had to change the 'sleep-before-promote-factor' from a f32 to a u32. I
  guess this setting is that unknown and rarely used that we can do
  that.

In the best case you don't even notice the changes, but get an improved
behavior on reactor reloads.

If there are not reported issues, the final release will follow in about
a week from now.

GIT: https://github.com/LINBIT/drbd-reactor/commit/b9f104e55e4550865b059571=
e64615c92d0c4c18
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.2.0-rc.1.t=
ar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Regards, rck

Changelog:
[ Moritz "WanzenBug" Wanzenb=F6ck ]
* prometheus: start server in plugin constructor
* ctl: ignore already unmasked targets
* plugin: unify starting of plugins

[ Roland Kammerer ]
* prometheus: rm unused import
* ocf-wrapper: rewrite in Rust
* core,plugins: auto generate IDs
* core,plugins,ctl: deprecate IDs

--l0G3WDyaUlGzAHYG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmRH5PAACgkQRgmezyI6
myL2Pgf8CKStOhhrmnmBifgg6UH2ElSZSxrNw6rlx7lTIKkL6kFvm55/ZCxj6gXi
Yv2qIMgBJhnK8XwkbkR9ZIpQSt7d1q1t+bjTj1HNL/WufSXxPDzYXRC+zz7UJ/Vj
J1Ypf2cmVeJqjkVpjfuU/xm3RmeihP7MLhPEVzxu39FQtqX7tU/jC3fN57wDe+5A
ipIgeCxUg6Dci4mt/N6ndahJq4VHynXwqCvELEMpsj2jH/dsaDJqWh5pVz714OlI
dmzeNWiETlT6tfdwXYimGjzMCbwxUDF08VmurbJX6WuwZJ2m3Y4HmmpBUW/q75PE
DK8Xk8gmCPl7rV2MQR7oJ1aEvew7KQ==
=Q9+q
-----END PGP SIGNATURE-----

--l0G3WDyaUlGzAHYG--
