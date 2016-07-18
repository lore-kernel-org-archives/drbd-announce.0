Return-Path: <lars.ellenberg@linbit.com>
Date: Mon, 18 Jul 2016 14:57:54 +0200
From: Lars Ellenberg <lars.ellenberg@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20160718125754.GA20868@soda.linbit>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [DRBD-announce] drbd-8.4.8-1.tar.gz
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


No one complained about the release candidate,
so without further changes, this is the release.

Git:
  http://git.linbit.com/drbd-8.4.git/shortlog/refs/tags/drbd-8.4.8-1
Tarball:
  http://www.drbd.org/download/drbd/8.4/drbd-8.4.8-1.tar.gz

> Changes since 8.4.7:
>=20
>  * compat fixes for linux kernels up to 4.7
>  * fix potential deadlock with many parallel request on kernels >=3D 4.=
3
>  * fix potential data divergence after write error on secondary
>    with non-synchronous replication
>  * performance improvement for kernel >=3D 2.6.39
>    use request plugging again to help backends with merging batches
>=20
> Already in 8.4.7-2:
>=20
>  * compat: don't trigger BUG_ON on flush in kernel < 2.6.24 (e.g. RHEL =
5)
>  * al_write_transaction: skip re-scanning of bitmap page pointer array.
>    Improves performance of random writes on "huge" volumes
>    by burning less CPU and avoiding CPU cache pressure.

Thanks,

    Lars

--=20
: Lars Ellenberg
: LINBIT | Keeping the Digital World Running
: DRBD -- Heartbeat -- Corosync -- Pacemaker

DRBD=AE and LINBIT=AE are registered trademarks of LINBIT
