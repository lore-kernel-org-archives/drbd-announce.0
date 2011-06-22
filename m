Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 22 Jun 2011 10:21:28 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201106221021.28608.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.11rc3.tar.gz
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

The most important fix relative to the last RC, is better handling of
congested connections. Due to the amount of compatibility wrappers to 
make it compile on the most recent kernels we do one more RC before the
final release.

Please note: This is a release candidate, not intended for production.
Please help with testing!

8.3.11rc3 (api:88/proto:86-96)
--------
 * Added missing spinlock in compressed bitmap receive (regression introduced
   in 8.3.10, could lead to "negative" out-of-sync stats and non-terminating
   resync when "use-rle" is enabled)
 * Fixed handling of read errors during online verify runs
 * Fixes for possible distributed deadlocks during online verify and
   checksum based resync processes
 * Fixed handling of IO errors with an on-io-error=pass-on policy; the
   disk state goes to inconsistent
 * Fixed the behaviour in case ping-timeout and ping-int are set to the
   same value
 * Fix for connecting on high latency network links
 * Fixed wrong connection drops ("PingAck did not arrive in time") with
   asymmetrically congested networks
 * Fixed state transitions if fence-peer handler returns after connection was
   established again
 * Made negotiation of max_bio_size conservative instead of optimistic
 * Network timeouts for mirrored write requests are now always enforced,
   no longer only when the socket is congested

http://oss.linbit.com/drbd/8.3/drbd-8.3.11rc3.tar.gz
http://git.drbd.org/?p=drbd-8.3.git;a=commit;h=drbd-8.3.11rc3

-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
