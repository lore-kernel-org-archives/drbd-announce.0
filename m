Return-Path: <philipp.reisner@linbit.com>
Date: Fri, 20 Sep 2013 20:54:50 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Message-ID: <1139890600.2033675.1379703290144.JavaMail.zimbra@linbit.com>
In-Reply-To: <815409814.2033522.1379701929762.JavaMail.zimbra@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.16.tar.gz
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

A number of exotic bugs fixed, after 9 month it really became time
to release these improvements. Probably the most important changes
are the improvements to the OCF RA.

We stopped tracking the upstream kernel. The upstream kernel has
already a drbd-8.4.3+ included. The soon following 8.4.4 release will
have all the fixes of this release, and will work with the upstream
kernel.

If nothing unforeseen happens, this is the last drbd-8.3.x release.


8.3.16 (api:88/proto:86-97)
--------
 * fix potential deadlock when concurrently fencing and establishing a connection
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

http://www.linbit.com/support/drbd-8.3.15/
http://git.drbd.org/gitweb.cgi?p=drbd-8.3.git;a=tag;h=refs/tags/drbd-8.3.16
http://oss.linbit.com/drbd/8.3/drbd-8.3.16.tar.gz

Best,
 Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
