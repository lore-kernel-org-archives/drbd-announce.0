Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 06 Sep 2016 18:20:37 +0200
Message-ID: <1811069.jliCEeCfVo@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.4 & drbd-utils-8.9.8
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

recently we have been working a lot with OpenStack and had to
fix many bugs in drbd-9.0 to make it work smooth in that context.
There is still more to do, but it is impressive to see it running
with with 500 resources, each spanning 4 nodes, where 3 have storage.

  Since OpenStack resizes volumes in the process of creating a
  volume for a running instance we had to invest a lot of effort to
  make resizing reliable. From now on a resize operation in DRBD9
  is a two-phase commit.

A lot of bugs where fixed, a number of long known ones, like two-phase
commit endless abort loops. I suggest every user of drbd-9 to upgrade
to 9.0.4 as soon as possible.


drbd
9.0.4-1 (api:genl2/proto:86-112/transport:14)
--------
 * fix enforcement of single-primary constraint; a regression of 9.0.3
 * fix resetting of ko_count
 * fix the sometimes seen two-phase-commit ABORT endless loop
 * fix a possible sleep in atomic with no longer taking locks in _destroy
   functions
 * fix two-phase-commits when the nodes build a loop; correctly handle
   them where the two "flows" merge, both for PREPARE and COMMIT
 * fix the resync after online grow
 * fix a refcount leak in case a user-process terminates while doing
   a .dumpit operation (drbdsetup state; drbdsetup show; drbdsetup events2...)
   The damage of the bug was a resouce that never goes away
 * fix a multi-node issue in comparing the GIs
 * fix data-structure handling for RCU consumers (adding connections)
 * reimplement online resize as two-phase-commit operation; the old online resize
   code could get into packet-loop storms, had many problems; works when all nodes
   support protocol 112
 * enable kref-debug code by default
 * enable parallel_ops for gennetlink operations; that is a workaround for
   a "sleep while atomic" on kernels 4.3 and upwards; it is a performance
   improvement for all; especially users of Open vSwitch will rejoice
 * avoid "initial packet S crossed"
 * a number of fixes to speed up establishing of connections
 * remove some home made mutex deadlocks
   (auto promote - down; del_resource - new_path)

http://www.drbd.org/download/drbd/9.0/drbd-9.0.4-1.tar.gz
http://git.drbd.org/drbd-9.0.git/tag/drbd-9.0.4

drbd-utils
8.9.8
--------
 * fix a lot of regressions from allowing to pass command options
   on the drbdadm adjust commandline. (filtering of backend options)
 * wait-for-* return success if there are no peers
 * naturally align 64 bit attributes in gennetlink packets
 * improve systemd unit-file to wait for network-online.target
 * return success for a resize to the same size even if a resync
   does not allow as resize at this point in time
 * improve sh-nop with --config-to-test with new --config-to-exclude
   and correct exit code
 * implemented --json for drbdsetup status

http://www.drbd.org/download/drbd/utils/drbd-utils-8.9.8.tar.gz
http://git.drbd.org/drbd-utils.git/tag/refs/tags/v8.9.8


cheers!

