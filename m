Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 9 May 2011 18:24:09 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201105091824.10153.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.4.0rc1.tar.gz
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

A new major release of DRBD is going into feature freeze mode!

  The most noticeable change is the support for multiple replicated
  volumes in a single DRBD connection.
  Write-ordering is obeyed among all writes in all volumes in a
  single connection.
  This feature is really important for users who DRBD for mirroring
  over longer distances. (Protocol A).

  Please see the changelog for all the other cherries ;)

So far it is intended to build on debian-squeeze, ubuntu-lucid,
RHEL6, SLES11 and SLES11SP1. (Basically kernel 2.6.27 or newer.)
Support for older distributions will follow with future release
candidates. 

Please note: This is a release candidate, not intended for production.
Please help with testing!

8.4.0rc1 (api:genl1/proto:86-100)
--------
 * Fixed handling of read errors during online verify
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
 * drbdsetup: new commands for creating and removing connections
   and minors
 * drbdsetup: new commands for changing disk options while the disk
   is attached; ...for changing net options while the connection is
   established
 * drbdsetup/drbdadm the wire-protocol is now a regular connection option
 * IO freezing/thawing is done on connection (all volumes) level
 * fencing is done on connection (all volumes) level

http://oss.linbit.com/drbd/8.4/drbd-8.4.0rc1.tar.gz
http://git.drbd.org/?p=drbd-8.4.git;a=tag;h=drbd-8.4.0rc1

Best,
 Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
