Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 8 Jun 2009 17:43:01 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200906081743.02016.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.2rc1.tar.gz
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

The new feature to highlight is the bitmap compression:

  For big devices replicated via rather low bandwidth links,
  the time for the bitmap exchange gets non negligible. You as
  administrator will notice this, because DRBD freezes all 
  application IO during bitmap exchange i.e. during a phase
  while establishing a connection.

  From now on you can enable bitmap compression "use-rle" and
  the bitmap will be compressed before exchange, speeding up
  that process by a very large factor 100 - many thousand.

We started a new effort to get DRBD merged into Linux mainline. The
result of that cleanup work was merged back into DRBD mainline.
-> The patch between 8.3.1 and 8.3.2 will touch nearly every line.

8.3.2rc1 (api:86/proto:86-90)
--------
 * Fixed the "Not a digest" issue for hash functions already ported to shash
 * Fixed a race condition between device configuration and de-configuration
 * Fixed: The sync-after logic modified flags of an unconfigured
   device. This caused very weird symptoms later. (Bugz 214)
 * Fixed a possible imbalance of the 'pe' counter during online verify
 * Fix for potential segfaults in drbdadm's sh-status & status commands
 * Correctly clean up resync status if a detach interrupts a resync (Bugz 223)
 * Reasonable error reporting if 'drbdadm invalidate' fails because resync already runs
 * New module parameter: disable_sendpage. Workaround for a Xen on DRBD issue
 * Allow detach while being SyncTarget (Bugz 221)
 * Optional RLE compression of the bitmap exchange ('use-rle' keyword)
 * Rewrite of the LRU code
 * Allow to skip initial resync: 'drbdadm -- --clear-bitmap new-current-uuid'
 * Upon request of Dolphin NICS: The 'sci' keyword is now called 'ssocks'
 * An OCF resource agent for pacemaker
 * crm-fence-peer.sh: A fence peer handler using pacemaker constraints
 * /etc/init.d/drbd stop now works completely independent of the config file
 * arbitrary custom device names (prefix drbd_ required)
 * Code cleanups for Linux mainline submission (no functional change)
 * Using Linux's own tracing framework instead of our own
 * Compatibility with Linux 2.6.30

http://git.drbd.org/?p=drbd-8.3.git;a=tag;h=drbd-8.3.2rc1
http://oss.linbit.com/drbd/8.3/drbd-8.3.2rc1.tar.gz

-phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

