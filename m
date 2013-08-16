Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Sat, 17 Aug 2013 01:52:14 +0200
Message-ID: <3846600.K5hAWcAjV6@quad>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.4.4rc1.tar.gz
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

And here is the 8.4.4rc1. It mainly contains of fixes. The only
new feature the online reshaping of the AL-layout.

BTW, since there are still people installing drbd-8.3 on new systems.
DRBD-8.4 gives you more performance. See this blog post:
http://blogs.linbit.com/p/469/843-random-writes-faster/

This is a release candidate. Please help testing.

8.4.4rc1 (api:genl1/proto:86-101)
--------
 * Changes from 8.3.16
   * fix decoding of bitmap vli rle for device sizes > 64 TB
   * fix for deadlock when using automatic split-brain-recovery
   * only fail empty flushes if no good data is reachable
   * avoid to shrink max_bio_size due to peer re-configuration
   * fix resume-io after reconnect with broken fence-peer handler
   * fencing script improvements
 * Fixed attaching to disks with fixed size external meta-data
   (This regressions was introduced with 8.4.3)
 * Allow online changing of al-stripes and al-stripe-size with the
   resize command
 * drbdadm adjust now deals with IP-address changes correctly
 * Align the internal object model with drbd-9.0 (away from drbd-8.3)
 * Compiles on Linux v3.10

http://git.drbd.org/gitweb.cgi?p=drbd-8.4.git;a=tag;h=refs/tags/drbd-8.4.4rc1
http://oss.linbit.com/drbd/8.4/drbd-8.4.4rc1.tar.gz

Best regards,
 Phil
