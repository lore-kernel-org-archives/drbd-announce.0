Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 12CF74205D5
	for <drbd-announce@lists.linbit.com>;
	Wed, 19 Jan 2022 13:32:18 +0100 (CET)
Received: by mail-wm1-f44.google.com with SMTP id
	l12-20020a7bc34c000000b003467c58cbdfso14266783wmj.2
	for <drbd-announce@lists.linbit.com>;
	Wed, 19 Jan 2022 04:32:18 -0800 (PST)
Date: Wed, 19 Jan 2022 13:32:16 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YegE0OAHmhCVvQgY@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="F61nrrC4xBTgMw42"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.5.2
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


--F61nrrC4xBTgMw42
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is version 0.5.2 of drbd-reactor. There is no too critical bug,
never the less this release contains a number of fixes and users should
update.

To highlight some of the fixes the output of "drbd-reactorctl status" is
now properly ordered and it is now possible to use "uncommon" resource
names in the promoter plugin. The later is probably the biggest fix in
this release. So far if a DRBD resource contained characters that need
systemd escaping the generated systemd templates have not been properly
systemd escaped. This is now fixed and resource names such as "foo-01"
('-' being a char that needs escaping) are possible.

One additional feature I want to highlight is that the promoter plugin
now checks for certain DRBD properties and writes warnings to the log if
they are not fulfilled (e.g., disabled auto-promote, quorum settings).
These requirements are documented here:
https://github.com/LINBIT/drbd-reactor/blob/master/doc/promoter.md#drbd-res=
ource-configuration

GIT: https://github.com/LINBIT/drbd-reactor/commit/e4d83969cb3e3a1b3ac1efb8=
4e86fa54741aaa48
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.5.2.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
[Roland Kammerer]
* promoter: add auto-generated header
* ctl: extend env
* umh: add on-no-quorum-io-error.sh example
* promoter: check for drbd options
* build: allow 'make rpm' from release tarballs
* promoter: systemd escape template names
* ctl: linstor-gateway hint

[ Christoph B=F6hmwalder ]
* ctl: use subprocess.run instead of os.system

Regards, rck

--F61nrrC4xBTgMw42
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmHoBMkACgkQRgmezyI6
myIQsAf+J365oRayMqCnE9vgHM8vlyLsefhhdsPa4X8UW1h2eNT5w9yYIZNlIzDv
l8kb88S+nXAyoTGdynRe5tcxMTSvq0oxpu1SLxoZdrP5xIuakTYTrGgTSJ3TQIdL
U5r/GpcFTCCkgS7KnRypR9Q903wVFOq6yMVq1o2ngkJlUn9lzc4I24KGXE2ArMxT
eJoOhkMCpXUQAR1mrp5N7gJtQ1lhinFesYas243Iqd37GGWFd3wAmHvlxxKs9dPl
mn+0NZvJ06k2ArNhaTucgsyZquNT2MLRVspDHbmb+f4v0CGOTitk11DgWAj8oV6S
fSEf8Q+pGhLO2RJAfswOtxH3nXTSKA==
=GxE9
-----END PGP SIGNATURE-----

--F61nrrC4xBTgMw42--
