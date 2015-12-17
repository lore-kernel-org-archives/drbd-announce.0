Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 17 Dec 2015 10:09:48 +0100
Message-ID: <1636919.vJNWQY4AmX@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.4.7 & drbd-utils-8.9.5
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

with this release we fixed some performance regressions in 8.4 that
trigger only when DRBD is used as block storage target. (I.e. they
do not triggered when you have a file system on top of it).

When it comes to new features a lot was done that DRBD works better
with thinly provisioned storage and SSDs (WRITE_SAME & resync).
Look for 'rs-discard-granularity' and 'discard-zeroes-if-aligned'
on the man-pages.

drbd
8.4.7-1 (api:genl1/proto:86-101)
-------
 * introduce WRITE_SAME support
 * introduce discard-capable (or thinly allocated) device friendly resync
 * improve latency on certain kernel versions and usage patterns
 * improve latency of disk flushes with multiple volumes
 * fix recovery handling of certain multiple error scenarios,
   including possible deadlocks after certain multiple failure sequences
 * introduce unfence-peer handler,
   to close possible races if the replication link is flaky
 * avoid potential spurious full resync by
 * improve discard support, reliably zero-out/discard even with discard_zeroes_data=0
 * update wrapper defines for linux 4.3
 * fix latency regression introduced with 8.4.5
   protocol A was sometimes synchronous, C sometimes double-latency
 * avoid potential deadlock during handshake
 * avoid potential deadlock in disconnect during resync
   with fencing resource-and-stonith
 * allow IO during some bitmap bulk IO operations
 * fix "endless" transfer log walk in protocol A

http://oss.linbit.com/drbd/8.4/drbd-8.4.7-1.tar.gz
http://git.drbd.org/drbd-8.4.git/tag/refs/tags/drbd-8.4.7


drbd-utils
8.9.5
--------
 * add support for new disk option 'rs-discard-granularity' (module v8.4.7)
 * add support for new disk option 'discard-zeroes-if-aligned' (module v8.4.7)
 * add support for v9 "path" commands
 * doc improvements/corrections
 * improvements to drbd ocf resource agent
   and pacemaker "constraint based fencing" (crm-fence-peer.sh)
 * drbd-overview improvements

http://oss.linbit.com/drbd/drbd-utils-8.9.5.tar.gz
http://git.drbd.org/drbd-utils.git/tag/refs/tags/v8.9.5


cheers,
 Phil
