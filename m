Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 4 Jun 2010 12:43:40 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201006041243.41262.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.8.tar.gz
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

I am proud to announce the release of DRBD 8.3.8

I recommend to update to this new release. Although all of the fixed
bugs are either very hard to trigger or affect only rare cases,
you will be happy if you never hit them.

The most outstanding change with this release is, that DRBD now
can use multiple BIOs (single IO requests) for processing a signle 
data packat on the receiving side. This allows DRBD in many more 
cases than before (on LVM's LVs) to process BIOs of a size of up
to 32k. (Before that DRBD, in many cases, forced the whole stack
down to a max BIO size of 4k).

This is important for hardware setups where both disk IO subsystem 
and connecting network operate in the area of 10GBit/sec. Those become 
rapidly more common.

8.3.8 (api:88/proto:86-94)
--------
 * Do not expose failed local READs to upper layers, regression introduced
   in 8.3.3
 * Fixed support for devices with 4k hard sector size (again)
 * Fixed a potential Oops in the disconnect code
 * Fixed a race condition that could cause DRBD to consider the peers disk
   as Inconstent after resync instead of UpToDate (Bugz 271)
 * Fixed a reace condition that could cause DRBD to consider the peers disk
   as Outdated instead of Inconsistent during resync (Bugz 277)
 * Disallow to start a resync with invalidate / invalidate-remote when the
   source disk is not UpToDate
 * Forcing primary works now also for Consistent, not only for Outdated and
   Inconsistent (Bugz 266)
 * Improved robustness against corrupt or malicous sector addresses when
   receiving data
 * Added the initial-split-brain, it gets called also if the split-brain gets
   automatically resolved
 * Added the --assume-clean option for the resize command, it causes drbd to
   not resync the new storage after an online grow operation
 * drbdadm: Do not segfault if stacked-on-top-of refers to an undefined res
 * drbdadm: Do not consider configs with invalid after statements as invalid
 * drbdadm: Do not segfault if the peer's proxy section is missing
 * drbdadm: Allow nullglob in include statement
 * drbdadm: Fixed the use of waitpid
 * init script: fix insserv headers (Debian 576901)
 * Gave the receiving code the ability to use multiple BIOs for writing a
   single data packet; now DRBD works with BIOs up to 32kByte also on LVM
   devices; from now on the use_bmbv config option does nothing
 * New command check-resize, that allows DRBD to detect offline resizing
   and to move internal meta-data accordingly
 * Added a control loop, that allows DRBD to find auto tune the resync
   speed, on connections with large queues (drbd-proxy)
 * --dry-run option for connect; disconnects after sync handshake
 * --overwrite-data-of-peer got an alias named --force
 * Improvements to crm-fence-peer
 * Fixed option parsing and stacking in snapshot-resync-target-lvm.sh
 * Compiles on 2.6.33 and 2.6.34

http://oss.linbit.com/drbd/8.3/drbd-8.3.8.tar.gz
http://git.drbd.org/?p=drbd-8.3.git;a=tag;h=drbd-8.3.8
http://www.linbit.com/support/drbd-8.3.8/

Best,
 Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
