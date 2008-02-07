Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (unknown [81.16.158.130])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 6DFA72DEACD6
	for <drbd-announce@lists.linbit.com>;
	Thu,  7 Feb 2008 16:40:05 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 7 Feb 2008 16:40:04 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200802071640.04281.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0.10.tar.gz
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Hi,

It happened again. Only hour after the release was finally tagged,
an important issue was found. Do not use 8.0.9!

8.0.10 (api:86/proto:86)
--------
 * Fixed a race condition in the disconnect code path that could cause
   the pending count to not return to zero. This means that the
   next role change will block forever.

8.0.9 (api:86/proto:86)
--------
 * In case our backing devices support write barriers and cache
   flushes, we use these means to ensure data integrity in
   the presence of volatile disk write caches and power outages.
 * Fixed DRBD to no longer log
   "Sync bitmap getting lost (drbd_bm_set_bits_in_irq: (!b->bm))"
   endlessly after the local disk was lost.
 * Fixed protocol A for BIOs larger than the page size. If you
   hit the bug, DBBD would simply lose connection.
 * Don't accidentally truncate the device in case a secondary with
   a too small disk gets connected.
 * Changed state processing so that state changes visible
   via the drbdsetup events interface are always in the right order.
 * Made drbddisk's exit codes more LSB compliant.
 * Back-ported the new drbdmeta to drbd-8.0 (from drbd-8.2).
 * More robustness to the code that establishes connections.
 * Made '/etc/init.d/drbd status' to print a nice overview.
 * Made it to compile on Linux-2.6.24.

http://oss.linbit.com/drbd/8.0/drbd-8.0.10.tar.gz
http://git.drbd.org/?p=drbd-8.0.git;a=tag;h=drbd-8.0.10
http://www.linbit.com/support/drbd-8.0.10/

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
