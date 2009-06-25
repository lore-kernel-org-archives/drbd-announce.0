Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 25 Jun 2009 17:50:48 +0200
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200906251750.48646.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.2rc2.tar.gz
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

Please help testing this pre release, before we tag the final DRBD-8.3.2 !!

Highlights:
 * optional compression of the bitmap exchange
 * new OCF resource agent
 * fencing callback, working on top of CRM-constraints

Full changelog:

8.3.2rc2 (api:86/proto:86-90)
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
 * Allow more than two host ('on' keyword) sections, new drbdadm option '--peer'
 * New, alternate keyword 'floating' for host sections, for matching by ip-address
 * An OCF resource agent for pacemaker
 * crm-fence-peer.sh: A fence peer handler using pacemaker constraints
 * /etc/init.d/drbd stop now works completely independent of the config file
 * arbitrary custom device names (prefix drbd_ required)
 * Code cleanups for Linux mainline submission (no functional change)
 * Using Linux's own tracing framework instead of our own
 * Compatibility with Linux 2.6.30 and 2.6.31-rc1

http://git.drbd.org/?p=drbd-8.3.git;a=tag;h=drbd-8.3.2rc2
http://oss.linbit.com/drbd/8.3/drbd-8.3.2rc1.tar.gz

-Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

