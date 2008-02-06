Return-Path: <philipp.reisner@linbit.com>
Received: from quad.localdomain (chello080108092198.22.11.tuwien.teleweb.at
	[80.108.92.198])
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id A23302DEACD6
	for <drbd-announce@lists.linbit.com>;
	Wed,  6 Feb 2008 22:36:31 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 6 Feb 2008 22:36:27 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200802062236.27144.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0.9.tar.gz
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

And one more time I have to give the advice to update to this
release in case you run an earlier 8.0 release. While all these
fixes do not affect you as long everything works in your clusters,
these fixes might prevent you from further troubles if something
breaks.

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

http://oss.linbit.com/drbd/8.0/drbd-8.0.9.tar.gz
http://git.drbd.org/?p=drbd-8.0.git;a=tag;h=drbd-8.0.9
http://www.linbit.com/support/drbd-8.0.9

PS: The 8.2.5 release will follow soon.

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
