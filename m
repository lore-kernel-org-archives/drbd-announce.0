Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 28 Jan 2011 15:50:46 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201101281550.46538.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.10.tar.gz
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

We are proud to release The final drbd-8.3.10 release. 

 The outstanding feature is the support for device sizes up
 to one petabyte. (On 64 bit platforms only).

 The other big change is the introduction of the Ahead/Behind mode.
 It is intended for setups where it is more important to have low IO 
 latencies that an up-to-date mirror. This can be important for long 
 distance replication.

8.3.10 (api:88/proto:86-96)
--------
 * Fixed a subtle performance degradation that might affected synchronous
   work loads (databases) (introduced in 8.3.9)
 * Fixed a locking regression (introduced in 8.3.9)
 * Fixed on-no-data-accessible for Primary, SyncTarget nodes (Bugz 332)
 * Progress bar for online verify
 * Optionally use the resync speed control loop code for the online verify
   process as well
 * Added code to detect false positives when using data-integrity-alg
 * New config option on-congestion and new connection states ahead and behind
 * Reduced IO latencies during resync, bitmap exchange and temporal states
 * Only build a single kernel module package on distributions that provide
   the infrastructure to have kernel version independent modules
 * On 64bit architectures allow device sizes up to one petabyte

http://oss.linbit.com/drbd/8.3/drbd-8.3.10.tar.gz
http://git.drbd.org/?p=drbd-8.3.git;a=tag;h=drbd-8.3.10
http://www.linbit.com/support/drbd-8.3.10/

Best,
 Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
