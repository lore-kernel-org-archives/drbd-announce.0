Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2BF5C420127
	for <drbd-announce@lists.linbit.com>;
	Tue, 26 Apr 2022 11:04:20 +0200 (CEST)
Received: by mail-wr1-f52.google.com with SMTP id j15so11219703wrb.2
	for <drbd-announce@lists.linbit.com>;
	Tue, 26 Apr 2022 02:04:20 -0700 (PDT)
Date: Tue, 26 Apr 2022 11:04:19 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Yme1k76SkavsMJld@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vOakA2EyuybyzxG0"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.21.0
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


--vOakA2EyuybyzxG0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the final version for drbd-utils 9.21.0. The main reason is the
addition of "secondary --force" Phil wrote about in the DRBD kernel
module RC announce.

This also includes all the fixes from 9.20.1 and 9.20.2, and various
other small fixes like a fix for "drbdadm sh-resource", and fixes for
notify.sh for DRBD9. Please see the Changelog and the commit history for
more details.

The only change since RC1 is that a confusing unused
--peer=connect_to_host option was dropped from drbdadm in v9.

Regards, rck

TGZ: https://pkg.linbit.com/downloads/drbd/utils/drbd-utils-9.21.0.tar.gz
GIT: https://github.com/LINBIT/drbd-utils/commit/9aeb1059d37b92fec8db2b47e356c4e7fa030b64
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
 9.21.0
-----------
 * drbdsetup,v9: show susupend reason in json output
 * drbdsetup,v9: add secondary --force
 * drbdsetup,v9: fix *susp_str() for events2 diff mode
 * drdbdadm,v9: fix sh-resource
 * drdbdadm,v9: rm --peer=connect_to_host
 * doc: various improvements
 * windrbd: ask user if for admin if access denied
 * ocf: deal with situation where PM node name and actual node name do
 * not match
 * notify.sh: deal with unset DRBD_PEER env variable

--vOakA2EyuybyzxG0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmJntY8ACgkQRgmezyI6
myJZDwf/edvm620UylFSmQGreYAEzIYmwMody1SZkDOx6Apw+Rc40FyHF4f4MiSE
OlfQZBPpijxbENqZR/aj7BYYl04fskbDRPICnHXamTPKxThVGZaCXOuKnDNsTDu0
GOMZ2ILCoTU5yqE/0tCz7mIeT3d7euY15jOkJjuJGTw2KeDAIyK/DpvT8y6c1eiB
UIPCSxEvHIxocKTcdQI0ltB6fQEv/wQ8kFeAA2I/YPbQ/FKqsP3HH/duJU7UGWlq
tABcw27FdL0yDlA9pzU0a5J0xz7C+UWVUqxpBu9pIEddLWhvRHxYJOjuHqRW3QsL
IHL2dF3QnwzwUEZT5tqjoyYWDh8/mA==
=fsUs
-----END PGP SIGNATURE-----

--vOakA2EyuybyzxG0--
