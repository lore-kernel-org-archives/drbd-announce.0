Return-Path: <philipp.reisner@linbit.com>
Received: from amd.localdomain (chello080108092198.22.11.tuwien.teleweb.at
	[80.108.92.198])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 83CA22E1169E
	for <drbd-announce@lists.linbit.com>;
	Sat,  7 Apr 2007 10:18:22 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Sat, 7 Apr 2007 10:18:22 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200704071018.22538.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0.2.tar.gz
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Hi,

It is time to get all the post 8.0.1 fixes out of the door:

8.0.2 (api:86/proto:86)
--------
 * Removed a bug that could cause an OOPS in drbd_al_to_on_disk_bm()
 * Improved the robustness of the UUID based algorithm that decides
   about the resync direction.
 * Fixed the error handling in case a the open() of a backing
   blockdevice fails.
 * Fixed a race condition that could cause a "drbdadm disconnect" to hang.
 * More verbosity in we can not claim a backing block device.
 * More verbosity and paranoia in the bitmap area.
 * On some vendor kernels 8.0.1 did not load because of kzalloc. fixed.
 * Fault injection can now not only be turned on or off, but can be
   enabled on a per device basis.
 * Fixed the scripts and files needed to build drbd into a kernel.


The first on the list is the real nasty one. It might only bite you if
you do a switchover after a lot of IO-activity, and that IO must
be 100% scattered, no sequential accesses.  (the AL must be full)

  (Actually I am still impressed that this issue was triggered
   by an user at all.)

The bug of fix number two can be reproduces by resetting a SyncTarget
node, while it is in the "WFBitMapT" state. It is a small time-
window, but it can happen...


Nothing hair-raising, but users of 8.0.x should definitely upgrade
to 8.0.2.

http://oss.linbit.com/drbd/8.0/drbd-8.0.2.tar.gz
http://svn.drbd.org/drbd/tags/drbd-8.0.2/
http://www.linbit.com/support/drbd-8.0.2/

-Phil
