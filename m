Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id A4629420012
	for <drbd-announce@lists.linbit.com>;
	Tue, 30 Nov 2021 14:51:45 +0100 (CET)
Received: by mail-wm1-f46.google.com with SMTP id 133so17562984wme.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 30 Nov 2021 05:51:45 -0800 (PST)
Date: Tue, 30 Nov 2021 14:51:43 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20211130135143.GW1745@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BWWlCdgt6QLN7tv3"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.5.1
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


--BWWlCdgt6QLN7tv3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

This is drbd-reactor v0.5.1, fixing a bug mainly relevant for LINBIT
vSAN, and introducing a smaller feature, both in the promoter plugin.

The feature is that we now also override the Description field in our
service overrides, which makes reading logs/systemdctl status a bit
nicer. drbd-reactor controlled services show up like this:

mnt-test.mount - drbd-reactor controlled mnt-test

The bug that was fixed occurs in combination with the
"stop-services-on-exit" config option. If set, the controlled services
(i.e., the drbd-services@.target) is stopped whenever the plugin exits.
This can be a `drbd-reactorctl disable ...`, or even a `systemctl stop
drbd-reactor`. vSAN sets that option, which makes it easy to switch over
all services by stopping the drbd-reactor service. And this is where it
gets complicated, I just quote the commit message for this fix:

Commit 27d798e0 introduced setting Before=drbd-reactor.service in the
generated drbd-services@ target overrides. While a good idea in general
(see that particular commit), it also can create a situation where the
user issues a `systemctl stop drbd-reactor` (expecting switch-over),
which then blocks as: drbd-reactor.service wants to shut down and
promoter wants to `systemctl stop` the target unit. But this contains
the mentioned Before= and wants drbd-reactor to be gone first. Blocks
and timeouts.

We can borrow Pacemaker behavior by writing the Before= in a extra
override and when the plugin detects it is responsible for shutdown, it
then can:
- rm that particular Before= override file.
- systemctl daemon-reload
- systemctl stop the target (that now does not have the Before=
  dependency on drbd-reactor.service)

All fine, but with that we saw another behavior becoming a show stopper:
systemd.mount(5) automatically adds a Before= dependency on
local-fs.target unless "nofail" is specified. That in combination with
what was described above made systemd fail with a cyclic dependency on
"reboot". That can be solved by setting "nofail" as an option, or what
looks even a slightly better in our case by setting
"DefaultDependencies=no".

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/3b521bacec0957725ed00e2ada0c691edbdde9d4
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.5.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
* build: bump debian utils dep as well
* promoter: fix stop-services-on-exit
* promoter: override description

--BWWlCdgt6QLN7tv3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmGmLGsACgkQRgmezyI6
myKZCAf8DTN4j7ui0FHcJezsvNQv6FtWgpe1taFHaMrXRviWLYx2E3pH3XSK4c7n
eMZWsRj7XDXCJPLO5zCuI7sfvlrqHdq+ykPmG7HOIfW6Cn4NR0DCPD7cJ9v688yu
P2l1YEL9iWakKCp2zLmENnfmYECivmHxl6lnqKntOdLKwGY5xIt46Et0IHg1Z636
BArHKkFM/PpkaOkRHWKV/tNE3ZCUG0mWdR/Do06H8tLtlquaEOFjmESbo/6CRRo2
p1kcMuB1OF2V+6KS+7JwAETst4DErXui6hXEwWOUbIlBNGc+8UakUEsyFqceR/Po
/HcypZwASq6O2f7+gjQG2ipgXoK0yQ==
=ZzFa
-----END PGP SIGNATURE-----

--BWWlCdgt6QLN7tv3--
