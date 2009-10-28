Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 28 Oct 2009 12:57:07 +0100
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200910281257.07609.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.5.tar.gz
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

I am not proud to write another announcement e-mail only 12 days after
the previous one.

When Bug 258 strikes, DRBD's receiver thread is blocked, IO is frozen,
your only way out is to reboot the machine.

To trigger it, you need to drive DRBD into "starving on activity log",
and then interrupt the network connection.

  "starving on activity log" means, that maximal number of hot activity
  log entries is reached, and therefore new IO requests has to wait
  until a previous one is finished. You can watch this by:

  echo 1 > /sys/module/drbd/parameters/proc_details
  watch -n 1 cat /proc/drbd

  Look for "act_log: used:XX/YY". You trigger the bug when XX gets as
  high as YY and you have an interruption of you network connectivity
  in that moment.

  The likelihood gets increased by...
    * heavy write IO on your DRBD device.
    * the replication link has higher latency, i.e. "long distance".

It is really hard to trigger, but I recommend to upgrade from 8.3.3 or
8.3.4 to 8.3.5.

If you are mirroring via a long distance link, typically in a tree
node configuration I _URGE_ you to upgrade.

8.3.5 (api:86/proto:86-91)
--------
 * Fixed a regression introduced shortly before 8.3.3, which might
   case a deadlock in DRBD's disconnect code path. (Bugz 258)
 * Fixed drbdsetup X resume-io which is needed for the recovery
   from the effects of broken fence-peer scripts. (Bugz 256)
 * Do not reduce master score of a current Primary on connection loss,
   to avoid unnecessary migrations
 * Do not display the usage count dialog for /etc/inti.d/drbd status

http://oss.linbit.com/drbd/8.3/drbd-8.3.5.tar.gz
http://git.drbd.org/?p=drbd-8.3.git;a=tag;h=drbd-8.3.5
http://www.linbit.com/support/drbd-8.3.5/

-Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

