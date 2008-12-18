Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Date: Thu, 18 Dec 2008 19:46:56 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200812181946.56945.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.3.0.tar.gz
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

This is the release containing all the features that formed DRBD+ before:
 * bit map in unmaped pages -> device sizes > 4TB (up to 16TB currently)
 * DRBD stacking -> replication to a 3rd node (even 4 are supported)
 * checksum based resync -> Speeds up resync processes over slow networks.

Besides these highlight, again a number of bugs was fixed, see the first five
items on the change log. Users of drbd-8.2.7 should upgrade to 8.3.0 .

BTW, this is the successor of drbd-8.2.7 and the drbd-8.2.x branch. 

8.3.0 (api:86/proto:86-89)
 --------
  * Fixed 'sleep with spinlock held' in case online verify found a difference
  * Fixed error code pathes in request processing.
  * Fix for stack smashing in drbdmeta
  * Fixed a bug that could lead to a crash when detaching/attaching
    on the primary under heavy IO (Bugz 171)
  * Fixed a bug in the new epoch code (introduced with 8.2.7).
    Might cause crash at reconnect after connection loss during heavy IO
    (Bugz 160)
  * Fixed a bug in drbdsetup that could cause drbdsetup wait-connect to
    miss the connection event.
  * Fixed a race condition in the new barrier code. (Reordered barrier ACKs)
  * Do not rely on blkdev_issue_flush() returning ENOTSUPP
  * bitmap in unmapped pages = support for devices > 4TByte (was DRBD+)
  * checksum based resync (was DRBD+)
  * support for stacked resource (was DRBD+)
  * Added support for stacked resources to the bash completion stuff
  * Added missing documentation (manpages)
  * Fixed drbdadm handlers for stacked resources
  * Support of drbd-proxy in stacked setups
  * RedHat cluster suite (rgmanager) integration scripts
  * Renamed 'state' to 'role'
  * More build compatibility with older vendor kernels
  * Added drbd-overview.pl to the packages

http://oss.linbit.com/drbd/8.3/drbd-8.3.0.tar.gz
http://git.drbd.org/?p=drbd-8.3.git;a=tag;h=drbd-8.3.0
http://www.linbit.com/support/drbd-8.3.0/

-Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
