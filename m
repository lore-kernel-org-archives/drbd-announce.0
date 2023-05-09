Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 9E88F4202E5
	for <drbd-announce@lists.linbit.com>;
	Tue,  9 May 2023 09:28:54 +0200 (CEST)
Received: by mail-wr1-f50.google.com with SMTP id
	ffacd0b85a97d-3077d134028so2731991f8f.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 09 May 2023 00:28:54 -0700 (PDT)
Date: Tue, 9 May 2023 09:28:52 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZFn2NPWa76w2zBlS@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZycA6/KaCOMge+nT"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v1.2.0
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


--ZycA6/KaCOMge+nT
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is version 1.2.0 of drbd-reactor. There have not been any reported
issues in RC1. With some public holidays and not wanting to do a Fri
release it just took a bit longer. For your convenience the original
announcement (and some upgrade hint):

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

Upgrade: if you have promoter resources using ocf agents I'd suggest you
upgrade all cluster nodes without active promoter resources, then you
'systemctl restart drbd-reactor.service', then 'drbd-reactorctl evict'
the active ones to another - now upgraded - node, upgrade that last node
and restart the service there as well.

GIT: https://github.com/LINBIT/drbd-reactor/commit/39c82c1c324bf1011f34d4ac=
aaf82201cef61727
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.2.0.tar.gz
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
* ocf-rs-wrapper: rm random sleep

[ Joel Colledge ]
* ci: remove -l from lbbuildctl invocation

--ZycA6/KaCOMge+nT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmRZ9i0ACgkQRgmezyI6
myIuUwf+IzPO5Gf/36PSXmt/OFBsNpoAOJ9sfmwZNBOtYtJ4UP2ydDZtaoCzsgFr
y61FaTqiuX4Zd5Re9DM9E8w4PcMLKS21veMzm028kyWfUzdZ6etxhzPGdDkDEt/m
AyH2Nc6Y+7jAm9Klz4OBAtInV225ie/WplZnIj6b5RaqD5lTdK9eATfZUnkOUm86
wmHMKIcrfil+FZXrLOBcVwS/8WciWriBnkOnL3SuX9ghU+KcjlJ/yXRnJ2ErPcWF
5kDGEcDANXibWnnTwyyzapTzsJgi6GAsxIo2Lg5L1SXi2GGWQ7AHALgp0hjt28Tr
9V5QTfHWY/sZmEQ7Bq107OazbtGS8g==
=LJfF
-----END PGP SIGNATURE-----

--ZycA6/KaCOMge+nT--
