Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 26 May 2011 19:07:50 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201105261907.50428.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.4.0rc2.tar.gz
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

We spent a lot of time polishing rough edges in the mass amounts of
new code. Unfortunately we got only 3 bug reports so far. This is a call 
for more testing!!!

The highlight of the second RC is of course the pacemaker integration.

With this rc we have the compatibility code in place. It is expected
to work on kernels 2.6.18 and newer. I.e. RHEL5.

Please note: This is a release candidate, not intended for production.
Please help with testing!

8.4.0rc2 (api:genl1/proto:86-100)
--------
 * Do not crash if a connection is removed while fence peer handler runs
 * Fix for connecting on high latency network links
 * Fixed state transitions if fence-peer handler returns after connection was
   established again
 * Various net options update the peer when changed on one side
   (protocol, data-integrity-alg, allow-two-primaries, after-sb-*)
 * drbdadm, fixed: option inheritance, stacked resources, resync-after, ...
 * When build with --with-legacy-connector it brings all the necessary
   old executables, and the new tools transparently execute the old
   ones if necessary
 * Compatibility code down to at least kernel 2.6.18
 * Code cleanups ; New way of dealing with default values

http://oss.linbit.com/drbd/8.4/drbd-8.4.0rc2.tar.gz
http://git.drbd.org/?p=drbd-8.4.git;a=tag;h=drbd-8.4.0rc2

Best,
 Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
