Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
	[209.85.167.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E4704420310
	for <drbd-announce@lists.linbit.com>;
	Mon,  6 May 2024 11:02:57 +0200 (CEST)
Received: by mail-lf1-f53.google.com with SMTP id
	2adb3069b0e04-52006fbae67so2193505e87.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 06 May 2024 02:02:57 -0700 (PDT)
Date: Mon, 6 May 2024 11:02:54 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: drbd-utils v9.28.0
Message-ID: <ZjicvnMR8nuq_4ym@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2TWDuo1Oa6OUgAc2"
Content-Disposition: inline
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


--2TWDuo1Oa6OUgAc2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is drbd-utils version 9.28.0. We did not find any bugs since the
last RC, for your convenience the announce mail from the RC:

In contrast to the recent releases this one contains a bit more exciting
news:

- 8.3 code is gone

- events2: netlink messages (used between utils in user space and the
  kernel module) can be sent out of order. So far this was more
  theoretical, but more modern kernels actually seem to actually make
  use of it. We put code in place that reorders such messages if sent
  out of order. This is particularly important for software that depends
  on events2 processing. The actual impact might vary, but just to name
  a few that make use of events2 processing: drbd-reactor, drbdmon,
  LINSTOR.

- udev: drbdsetup got a new "udev" subcommand that replaces drbdadm's
  "sh-udev" command. This allows to have the actual (in kernel) state
  reflect the udev state more closely compared to drbdadm which used res
  file information. It avoids problems if the res file can not be parsed
  or problems if the hostname is not set yet (e.g., systemd-udev starts
  before the hostname is set). All in all we hope this solves udev
  related issues we saw previously.

there are all kinds of fixes and improvements all over the place like
improved Pacemaker support for 2.1.7, or tweaks for the promotion score
if force-io-error is true, which will help drbd-reactor. More details
can be found in the changelog or the git history.

Regards, rck

Changelog:
 * events2: set may_promote:no promotion_score:0 while
   force-io-failure:yes
 * drbdsetup,v9: show TLS in connection status
 * drbdsetup,v9: add udev command
 * 8.3: remove
 * crm-fence-peer.9.sh: fixes for pacemaker 2.1.7
 * events2: improved out of order message handling

GIT: https://github.com/LINBIT/drbd-utils/commit/ba2ce9037989b6141222c7901d1219cf852949f1
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.28.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--2TWDuo1Oa6OUgAc2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmY4nLoACgkQRgmezyI6
myK0jgf/amg2fLhJ2v0A9b1ft9Vx1VBbRhX5ZN03qT7k/1GyGSElpNHUWhHiVSQx
Dd9uVwqJGPU5LVIBEokv0TtUn5o+5CFMG2SbsE2PCnJlR1S7WFdL2eCmOWgLzwaJ
xPaaTYC1UO7IXcGHA/1CUIZFoOY7e9UY3X38fP4ocXeyWFdMmkHB0GPpRLoL0GZS
Bk5PY5g45E1OKTAfa538RIzWSyNS9FC507Yi1f1qdDf9Um1ziYw4+oZC82kZmwYi
GRSBBMq+AIRbC/VQEVJ6JF2siFgSdZRQ7R46k93piI2pIz9FXtknQQNx1rX9BLp6
lD1M1Q2XFl6cjzRPQCNfvbmO0nFINw==
=QQvW
-----END PGP SIGNATURE-----

--2TWDuo1Oa6OUgAc2--
