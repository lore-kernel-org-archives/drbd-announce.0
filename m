Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 207D64203CF
	for <drbd-announce@lists.linbit.com>;
	Tue, 18 Jul 2023 13:49:48 +0200 (CEST)
Received: by mail-wr1-f53.google.com with SMTP id
	ffacd0b85a97d-3159d75606dso5374790f8f.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 18 Jul 2023 04:49:48 -0700 (PDT)
Date: Tue, 18 Jul 2023 13:49:46 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZLZ8WuCMDDdYvJus@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ijFWJh+akSnSO4jC"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.25.0-rc.2
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


--ijFWJh+akSnSO4jC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is RC2 of the upcoming drbd-utils version 9.25.0. No big changes
since RC1, but one "breaking". The format of "drbdsetup show --json" for
meta-data information changed. For indexed external meta data which
basically nobody uses anyways we generated a key/value pair like:
'"/path/to/dev/": 3'. This certainly was not on purpose and we now
generate:
"meta-disk": "/path/to/dev",
"meta-disk-index": 3

Note that "show --json" (in contrast to "status --json") always only was
as good as we needed it for our internal CI pipelines. Given the
basically "unparsable" key I really assume nobody uses the old broken
format.

The new drbdmon got some updates and we fixed building from spec files
for RHEL6 and SLES11SP4. Don't ask.

Please test, if nobody reports issues, I will release the final version
in about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/33eae141275d576259412d74b78f82780fa397fa
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.25.0-rc.2.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
9.25.0-rc.2
-----------
 * drbdsetup,v9,show: fix meta disk format for json
 * drbdmon: various updates
 * build: fix RHEL6 spec builds

--ijFWJh+akSnSO4jC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmS2fFYACgkQRgmezyI6
myK4OAgAn/EtpQUttb4KYAXCkebPv1Nj39PSKonyui2PqOxiEsPddV4m1kbDLzFH
x5kpiMB+e3mg2xqwxED4UoHSXDDMVUd10HRULXCtU0anqAig3o6jEK+VuNHbrGvi
5sIb4OpIAfHcKbZiM6cI50E6mn5mKnWpFsSODJ8efWHpI77FkaabXdcwp7KtQ+BM
vRLcOa+vuI2dj7HppPLJCEzWayscCFUjYAp5Fe+qeU98A67VzBtpsh+kNII8gLmy
NyCbANEIAVkghdVihCuhI8VrL+e7+STRRDP2p0CSpr8UDaBiW1AkirEVMoDhexrE
RNgcGogRZPDsDu4VSydcxLvgkU6hNw==
=spWv
-----END PGP SIGNATURE-----

--ijFWJh+akSnSO4jC--
