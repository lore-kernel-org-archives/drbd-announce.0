Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Sat, 28 Sep 2013 01:55:15 +0200
Message-ID: <2423458.donDEAgrDs@quad>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.4.4rc2.tar.gz
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

Most outstanding of the patches that landed in the
repository since rc1 is: Support for DISCARD requests
(in SCSI speak: unmap; ATA speak: trim). This is important
for use on SSDs or on thinly provisioned storage.

This is a release candidate. Please help testing.

8.4.4rc2 (api:genl1/proto:86-101)
--------
 * Changes from 8.3.16
   * fix potential deadlock when concurrently fencing and establishing a 
connection
   * fix potential distributed deadlock during verify or resync
   * fix decoding of bitmap vli rle for device sizes > 64 TB
   * fix for deadlock when using automatic split-brain-recovery
   * only fail empty flushes if no good data is reachable
   * avoid to shrink max_bio_size due to peer re-configuration
   * fix resume-io after reconnect with broken fence-peer handler
   * crm-fence-peer: less cib polling, peer-alive detection using crmadmin,
     and other improvements
   * OCF RA: avoid too tight pacemaker driven recovery loop on failed promote,
     implement adjust_master_score parameter
   * fix too large bursts for very slow resync rates
   * don't let application IO throttle resync to a stall
 * Fixed attaching to disks with fixed size external meta-data
   (This regressions was introduced with 8.4.3)
 * Fixed a crash when the connection broke at a very exact point in
   time while a graceful disconnect executes
 * Support for REQ_DISCARD
 * Allow parallel promote/demote
 * Allow online changing of al-stripes and al-stripe-size with the
   resize command
 * drbdadm adjust now deals with IP-address changes correctly
 * Align the internal object model with drbd-9.0 (away from drbd-8.3)
 * New drbd-proxy option "bwlimit"; allow proxy options on host level
 * Compiles on Linux v3.10

http://git.drbd.org/gitweb.cgi?p=drbd-8.4.git;a=tag;h=refs/tags/drbd-8.4.4rc2
http://oss.linbit.com/drbd/8.4/drbd-8.4.4rc2.tar.gz

Best,
 Phil
