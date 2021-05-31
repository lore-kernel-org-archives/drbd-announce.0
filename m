Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 04331420026
	for <drbd-announce@lists.linbit.com>;
	Mon, 31 May 2021 15:35:42 +0200 (CEST)
Received: by mail-wr1-f53.google.com with SMTP id q5so310531wrm.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 31 May 2021 06:35:42 -0700 (PDT)
Date: Mon, 31 May 2021 15:35:40 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210531133540.GE1398@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oyUTqETQ0mS9luUI"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.18.0-rc.1
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


--oyUTqETQ0mS9luUI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the first release candidate of drbd-utils 9.18.0. This release
is mainly triggered by features/scripts that drbd-reactor will depend on
soon, but contains some additions on its own as well. There is no urgent
need to upgrade.

Notable changes:
- as I mentioned previously in some discussion on drbd-user, the helper
  targets for rpm building are now gone. This allowed us to simplify the
  make-magic substantially. If you know rpm building you most likely
  have not used these "helpers" anyways. But if, you can find them in
  the git history/last release. Feel free to copy these to a
  GNUmakefile or whatever works for you.

- drbd.service is basically a wrapper around the old and not too pretty
  init shell script. This release contains a set of proper service files
  that should be used instead. Documentation if currently "sparse"
  (i.e., does not exist). We will add documentation within drbd-utils
  and the users-guide soon. If you know systemd, the information in the
  commit message actually should be good enough:
  https://github.com/LINBIT/drbd-utils/commit/04eb3c13f062bc541683dc6d5f48a37f4a291f67

- the before mentioned systemd service templates that will be used by
  drbd-reactor and its promoter plugin soon. This will allow simple HA
  via systemd without the complexity of pacemaker. It will even support
  OCF resource agents, but all of that will be part of the soon to be
  released RC1 of drbd-reactor v0.4.0.

Regards, rck

9.18.0-rc.1
-----------
 * build: remove rpm related targets
 * drbdsetup,v84: fix minor compile warnings
 * systemd: resource specific activation
 * systemd: drbd-reactor promoter templates

GIT:
https://github.com/LINBIT/drbd-utils/commit/5d8a547e4c0afdbe84409cfdd6431d6082ca5317
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/
TGZ:
https://linbit.com/downloads/drbd/utils/drbd-utils-9.18.0-rc.1.tar.gz

--oyUTqETQ0mS9luUI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmC05icACgkQRgmezyI6
myIMLAf8DXONi34ny9TfCo7EY4YdC5MDHPu7LmYzTEhrh/xDqWjyv4Oymeek48o2
l3VWBJ1/A33mzqpNaD3/DnuN3GkTnW5O8ow+2aAELehseaBkMuFH5w8VsQcNYE9s
YMm0bfQhKYE9oR+7KSEhgoj6OHqKd8Y5LYlsKTFxWzjBB+jSnm3rUqAl/m4PZrx2
g8vODTipCdt8RnNkf3GdDUzxNd3KQs6Stgc6F4WBTCkYn3mTuxwTkxdXrPIl5TLb
Na3e8XEN81Flxm7oUXHS2Yf1OlIHV166sZLCrOj04m0AL6Vv5/pL0QMQseoWZMJ+
b14/iyiegZqFiTyuADXKFMs3gIKU8A==
=obFw
-----END PGP SIGNATURE-----

--oyUTqETQ0mS9luUI--
