Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Date: Thu, 23 Aug 2012 16:49:34 +0200
Message-ID: <1710770.1nNcrP7vcm@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [DRBD-announce] drbd-8.4.2rc2.tar.gz
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

after countless hours of testing, bug hunting and fixing we are proud to
present the result of our effort.

Please note: This is a release candidate, not intended for production.
Please help with testing!


8.4.2rc2 (api:genl1/proto:86-100)
--------
 * Complete requests that reached completion state while IO was
   frozen. (Introduced with 8.4.2rc1)
 * Write all pages of the bitmap if it gets moved during an
   online resize operation. (This issue was introduced with 8.3.10)
 * Fixed a locking with the callbacks of the listening socket.
   (Issue found by lockdep, introduced with 8.4.2rc1)
 * Fixed a race condition could cause DRBD to go through a
   NetworkFailure state during disconnect
 * Fixed issues with the new request code that caused "BAD!"
   messages (introduced with 8.4.2rc1)
 * Fixed a race condition in the disconnect code path that
   could lead to a BUG() (introduced with 8.4.0)

8.4.2rc1 (api:genl1/proto:86-100)
--------
 * Fixed a write ordering problem on SyncTarget nodes for a write to a block
   that gets resynced at the same time. The bug can only be triggered with a
   device that has a firmware that actually reorders writes to the same
   block (merged from 8.3.13)
 * Fixed a potential deadlock during restart of conflicting writes
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

http://oss.linbit.com/drbd/8.4/drbd-8.4.2rc2.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-8.4.git;a=tag;h=refs/tags/drbd-8.4.2rc2

Best,
 Phil
