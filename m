Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 8 Apr 2008 22:19:10 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200804082219.11395.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.0.12rc1.tar.gz
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

The real 8.0.12 release will happen in a few days.

After the 8.0.11 we had a few quite weeks in regard to DRBD bugs.
But then we got our new test/development cluster delivered to the
LINBIT office. 8 cores per node. 250MB/sec raw performance off the 
RAID5 controller. This are the ingredients it takes for a multi-week 
bug hunting party.

Please help us testing this release candidate!

The important fixes are

  When connecting large DRBD volumes it might got stuck while
  doing the bitmap exchange.

  When using DRBD on top of iSCSI volumes and running the 
  replication traffic and the iSCSI traffic via the same switch
  (stupid, right?) you might loose a disk and the network
  rather concurrently. DRBD now deals more gracefull with
  the recovery out of such a mess.

  Got the exit codes for dopd right. BTW, Rasto and Lars got
  the fixed dopd code pushed into the hreatbeat repository.
  It will be released with the next heartbeat release (2.1.4?)

8.0.12rc1 (api:86/proto:86)
--------
 * Corrected lock-out of application IO during bitmap IO.
   (Only triggered issues with multi-terrabyte volumes)
 * If an attach would causes a split-brain,
   abort the attach, do not drop the connection
 * A node without data (no disk, no connection) only accepts data
   (attach or connect) if that data matches the last-known data
 * Fixed various race conditions between state transitions
 * Various bugfixes to issues found by using the sparse tool
 * Corrected the exit codes of drbdsetup/drbdadm to match
   the expectations of dopd (drbd-outdate-peer-daemon)
 * Corrected the online changing of the number of AL extents while
   application IO is in flight.
 * Two new config options no-disk-flushes and no-md-flushes to disable
   the use of io subsystem flushes and barrier BIOs.
 * drbdsetup /dev/drbdX down no longer fails for non-existing minors
 * Added wipe-md to drbdadm

http://oss.linbit.com/drbd/8.0/drbd-8.0.12rc1.tar.gz
http://git.drbd.org/?p=drbd-8.0.git;a=tag;h=drbd-8.0.12rc1

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
