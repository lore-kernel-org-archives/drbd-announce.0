Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 06 Sep 2012 12:13:23 +0200
Message-ID: <1563953.96duorpRcd@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.4.2.tar.gz
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

Dear DRBD fellows,

Here it is: drbd-8.4.2 !

For any user of DRBD-8.4 we suggest to upgrade to 8.4.2. Previous
8.4 releases had multiple bugs, least one of those can cause
data corruption on a Secondary/Sync target. (In the 8.3 series
this was already fixed with the 8.3.13 release)

  It is worth noting that all previous DRBD-releases did not enforce
  correct ordering of (some) write operations on a resync-target node.

  This can be triggered with the 'cfq' (and possible other) linux
  disk schedulers. -- It is known that when you stay with an DRBD
  release before 8.3.13 and switch the scheduler to 'noop', then it is
  no longer to reproduce the issue.

  It is a rare condition, which is hard to trigger, it may causes 
  corruption in the sense that it looks like if a single block 
  write was not executed on the secondary.
  (actually it was overwritten with the previous version of the data,
   this second write originates from the resync process.)

Apart from that those nasty bugs that caused "disk-barrier no" and
"disk-flushes no" to be ineffective have been removed as well. This
was the reason why the rumour on the net was "drbd-8.3 is faster than 
drbd-8.4".

8.4.2 (api:genl1/proto:86-101)
--------
 * Fixed IO resuming after connection was established before fence
   peer handler returned
 * Fixed an issue in the state engine that could cause state lockup
   with multiple volumes
 * Write all pages of the bitmap if it gets moved during an
   online resize operation. (This issue was introduced with 8.3.10)
 * Fixed a race condition could cause DRBD to go through a
   NetworkFailure state during disconnect
 * Fixed a race condition in the disconnect code path that
   could lead to a BUG() (introduced with 8.4.0)
 * Fixed a write ordering problem on SyncTarget nodes for a write to a block
   that gets resynced at the same time. The bug can only be triggered with a
   device that has a firmware that actually reorders writes to the same
   block (merged from 8.3.13)
 * Fixed a potential deadlock during restart of conflicting writes
 * Disable the write ordering method "barrier" by default, since it is not
   possible for a driver to find out if it works reliably since 2.6.36
 * All fixes that went into 8.3.13
 * Removed a null pointer access when using on-congestion policy on a
   diskless device
 * In case of a graceful detach under IO load, wait for the outstanding
   IO. (As opposed to aborting IOs as a forcefully detach does)
 * Reinstate disabling AL updates with invalidate-remote (8.4.0 regression)
 * Reinstate the 'disk-barrier no', 'disk-flushes no', and 'disk-drain no'
   switches (8.4.0 regression)
 * Backported the request code from DRBD-9. Improves handling of many corner
   cases.
 * Support FLUSH/FUA bio flags
 * Made the establishing of connections faster
 * New option 'al-updates no' to disable writing transactions into the
   activity log. It is use full if you prefer a full sync after a primary
   crash, for improved performance of a spread out random write work load
 * Expose the data generation identifies via sysfs
 * "--stop" option for online verify to specify a stop sector

http://www.linbit.com/support/drbd-8.4.2/
http://oss.linbit.com/drbd/8.4/drbd-8.4.2.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-8.4.git;a=tag;h=refs/tags/drbd-8.4.2

best,
 Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

