Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 07 May 2012 16:28 +0200
Message-ID: <1473974.Qi4yrUQ4t1@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.13.tar.gz
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

Compared to 8.3.12 this release has only bug fixes, no new features.

  It is worth noting that all previous DRBD-releases did not enforce
  correct ordering of (some) write operations on a resync-target node.

  This can be triggered with the 'cfq' (and possible other) linux
  disk schedulers. -- It is known that when you stay with an DRBD
  release before 8.3.13 and switch the scheduler to 'noop', then it is
  no longer to reproduce the issue.

  It is a rare condition, which is hard to trigger, it may causes 
  corruption in the sense that it looks like if a single block 
  write was not executed on the secondary.
  (actually it was overwritten with the previous version of the data,
   this second write originates from the resync process.)


Upgrading to this release is for sure a good idea.


8.3.13 (api:88/proto:86-96)
--------
 * Fixed a write ordering problem on SyncTarget nodes for a write
   to a block that gets resynced at the same time. The bug can
   only be triggered with a device that has a firmware that
   actually reorders writes to the same block
 * Fixed a race between disconnect and receive_state, that could cause
   a IO lockup
 * Fixed resend/resubmit for requests with disk or network timeout
 * Make sure that hard state changed do not disturb the connection
   establishing process (I.e. detach due to an IO error). When the
   bug was triggered it caused a retry in the connect process
 * Postpone soft state changes to no disturb the connection
   establishing process (I.e. becoming primary). When the bug
   was triggered it could cause both nodes going into SyncSource state
 * Fixed a refcount leak that could cause failures when trying to
   unload a protocol family modules, that was used by DRBD
 * Dedicated page pool for meta data IOs
 * Deny normal detach (as opposed to --forced) if the user tries
   to detach from the last UpToDate disk in the resource
 * Fixed a possible protocol error that could be caused by
   "unusual" BIOs.
 * Enforce the disk-timeout option also on meta-data IO operations
 * Implemented stable bitmap pages when we do a full write out of
   the bitmap

http://oss.linbit.com/drbd/8.3/drbd-8.3.13.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-8.3.git;a=tag;h=refs/tags/drbd-8.3.13
http://www.linbit.com/support/drbd-8.3.13/

Best regards,
 Philipp
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

