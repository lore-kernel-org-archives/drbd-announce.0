Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 18 Jul 2011 19:13:26 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201107181913.26358.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.4.0.tar.gz
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

We are proud to announce the availability of DRBD-8.4.0.

  The most noticeable change is the support for multiple replicated
  volumes in a single DRBD connection.
  Write-ordering is obeyed among all writes in all volumes in a
  single connection.
  This feature is really important for users who DRBD for mirroring
  over longer distances. (Protocol A).

We do not only release DRBD-8.4.0 today:
The DRBD User's Guide was reviewed and updated to match DRBD-8.4.

I suggest to everybody who considers to upgrade from 8.3 to 8.4
to have a look at the "Recent changes" appendix of the UG:
http://www.drbd.org/users-guide/ap-recent-changes.html

  This release brings a new meta-data format. Forward (8.3 -> 8.4)
  conversion happens complete seamless. Backward conversion
  is done by a single command (drbdadm apply-al res).

  This release is protocol compatible with all it predecessor. 
  Although, we do not recommend to run it in 8.3 - 8.4 for long
  time frames. We recommend to use that capability only for the
  rolling upgrade.

  drbdadm of 8.4 can parse config files of 8.3. We recommend
  to switch to the new configuration syntax after the upgrade
  of both nodes. (Use drbdadm dump to learn about the new
  config syntax)


Support lifecycle

DRBD-8.0 support will end with December 2011. Please make
sure to upgrade your systems to 8.3 or 8.4 by then. (There
was not a single commit to the 8.0 branch in nearly two years
now)

We will support DRBD-8.3 until December 2012.

[Customers may have different support agreements. Those are of
 course not affected.]


DRBD-proxy compatibility

In case you are using DRBD-proxy, please make sure that you
DRBD-proxy already support DRBD protocol 100. (DRBD-proxy 3
does already. If DRBD-proxy 1.0.17 will get support for
protocol 100 will be decided in the next weeks)

Yes, DRBD-proxy 3.0 is also available as of today!


Changelog

8.4.0 (api:genl1/proto:86-100)
--------
 * Fixed handling of read errors during online verify
 * Fix for connecting on high latency network links
 * Fixed state transitions if fence-peer handler returns after connection was
   established again
 * Go into inconsistent disk state with on-io-error=pass-on policy
 * Timeouts for requests processing on the peer (previously that
   worked only if the data socket was congested)
 * Reworked Linux backward compatibility mechanism
 * Conflicting write detection is now based on an interval tree,
   removed the hash-tables (necessary for the unlimited BIO sizes)
 * Removed the tracing framework
 * Support for multiple volumes (minors, block devices) per connection;
   up to 65536 volumes per connection supported
 * Reduced IO latencies during some state changes (esp. start resync)
 * New on disk format for the AL: double capacity; 4k aligned IO; same space
 * Multiple AL changes in a single transaction (precondition for
   unlimited BIO sizes)
 * DRBD no longer imposes any limit on BIO sizes
 * Removed DRBD's limits on the number of minor devices
 * DRBD's minors can now be removed (not only unconfigured)
 * Switched the user space interface form connector to generic netlink
 * drbdadm, configuration changes: volume sections; syncer section removed;
   bool options got yes/no values, that improves option inheritance;
   resource options
 * drbdsetup: new commands for creating and removing resources
   and minors
 * drbdsetup: new commands for changing disk options while the disk
   is attached; ...for changing net options while the connection is
   established
 * drbdsetup/drbdadm the wire-protocol is now a regular connection option
 * Removed drbdadm option --force
 * IO freezing/thawing is done on connection (all volumes) level
 * fencing is done on connection (all volumes) level
 * Enforce application of activity log after primary crash in user space
 * Features from drbd-8.3: Allow detach from frozen backing devices with the
   new --force option; configurable timeout for backing devices by the new
   disk-timeout option
 * Renamed --dry-run of connect to --tentative; plus alias in drbdsetup
 * drbdadm got a "help" sub command, that shows the specific options
 * drbdadm now knows all drbdsetup options, and verify ...
 * drbdadm can now process all options in random order, and ignores the "--"
   separator; compatibility aliases with the old calling conventions; now it
   is compatible with the pre 8.4 way of calling.
 * New default values (compared to drbd-8.3) for: minor-count, ko-count, al-extents,
   c-plan-ahead, c-fill-target, c-min-rate, use-rle, on-io-error

http://www.linbit.com/support/drbd-8.4.0/
http://git.drbd.org/?p=drbd-8.4.git;a=tag;h=drbd-8.4.0
http://oss.linbit.com/drbd/8.4/drbd-8.4.0.tar.gz

Best,
 Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
