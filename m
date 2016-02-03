Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 03 Feb 2016 20:49:02 +0100
Message-ID: <4110096.oP2xEEn364@nuc>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.1 & drbd-utils-8.9.6
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

it is a long time since the release of drbd-9.0.0. Many bugs have been
fixed, just as expected for the first maintenance release after a .0
release.

On the feature side, the support for multiple paths was completed. I.e.
you can configure multiple address pairs, and the TCP transport will
try all of those until it can establish a connection on one of the
pairs.
Apart from that the new features of 8.4.7 are merged. (WRITE_SAME,
resync of thinly provisioned storage)

For those who already run 9.0.0 please upgrade to 9.0.1 as soon as
possible.

And a BIG THANK YOU, to the members of the community that reported
bugs and regressions of 9.0.0.


drbd
9.0.1-1 (api:genl2/proto:86-111/transport:14)
--------
 * Fix ahead/behind mode: spinlock deadlock when entering and resync
   afterwards
 * Fix crash in online verify
 * Fix crash when receiving pages on a diskless node
 * Fix issues with resize when more than two nodes are present
 * Many minor fixes
 * Work on the multi-path support; the TCP transport now tries all paths while
   connecting, afterwards it uses one path
 * The RDMA transport supports multiple paths and can use them in parallel
 * Configuration option to make resync thinly provisioned storage
   friendly: rs-discard-granularity
 * Make sure it compiles with Linux 4.4
 * Merge changes from the 8.4.7 release
 * Fix a performance regression of 8.4.0; it got worse with bigger devices;
   really significant above 1TByte

http://oss.linbit.com/drbd/9.0/drbd-9.0.1-1.tar.gz
http://git.drbd.org/drbd-9.0.git/tag/refs/tags/drbd-9.0.1


drbd-utils
8.9.6
--------
 * Call "drbdsetup resize" only as often as necessary on "drbdadm resize"
 * Disconnect connection first on single path deletion from connection
 * Add unfence-peer handler
 * Fix "drbdadm adjust" for proxy configurations

http://oss.linbit.com/drbd/drbd-utils-8.9.6.tar.gz
http://git.drbd.org/drbd-utils.git/tag/refs/tags/v8.9.6


cheers,
 Phil
