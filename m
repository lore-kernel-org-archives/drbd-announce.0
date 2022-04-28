Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 6953D4201DC
	for <drbd-announce@lists.linbit.com>;
	Thu, 28 Apr 2022 08:57:01 +0200 (CEST)
Received: by mail-wm1-f50.google.com with SMTP id p189so2349166wmp.3
	for <drbd-announce@lists.linbit.com>;
	Wed, 27 Apr 2022 23:57:01 -0700 (PDT)
Date: Thu, 28 Apr 2022 08:56:59 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Ymo6u7r0eg+W4l/2@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JOLhUiwTgyOFdQfv"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.21.1
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


--JOLhUiwTgyOFdQfv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is version 9.21.1 of DRBD utils. Unfortunately dropping the
'unused' --peer option broke drbd.ocf. This is the only fix in that
bugfix release.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/tree/9.21.1
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.21.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--JOLhUiwTgyOFdQfv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmJqOrkACgkQRgmezyI6
myIBJwf/W7vcNbDAn1rz8zMsHSt6g2sdoylcci+Y017eWoBlBjTucl+MPrRMLYEG
QYP0IqcS7kSLuGvxx1+7MjXthr07piCSlXaNvxPOT7qg5sxYxLF3C5xNKFl2060n
yvBiRQNEucDKnotQOx7PtNUU0ql/FoLpQg/r/ao+iz1UfwxTRXugnkZFb59jsITI
lZkffuf1e5y+Y/LN1YVIJ+SRWdY7hIN7fCGYsoak60yiy/8Z83MQobH2lJpFVMPd
lxck1HyT63xU8jdeX/K4cm/JVIFxEMU4IJlWYzwmVXWw8Jf1Q9ysHm4yGjNkzt/F
CXFG42qaRw83O0CHMUoC/kj36hApNg==
=5wWe
-----END PGP SIGNATURE-----

--JOLhUiwTgyOFdQfv--
