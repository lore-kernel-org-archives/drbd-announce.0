Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 06 Apr 2012 15:01:44 +0200
Message-ID: <2955762.syLoYvFxf2@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.13rc1.tar.gz
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

Compared to 8.3.12 this has only bug fixes. All of them fixing
bugs that are very hard to trigger, or only affect operation in
an unnoticed way.

  Nevertheless I need to explain the first item on the list.
  There are quite a few conditions to be met, in order to
  trigger this bug:

  1) You have a device that actually does write-reordering
     (I.e. a spinning hard disk (not SSD), without RAID
     controller in front of it).
  2) Network connection gets interrupted
  3) A block on the degraded primary gets modified
  4) Network connection gets established again, DRBD starts the resync
  5) The same block on the primary is written again, at the same
     time the resync process is about to resync it.
     DRBD orders the operations on the SyncSource right, it orders the
     write submissions on the SyncTarget right. Though in prior releases 
     DRBD may submitted the second write before it got completion signaled
     for the first one.

  At the current point in time it is known that there is one hardware
  and Linux kernel combination out there, where this could lead to a
  reordering of these two writes on the SyncTarget node. I.e. making
  it look like, if one write operation was not mirrored.

Please note: This is a release candidate, not intended for production.
Please help with testing!

8.3.13rc1 (api:88/proto:86-96)
--------
 * Fixed a write ordering problem on SyncTarget nodes for a write
   to a block that gets resynced at the same time. The bug can
   only be triggered with a device that has a firmware that
   actually reorders writes to the same block
 * Fixed a race between disconnect and receive_state, that could case
   a IO lockup
 * Make sure that hard state changed do not disturb the connection
   establishing process (I.e. detach due to an IO error). When the
   bug was triggered it caused a retry in the connect process
 * Postpone soft state changes to no disturb the connection
   establishing process (I.e. becoming primary). When the bug
   was triggered it could case both nodes going into SyncSource state
 * Fixed a refcount leak that could cause failures when trying to
   unload a protocol family modules, that was used by DRBD
 * Deny normal detach (as opposed to --forced) if the user tries
   to detach from the last UpToDate disk in the resource
 * Fixed a possible protocol error that could be caused by
   "unusual" BIOs.
 * Enforce the disk-timeout option also on meta-data IO operations

http://oss.linbit.com/drbd/8.3/drbd-8.3.13rc1.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-8.3.git;a=tag;h=refs/tags/drbd-8.3.13rc1

Best,
 Philipp
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

