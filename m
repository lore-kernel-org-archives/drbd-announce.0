Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 10 Sep 2009 15:47:19 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200909101547.21688.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.3rc2.tar.gz
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

Please help testing this pre release...

Changes since rc1:

* Improvements to crm-fence-peer
* A few minor issues were found in the UUID processing since 8.3.3rc1.

Complete Changelog:

8.3.3rc2 (api:86/proto:86-91)
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
 * Fixed many spelling errors
 * Improvements on the crm-fence-peer Pacemaker integration
 * Do not upgrade a Consistent disk to UpToDate when the fence-peer handler
   can not reach the peer (Bugz 198)
 * Support for Infiniband via SDP (sockets direct protocol)
 * Install bash completion stuff on SLES11
 * Following Linux upstream changes 2.6.31

http://git.drbd.org/?p=drbd-8.3.git;a=tag;h=drbd-8.3.3rc2
http://oss.linbit.com/drbd/8.3/drbd-8.3.3rc2.tar.gz

-Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

