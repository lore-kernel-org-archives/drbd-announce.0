Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 29 Sep 2009 15:00:49 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200909291500.51184.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.3rc3.tar.gz
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

We are still holding our breath how and when DRBD will land in 
Linux mainline. I was told, that it can go in after 2.6.32-rc1
since it is a driver and not a patch to the more central parts
of the kernel. It will go in through Jens Axboe, although I
do not know when exactly.

To relieve the strain a bit, here is an other rc of DRBD-8.3.3


The main difference to rc2 is that the default values of
sndbuf-size rcvbuf-size where changed to 0 (auto tune). 
They have been 128k before.

  This take the burden to get the socket send buffer tunes
  right off the administrator, but make sure that TCP's sysctls
  settings are sane. I.e.

  net.core.rmem_max = 10485760 (byte per socket)
  net.core.wmem_max = 10485760 (byte per socket)
  net.ipv4.tcp_rmem = 65536 87380 10485760 (min/def/max byte per socket)
  net.ipv4.tcp_wmem = 65536 65536 10485760 (min/def/max byte per socket)
  net.ipv4.tcp_mem = 128000 170666 256000  (min/pressure/max pages in total)


8.3.3rc3 (api:86/proto:86-91)
--------
 * Correctly deal with large bitmaps (Bugz 239, 240)
 * Fixed a segfault in drbdadm's parser for unknown sync-after dependencies
 * DRBD_PEER was not set for handlers (introduced in 8.3.2) (Bugz 241)
 * Fixed a bug that could cause reads off diskless DRBD devices to get very slow
 * Fixed a deadlock possible when IO errors occure during resync (Bugz 224)
 * Do not do a full sync in case P_SYNC_UUID packet gets lost (Bugz 244)
 * Do not forget a resync in case the last ACK of a resync gets lost
 * The UUID compare function now handles more cases when connection/disk got
   lost during UUID updates (Bugz 251, 254)
 * If a resource gets renamed (only) update its /dev/
 * drbdsetup get-gi/show-gi sometimes warned about unknown tags (Bugz 253)
 * Autotune sndbuf-size and rcvbuf-size by default
 * Fixed many spelling errors
 * Improvements on the crm-fence-peer Pacemaker integration
 * Do not upgrade a Consistent disk to UpToDate when the fence-peer handler
   can not reach the peer (Bugz 198)
 * Support for Infiniband via SDP (sockets direct protocol)
 * Install bash completion stuff on SLES11
 * Following Linux upstream changes 2.6.31

http://git.drbd.org/?p=drbd-8.3.git;a=tag;h=drbd-8.3.3rc3
http://oss.linbit.com/drbd/8.3/drbd-8.3.3rc3.tar.gz

-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

