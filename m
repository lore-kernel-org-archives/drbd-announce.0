Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 10 Jun 2014 14:13:20 +0200
Message-ID: <2910209.L2hKvvNsIf@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.4.5.tar.gz AND drbd-utils-8.9.0.tar.gz
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

Hi,

This is the first release since we have split the drbd-utils
code off into a dedicated repository.

  The advantage is that we have one drbd-utils package that
  works with different versions of the drbd-module (drbd driver).

  I am referring here to different minor versions like 8.4.4 and
  8.4.5 as well as to different major versions like 8.3.x, 8.4.x
  and 9.0.x. All those different versions of the drbd kernel
  code can be controlled with the tools from one drbd-utils package.

  The drbd-utils package comes with man pages for the three major
  versions including symlinks that default to version 8.4.
  I.e "man drbd.conf" will bring the 8.4 version to you screen.
  "man drbd.conf 9.0" will show you the possible options for 
  drbd 9.0.

The drbd-8.4.5 kernel driver has the usual number of fixes
to bugs that affect a rather small portion of our user base.

In the drbd-utils package there is a bug-fix that needs to
be high-lightened. With the 8.4.3 release a regression was
introduced that causes data loss when doing "offline reisze"
with internal meta-data!! This regression is fixed with this
release.


drbd-8.4.5 (api:genl1/proto:86-101)
-------
 * fix potential BUG_ON in mempool_alloc for older kernels (<2.6.23)
 * fix cornercase of resync finished detection
 * fix drbd_ldev_destroy to run exactly once and in worker context
 * fix spurious detach/disconnect: don't announce WRITE_SAME
 * fix NULL pointer deref in blk_add_request_payload
   (DISCARD/TRIM handling in sd)
 * fix regression: potential NULL pointer dereference
 * fix regression: potential list corruption
 * fix regression: potential deadlock in adm functions (drbdsetup)
 * fix regression: /sbin vs /usr/sbin in scripts
 * fix race stopping the worker thread
 * new debugfs presence expose oldest requests and other details
 * userspace moved to own repository
 * linux 3.13 and 3.14 compatibility
 * improve adaptive resync controler
 * reduce bitmap IO during resync
 * allow write-ordering policy to be bumped up again
 * trigger tcp_flush_pending_frames() for PING/PING_ACK
 * fix potential segfault in drbdadm adjust
 * drbdsetup improvements: fix netlink socket buffers; detect modprobe failure

drbd-utils-8.9.0
--------
  * Initial release of unified drbd-utils
  * Supports drbd drivers 8.3, 8.4 and 9.0
  * Ships with man page links defaulting to 8.4
  * Fixed offline resizing in drbdmeta; A regression that causes
    data loss, since meta-data was written with wrong offset.
    The regression was introduced with 8.4.3


http://oss.linbit.com/drbd/8.4/drbd-8.4.5.tar.gz
http://oss.linbit.com/drbd/drbd-utils-8.9.0.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-8.4.git;a=tag;h=refs/tags/drbd-8.4.5
http://git.drbd.org/gitweb.cgi?p=drbd-utils.git;a=tag;h=refs/tags/v8.9.0

Best regards,
 Phil
