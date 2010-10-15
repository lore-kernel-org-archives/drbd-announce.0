Return-Path: <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Fri, 15 Oct 2010 14:39:47 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Message-Id: <201010151439.48034.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.9rc2.tar.gz
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

Dear DRBD-Users,

This is a request to test the release candidate two of the upcoming
8.3.9 release.

Countless CPU cycles where burned by the testing machines in our Lab.
We get more and more confident that 8.3.9 will be a good release.

You might use our test suite ( http://git.drbd.org/drbd-testsuite.git/ )
or other means to find regressions or bugs that have been in the
code since ever. -- We want to hear from you!

8.3.9rc2 (api:88/proto:86-95)
--------
 * Fix for possible deadlock on IO error during resync
 * Fixed a race condition between adding and removing network configuration.
   Lead to a BUG_ON() when triggered.
 * Fixed spurious full syncs that could happen after an empty resync and
   concurrent connection loss.
 * Fixed spurious full syncs that happened when connection got lost while
   one node was in WFSyncUUID state (Bugz 318)
 * Fixed a race in the meta-data update code path, that could lead to forgotten
   updates to the meta-data. That in fact could lead to unexpected behavior
   at the next connect
 * Implicitly create unconfigured devices which are referenced in sync-after
   dependencies.
 * OCF RA now also works with pacemaker 1.1
 * Allow BIO sizes of up to 128kByte. Note: In case drbd-proxy is used, at least
   version 1.0.16 of drbd-proxy is required.
 * New configuration keyword on-no-data-accessible. Possible values
   io-error, and suspend-io. The default is "io-error", which matches the
   previous behavior.
 * If the fencing policy is set to resource-and-stonith, the primary node
   will creates the new current UUID _after_ the fencing handler
   returned. (Before it did immediately)
 * Rewrote the resync speed control loop code. New configuration parameters
   c-plan-ahead, c-fill-target, c-delay-target, c-max-rate, c-min-rate.
 * Disable activity log updates when all blocks of an unconnected device is
   are out of sync. That can be activated by using "invalidate-remote" on an
   unconnected primary.
 * Improved IPv6 support: link local addresses
 * Improved resync speed display in /proc/drbd

http://oss.linbit.com/drbd/8.3/drbd-8.3.9rc2.tar.gz
http://git.drbd.org/?p=drbd-8.3.git;a=commit;h=drbd-8.3.9rc2

Best,
 Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
