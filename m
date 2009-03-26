Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 26 Mar 2009 09:59:00 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200903260959.00800.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.1rc2.tar.gz
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

We are still working on one issue with device stacking that needs
to be solved before 8.3.1 can get released. Therefore here an update
on what we found and fixed in one week of rc1.

Changes relative to rc1

 * A build issue with older versions of flex was solved
 * The new "include" feature was fixed
 * send some KOBJ_CHANGE events, now we have udev hooks
 * More build fixes

http://git.drbd.org/?p=drbd-8.3.git;a=commit;h=drbd-8.3.1rc2
http://oss.linbit.com/drbd/8.3/drbd-8.3.1rc2.tar.gz

-Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

