Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 13 Feb 2008 16:44:18 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200802131644.18375.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.0.11.tar.gz
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

The first one on the list is really awkward. Therefore it is better
to not use 8.0.10 (and not 8.0.9).

8.0.11 (api:86/proto:86)
--------
 * If we had no IO while a device was connected it could happen that
   the pending count was erroneously decreased to -1 at disconnect.
   Fixed.
 * Fixed a race that could deadlock worker and receiver while
   disconnecting a diskless node from a primary peer.
 * Fixed a minimal meory leak, upon each module unload of DRBD.

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


http://git.drbd.org/?p=drbd-8.0.git;a=tag;h=drbd-8.0.11
http://oss.linbit.com/drbd/8.0/drbd-8.0.11.tar.gz
http://www.linbit.com/support/drbd-8.0.11/

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
