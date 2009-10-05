Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 5 Oct 2009 18:17:11 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200910051817.12071.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.3.tar.gz
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

The most noticeable highlight of this release is the support for 
the Infiniband stack via SDP. If you want to use DRBD with 
Infiniband/SDP make sure that you run on OFED-1.4.2.

  Thanks to logicworks (www.logicworks.net) for sponsoring the 
  Infiniband work.

If you are using dopd/drbd-peer-outdater and you are currently running
on drbd-8.3.2 you need to upgrade to 8.3.3 (due to bug 241).

Also the email notification scripts are affected by bug 241. If
you are using them, please upgrade to 8.3.3.

To all other users we recommend the upgrade as well, as a number
of non critical bugs where fixed.

Regarding kernel inclusion:

  Now it is clear that DRBD will not be part of Linux-2.6.32. 
  Linus told us the he is happy to pull DRBD during the 2.6.33 merge 
  window.


Another important note:

The default values of sndbuf-size rcvbuf-size where changed to 0 
(auto tune). They have been 128k before.

  This take the burden to get the socket send buffer tunes
  right off the administrator, but make sure that TCP's sysctls
  settings are sane. I.e.

  net.core.rmem_max = 10485760 (byte per socket)
  net.core.wmem_max = 10485760 (byte per socket)
  net.ipv4.tcp_rmem = 65536 87380 10485760 (min/def/max byte per socket)
  net.ipv4.tcp_wmem = 65536 65536 10485760 (min/def/max byte per socket)
  net.ipv4.tcp_mem = 128000 170666 256000  (min/pressure/max pages in total)



8.3.3 (api:86/proto:86-91)
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

http://oss.linbit.com/drbd/8.3/drbd-8.3.3.tar.gz
http://git.drbd.org/?p=drbd-8.3.git;a=tag;h=drbd-8.3.3
http://www.linbit.com/support/drbd-8.3.3/

-Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

