Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 28 Nov 2008 19:04:17 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200811281904.18012.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.0rc1.tar.gz
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

Free DRBD+ !

Drbd-8.3 is the merger of drbd-8.2 and DRBD+. As with
every release candidate, please keep help testing it,
please help finding any regressions. We at LINBIT will
be in bug searching only mode next week.

The documentation of the DRBD+ features in not yet in, 
so you need to refer to the old DRBD+ docs for the next
7 days: http://drbd-plus.linbit.com

8.3.0rc1 (api:86/proto:86-89)
--------
 * Fixed 'sleep with spinlock held' in case online verify found a difference
 * Fixed error code pathes in request processing.
 * bitmap in unmapped pages = support for devices > 4TByte (was DRBD+)
 * checksum based resync (was DRBD+)
 * support for stacked resource (was DRBD+)
 * RedHat cluster suite (rgmanager) integration scripts

http://oss.linbit.com/drbd/8.3/drbd-8.3.0rc1.tar.gz
http://git.drbd.org/?p=drbd-8.2.git;a=tag;h=drbd-8.3.0rc1

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
