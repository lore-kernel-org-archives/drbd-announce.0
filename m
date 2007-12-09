Return-Path: <philipp.reisner@linbit.com>
Received: from quad.localdomain (chello080108092198.22.11.tuwien.teleweb.at
	[80.108.92.198])
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 7CE5C2E10AA0
	for <drbd-announce@lists.linbit.com>;
	Sun,  9 Dec 2007 20:23:48 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Sun, 9 Dec 2007 20:23:48 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200712092023.48076.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0.8.tar.gz
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

The usual number of bug fixes. The first item on the list is a
bit worrying. Although it has no known impact, it might be a good
idea to update to 8.0.8 since the possible effects are not exactly
known.

8.0.8 (api:86/proto:86)
--------
 * Improvements to the bitmap code. (The old code might reenabled
   interrupts by accident)
 * Fixed a endian issue in the wirte protocol. C bit-fields are
   might by layed out differently on little/big endian machines.
 * Drbdadm's adjust forgot sometimes to adjust options values that
   where inherited from the common section, fixed that.
 * Removed dopd. It gets (and should be) shipped with heartbeat.
 * When peer authentication is enabled, you could trick drbd to send
   a state report packet before it authenticated itself. Fixed that.
 * Added robustness to resync pause/continue.
 * Drbdsetup should not report a random error if no netlink
   answer is received from the drbd module.
 * Fixes to error code pathes. ( drbd_drain_block() and lc_alloc() )
 * Fixed a possible OOPS in case one manages to loose disk and
   network concurrently. (iSCSI disk and network over same switch)
 * Fixed the broadcasting of state change events to userspace.

http://www.linbit.com/support/drbd-8.0.8/
http://oss.linbit.com/drbd/8.0/drbd-8.0.8.tar.gz

PS: This time it the tag in git is already there...

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
