Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 810FE1012864
	for <drbd-announce@lists.linbit.com>;
	Mon, 29 Oct 2018 14:16:09 +0100 (CET)
Received: by mail-wr1-f51.google.com with SMTP id t10-v6so8624630wrn.10
	for <drbd-announce@lists.linbit.com>;
	Mon, 29 Oct 2018 06:16:09 -0700 (PDT)
Date: Mon, 29 Oct 2018 14:16:06 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20181029131605.ezih64pji3s2hbsd@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7kenh6aco3vcxtvf"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils-9.6.0
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>


--7kenh6aco3vcxtvf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi DRBD users,

This is drbd-utils release 9.6.0. There is no pressure to update
immediately, it is just that "git log v9.5.0..HEAD --pretty=oneline |
wc -l" has 50 commits, so it is time...

There are minor bug fixes all over the place, see the Changelog/git
history for details.

"Breaking" changes one should be aware of:
- JSON output of drbdsetup status does not contain NaN/Infinity any
  more for numbers. While obviously a bug-fix, it changes the output, so
  it is worth mentioning.
- drbd-overview is gone. We have nicer tools (drbdtop and drbdmon), and
  it was marked deprecated for several releases. I really wanted to get
  rid of the Perl dependency. It is still in the git repo for people
  that want it. For state/bug reports, just use "cat /proc/drbd" and/or
  "drbdsetup status -vs".
- The Makefile does not generate "-debian" tarballs anymore. If you
  really need that, please see 8f402c33940a7fc612ce2fb36f29e4ff8f30c7c4.

9.6.0
--------
 * usage-count: also count notty users if possible.
 * drbd-overview: remove it, we have drbdtop/drbdmon. saves all the Perl deps.
 * drbdmon: update frequency limiting, debug log for drbdevents, use
   altbuffer,...
 * drbdsetup show: on 9 allow json output.
   mainly used in our CI, don't expect a stable field names yet.
 * drbdsetup satus: on 9 fix json output to not include NaN/Infinity
 * allow higher resync rates: first customers hit a limit. this requires an
   updated kernel module as well (e.g., 9.0.16)
 * init: fix some 8-only leftovers (sh-b-pri), sanitize the retry logic
 * doc: document various 9 features that got forgotten (e.g., quorum-lost)
 * build: various small fixes that popped up while playing with meson


https://www.linbit.com/downloads/drbd/utils/drbd-utils-9.6.0.tar.gz
https://github.com/LINBIT/drbd-utils/tree/v9.6.0
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Regards, rck

--7kenh6aco3vcxtvf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAlvXCA0ACgkQRgmezyI6
myLTVwgAoDnMBuozatWmiLu4NJkv6tI4c0QQN53Oy91Lipz76CMLxYarCDWdXAgJ
n4CfsOvxJlZkMgSOAx9BbPkfpifyD3bMivWPZqx8yA2WU4K6lpF0Fow1eQ7XIcJG
fWjAfLiTY5QqfajkjzOHS1GvHpy7z3ZP6MVruZKrxSjb9ghqIPV1s/76VOs0DYZ2
IrL3hx5RDLf47sXabg1pK2H6GupyUj1koDbPV6x1at/gURvoP6u3LNwLNETYzUEm
kssWHYTHCrytaXsQnRMPEm1sDYbIkrYP221T5e1VV/yUz6gr94FnPzmLJZFyJn4z
UkMYFftG75WMEDF7LrUJMtFJIv7XfQ==
=+17j
-----END PGP SIGNATURE-----

--7kenh6aco3vcxtvf--
