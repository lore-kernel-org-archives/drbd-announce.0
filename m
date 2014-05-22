Return-Path: <lars.ellenberg@linbit.com>
Date: Thu, 22 May 2014 12:34:28 +0200
From: Lars Ellenberg <lars.ellenberg@linbit.com>
To: drbd-user@lists.linbit.com
Message-ID: <20140522103428.GC25031@soda.linbit>
References: <20140521100019.GC14545@soda.linbit>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <20140521100019.GC14545@soda.linbit>
Content-Transfer-Encoding: quoted-printable
Cc: drbd-announce@lists.linbit.com
Subject: [DRBD-announce] Clarification about drbd-utils 8.9.0 [Re:
	drbd-8.4.5rc1.tar.gz]
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

On Wed, May 21, 2014 at 12:00:19PM +0200, Lars Ellenberg wrote:
>=20
> This is a release candidate. Please help testing,
> and let us know of any problems or regressions, performance or otherwis=
e.
>=20
> Thanks,
> 	Lars
>=20
> Git:
>   http://git.linbit.com/drbd-8.4.git/shortlog/refs/tags/drbd-8.4.5rc1
> Tarballs:
>   http://oss.linbit.com/drbd/8.4/drbd-8.4.5rc1.tar.gz
>   http://oss.linbit.com/drbd/drbd-utils-8.9.0rc1.tar.gz
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>   With DRBD module version 8.4.5, we split out the management tools
>   into their own repository at http://git.linbit.com/drbd-utils.git
>   (tarball at http://oss.linbit.com/drbd)
>=20
>   That started out as "drbd-utils version 8.9.0",
>   and provides compatible drbdadm, drbdsetup and drbdmeta tools
>   for DRBD module versions 8.3, 8.4 and 9 (prereleases as of now).
>=20
>   Again: to manage DRBD 8.4.5 kernel modules and above,
>   you want drbd-utils >=3D 8.9.0 from above url.
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Users of drbd module and drbd-utils < 8.4.5
*may* chose to upgrade to drbd-utils 8.9.0,
even when keeping their current module version.

Put the oder way around,
if you chose to keep a module version < 8.4.5,
it is OK to keep the corresponding drbd-utils version as well.
Though we recommended to upgrade to drbd-utils 8.9.0 anyways.

Users of drbd module >=3D 8.4.5
*should* upgrade to drbd-utils 8.9.0
(even though most of it will still work with drbd-utils <=3D 8.4.4 as wel=
l).

Our .rpm package dependencies actually have the module package require
the equivalent drbd-utils version, so that should is in fact a must,
unless you role your own packages, or fiddle with the rpm dependencies.

Our .deb module packages are not that strict,
for reasons I don't remember the details of right now.
Still the recommendation is the same.

People who try to play with drbd 9 pre-releases
*must* use drbd-utils >=3D 8.9.0.

Thanks,

	Lars

--=20
: Lars Ellenberg
: LINBIT | Your Way to High Availability
: DRBD/HA support and consulting http://www.linbit.com

DRBD=AE and LINBIT=AE are registered trademarks of LINBIT, Austria.
__
please don't Cc me, but send to list   --   I'm subscribed
