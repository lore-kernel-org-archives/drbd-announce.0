Return-Path: <lars.ellenberg@linbit.com>
Date: Wed, 21 May 2014 12:00:19 +0200
From: Lars Ellenberg <lars.ellenberg@linbit.com>
To: drbd-announce@lists.linbit.com
Message-ID: <20140521100019.GC14545@soda.linbit>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.4.5rc1.tar.gz
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


This is a release candidate. Please help testing,
and let us know of any problems or regressions, performance or otherwise.

Thanks,
	Lars

Git:
  http://git.linbit.com/drbd-8.4.git/shortlog/refs/tags/drbd-8.4.5rc1
Tarballs:
  http://oss.linbit.com/drbd/8.4/drbd-8.4.5rc1.tar.gz
  http://oss.linbit.com/drbd/drbd-utils-8.9.0rc1.tar.gz

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
  With DRBD module version 8.4.5, we split out the management tools
  into their own repository at http://git.linbit.com/drbd-utils.git
  (tarball at http://oss.linbit.com/drbd)

  That started out as "drbd-utils version 8.9.0",
  and provides compatible drbdadm, drbdsetup and drbdmeta tools
  for DRBD module versions 8.3, 8.4 and 9 (prereleases as of now).

  Again: to manage DRBD 8.4.5 kernel modules and above,
  you want drbd-utils >=3D 8.9.0 from above url.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Other than that, the module has received a number fixes
both for regressions and long standing corner case bugs
or hard to trigger races.

We have one new configuration option,
  csums-after-crash-only
which goes along with csums-alg,
and changes the behavior of checksum-based resync
to use checksums only for the first resync after a primary crash,
where we will resync many blocks "just in case",
and many of those will actually be in-sync already.

And we have a new DRBD debugfs hierarchy:
	 /sys/kernel/debug/drbd/
	 ./version
	 ./minors/<minor> -> ../resources/<name>/volumes/<vnr>
	 ./resources/<name>/in_flight_summary
	 ./resources/<name>/connections/peer/oldest_requests
	 ./resources/<name>/connections/peer/callback_history
	 ./resources/<name>/volumes/<vnr>/data_gen_id
	 ./resources/<name>/volumes/<vnr>/resync_extents
	 ./resources/<name>/volumes/<vnr>/act_log_extents
	 ./resources/<name>/volumes/<vnr>/oldest_requests

Though information in there is probably only interesting
to wizard-level problem diagnosis or advanced policy scripting.
If you want to know what's in there, look into drbd_debugfs.c ;-)

Some of this used to be available via /sys/block/drbdXYZ/drbd/,
which has been dropped now.

Changes since 8.4.4
 * fix potential BUG_ON in mempool_alloc for older kernels (<2.6.23)
 * fix cornercase of resync finished detection
 * fix drbd_ldev_destroy to run exactly once and in worker context
 * fix spurious detach/disconnect: don't announce WRITE_SAME
 * fix NULL pointer deref in blk_add_request_payload
   (DISCARD/TRIM handling in sd)
 * fix regression: potential NULL pointer dereference
 * fix regression: potential list corruption
 * fix regression: potential deadlock in adm functions (drbdsetup)
 * fix race stopping the worker thread
 * new debugfs presence expose oldest requests and other details
 * userspace moved to own repository
 * linux 3.13 and 3.14 compatibility
 * improve adaptive resync controler
 * reduce bitmap IO during resync
 * allow write-ordering policy to be bumped up again
 * trigger tcp_flush_pending_frames() for PING/PING_ACK

--=20
: Lars Ellenberg
: LINBIT | Your Way to High Availability
: DRBD/HA support and consulting http://www.linbit.com

DRBD=AE and LINBIT=AE are registered trademarks of LINBIT, Austria.
