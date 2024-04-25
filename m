Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
	[209.85.208.180])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 64C0A42016C
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Apr 2024 09:19:53 +0200 (CEST)
Received: by mail-lj1-f180.google.com with SMTP id
	38308e7fff4ca-2d88a869ce6so7952861fa.3
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Apr 2024 00:19:53 -0700 (PDT)
Date: Thu, 25 Apr 2024 09:19:49 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: drbd-utils v9.28.0-rc.1
Message-ID: <ZioEFbCHo4HRU7qq@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="l/4e2NiClLhxu2xx"
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


--l/4e2NiClLhxu2xx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the first RC of the upcoming drbd-utils version 9.28.0. In
contrast to the recent releases this one contains a bit more exciting
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

Please test, if we don't find any bugs the final version will get
released in about a week from now.

Regards, rck

Changelog:
 * events2: set may_promote:no promotion_score:0 while
   force-io-failure:yes
 * drbdsetup,v9: show TLS in connection status
 * drbdsetup,v9: add udev command
 * 8.3: remove
 * crm-fence-peer.9.sh: fixes for pacemaker 2.1.7
 * events2: improved out of order message handling

GIT: https://github.com/LINBIT/drbd-utils/commit/5ddb29c18c0a539fb010f883ea4f88bd1d184391
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.28.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--l/4e2NiClLhxu2xx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmYqBA4ACgkQRgmezyI6
myKvCQgAoLMyPS7MNfzhlBrgqHabjSrPkKrPMdwt824vXfCw7TiMm8PafSdwdQL5
GzcqZVFKOSp8DEfRFU/wRbwsiMiDPyeGuD6axsJSqwqlY1/2nrt3XHR522iU2M+O
k7mlyn5rRDzX/ht5CcpKsW0/1CgS8R8zO2tYto0G9AEGn0LtqvMZtRFeGjUHWooA
fHtT50tIF0EnBhyrImU9fEWOck9yJ7ljKW1epdwmnxecdYA5t4iRmgzteldjn/L+
auseA9GjTMBfVWpwkhs1iWNl6Xt7k0FNdMCN6ltb9RC1P3bTd931DcjQillr8l51
B/wT3boRxzMNU9efg8ebR3NGvWTFLw==
=0Dw6
-----END PGP SIGNATURE-----

--l/4e2NiClLhxu2xx--
