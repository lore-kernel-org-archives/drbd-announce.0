Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 20 Dec 2011 15:37:30 +0100
Message-ID: <1819472.ZxoYtEPIK5@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.4.1.tar.gz
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

Hi fellows,

Once again I am proud to announce a new release: 8.4.1

I hope that we have the majority of regressions that where
introduced with the 8.4 effort identified and fixed now.

The bug described by the first item of the changelog can only trigger
if you use multiple volumes.

I advise every user of 8.4.0 to upgrade to 8.4.1, due to the possible
kernel OOPS (second item on the change log).

New features

 * Read load balancing.
  That might be of interest if you have a faster network between
  your DRBD nodes in place, and want to benefit of the secondary's
  IO bandwidth for reading.

 * Works with Linux-3.2
  It was actually tested with Linux-3.2-rc6, but since the merge
  window closed long time ago, there is hope that it will also work
  with the final Linux-3.2.


8.4.1 (api:genl1/proto:86-100)
--------
 * Fixed a bug that might cause in kernel list corruption triggered by
   simultaneous IO on multiple volumes in a single resource
 * Fixed a bug that might cause a kernel OOPS in the worker thread while
   the receiver tied to establish a connection (drbd-8.4.0 regression)
 * Fixed an issue in the receiver that could cause connection triggered by
   simultaneous IO on multiple volumes in a single resource
 * Consider the discard-my-data flag for all volumes
 * Fixed attaching to backing devices that do not support barriers/flushes,
   when barriers/flushes are not disabled by the configuration.
   (drbd-8.4.0 regression)
 * Fixed a rare compatibility issue with DRBD's older than 8.3.7
   when negotiating the bio_size
 * Fixed a rare race condition where an empty resync could stall with
   if pause/unpause events happen in parallel
 * Made the re-establishing of connections quicker, if it got a broken pipe
   once. Previously there was a bug in the code caused it to waste the first
   successful established connection after a broken pipe event.
 * crm-fence-peer.sh: Can now deal with multiple DRBD instances being in
   a master/slave group
 * Optional load balancing for read requests: new keyword "read-balance"

http://oss.linbit.com/drbd/8.4/drbd-8.4.1.tar.gz
http://git.drbd.org/?p=drbd-8.4.git;a=tag;h=drbd-8.4.1
http://www.linbit.com/support/drbd-8.4.1/

Best,
 Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

