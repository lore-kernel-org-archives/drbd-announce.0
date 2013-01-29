Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 29 Jan 2013 20:45:17 +0100
Message-ID: <2381391.vsLXpUcJtJ@quad>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.4.3rc1.tar.gz
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

With this release we have three important improvements to the activity log:

  1 Starting with 8.4.3 the activity log has a variable size on disk
    (before it was fixed 32KiByte). 
    -> The limitation of 6433 on the al-extents option is no longer.

  2 The activity log can be organised as a stripe set in the meta-data.

  3 Never block a caller submitting a BIO, but hand off the writing
    of AL-updates to a dedicated worker thread.
    (In the past DRBD blocked the caller when a submitted BIO is not
     covered by the current active set, until the transaction was written
     into the AL.)

With these changed we see substantial improvement in overall IOPs,
on workloads that are bigger than the active set (al-extents * 4MiB)

A bigger (and eventually striped) AL gets created by using the
--al-stripes and --al-stripe-size-kB options of drbdmeta create-md

Non of the bug fixes in this release is really spectacular.

Please note: This is a release candidate, not intended for production.
Please help with testing!

8.4.3rc1 (api:genl1/proto:86-101)
--------
 * Changes from drbd-8.3.14 and drbd-8.3.15
   * Do not end up in Unconnected state if the connection breaks at a
     certain point during the handshake (was introduced with 8.3.12)
   * Closed a race condition between promoting and connection handshake,
     that could lead to an inconsistent view of the peer's UUIDS
   * Fixed a race condition that could lead to a full sync, if connection
     breaks at a certain point while starting a regular resync
   * Fixed crm-fence-peer.sh for pacemaker 1.1.8
   * Fixed a list corruption for read requests that complete with an error
     after they were aborted
   * Fixed a kernel panic if the device size was an exact multiple of 128MiB
   * Fixed a potential memory allocation during deadlock online resize
   * Improve the handling of read-errors: Make sure that sectors that had a
     read error are overwritten with data from the peer on the next resync
   * Expose the data-generation-uuids through /sys/block/drbdXX/drbd/
   * The new flag --peer-max-bio-size for drbdmeta create-md is of use
     if you plan to use the device for long time without peer
 * Fixed a potential protocol error and resulting disconnect/reconnect,
   when a disk fails on the secondary node. (Introduced with 8.4.2)
 * Do not fail empty flushed on diskless, primary node
 * Fixed calculation of master scores for single volume and
   unconfigured resources in the drbd.ocf RA
 * When the connection breaks during a grace full disconnect DRBD failed
   to call the eventually configured fence-peer handler. Fixed.
 * Obey md-barrier setting when changed via the disk-options command
 * Non blocking queuing of AL-updates; This change significantly
   improves the number of IOPs in case the workload does not fit into
   the configured AL size. (Backport from drbd-9)
 * New options for drbdmeta create-md --al-stripes and --al-stripe-size
   to create a larger and striped AL
 * Compiles on Linux v3.7

http://oss.linbit.com/drbd/8.4/drbd-8.4.3rc1.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-8.4.git;a=tag;h=refs/tags/drbd-8.4.3rc1

best,
 Phil
