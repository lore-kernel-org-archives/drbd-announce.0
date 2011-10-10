Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 10 Oct 2011 13:28:33 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201110101328.34237.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.12rc1.tar.gz
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

Besides releasing fixes for a few minor issues, this brings support for
detaching from frozen backing devices.

Please note: This is a release candidate, not intended for production.
Please help with testing!

8.3.12rc1 (api:88/proto:86-96)
--------
 * Fixed a rare compatibility issue with DRBD's older than 8.3.7
   when negotiating the bio_size
 * Fixed a rare race condition where an empty resync could stall with
   if pause/unpause events happen in parallel
 * Made the re-establishing of connections quicker, if it got a broken pipe
   once. Previously there was a bug in the code caused it to waste the first
   successful established connection after a broken pipe event.
 * crm-fence-peer.sh: Can now deal with multiple DRBD instances being in
   a master/slave group
 * Allow detach from frozen backing devices with the new --force option;
   configurable timeout for backing devices by the new disk-timeout option

http://oss.linbit.com/drbd/8.3/drbd-8.3.12rc1.tar.gz
http://git.drbd.org/?p=drbd-8.3.git;a=commit;h=drbd-8.3.12rc1

Best,
 Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
