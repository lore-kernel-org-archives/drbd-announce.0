Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 29 Jun 2011 18:39:46 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201106291839.47335.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.11.tar.gz
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

This is a bugfix only release in of the 8.3 code branch.

This release has a number of fixes important for long distance
replication setups. (Items 1, 3, 5, 6, 7 = 5 fixes)

Two fixes people that use backing devices where IO errors might
occur. (plain disks, or iSCSI with a non infinite time to retain)

Item 8  is a fix for a regression introduced with 8.3.9
Item 9  fixes for the 1PiByte support introduced with 8.3.10
Item 10 fixes a bug was there since the early days, but it got more
        likely to trigger with DRBD's rather recent ability to use 
        bigger BIO sizes
Item 11 This issue was there since the early days, nobody noticed
        it before

Although nearly of these fixes are for bugs that are very unlikely to
trigger, we recommend upgrading to 8.3.11.

8.3.11 (api:88/proto:86-96)
--------
 * Added missing spinlock in compressed bitmap receive (regression introduced
   in 8.3.10, could lead to "negative" out-of-sync stats and non-terminating
   resync when "use-rle" is enabled)
 * Fixed handling of read errors during online verify runs
 * Fixes for possible distributed deadlocks during online verify and
   checksum based resync processes
 * Fixed handling of IO errors with an on-io-error=pass-on policy; the
   disk state goes to inconsistent
 * Fixed the behavior in case ping-timeout and ping-int are set to the
   same value
 * Fix for connecting on high latency network links
 * Fixed wrong connection drops ("PingAck did not arrive in time") with
   asymmetrically congested networks
 * Fixed state transitions if fence-peer handler returns after connection was
   established again
 * Fixes to drbdmeta and drbdsetup for the > 16TByte support
 * Made negotiation of max_bio_size conservative instead of optimistic
 * Network timeouts for mirrored write requests are now always enforced,
   no longer only when the socket is congested

http://git.drbd.org/?p=drbd-8.3.git;a=tag;h=drbd-8.3.11
http://oss.linbit.com/drbd/8.3/drbd-8.3.11.tar.gz
http://www.linbit.com/support/drbd-8.3.11/

Best,
 Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
