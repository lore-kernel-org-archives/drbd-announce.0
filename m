Return-Path: <philipp.reisner@linbit.com>
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
	[209.85.166.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 316F14203B9
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Feb 2021 17:56:45 +0100 (CET)
Received: by mail-io1-f48.google.com with SMTP id g27so5217758iox.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Feb 2021 08:56:45 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Thu, 25 Feb 2021 17:56:34 +0100
Message-ID: <CADGDV=XwJC0HW3RCGhvz7bcNGP64ZuXMiTtC-eZ2h5pODoM-og@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.28-1
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <https://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <https://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Hi,

during the last week before the release, we let another few fixes in,
which again, are really hard to trigger.

Two minor features are coming with this release:
 1 Resource renaming
 2 ability to disable the upper bandwidth boundary for the resync controller

9.0.28-1 (api:genl2/proto:86-119/transport:14)
--------
 * fix a regression introduces with 9.0.25; it failed to determine the
   right device size and the connection hangs in WFBitmapS/WFBitmapT
   repl state; to trigger this you need to do a partial resync to a
   new node with different backing device size
 * fix an issue with netlink packets processed in parallel on multiple
   CPUs; the bug caused drbdadm adjust failing in very rare cases
 * fix a very rare occurrence of a reconciliation resync getting stuck
 * fix a race condition that causes a detach operation to hang; it
   is very hard to trigger
 * fix a kernel OOPS (via a BUG()) upon adding a timer twice under very rare
   timing
 * fix a counter imbalance that could lead to assertion messages when a
   protocol A peer disconnects with a certain timing
 * fix a rare race with receiving bitmap and a state change while
   establishing a connection
 * fix UUID handling to avoid false split-brain detections; this bug got
   triggered an isolated primary that gets demoted, and temporal network
   interruptions among the remaining nodes
 * fix resync decision to obey disk states when the generation UUIDs are
   equal; the effect of this bug was that you could end up with two Outdated
   nodes after resync
 * fix concurrent disk-attach operations
 * Fix possible kernel warning regarding an inbalance of backing device
   link/unlink
 * move some amount of kernel backward compatibility code moved from the old
   method (drbd_wrappers.h) to new cocci semantic patches
 * add support renaming resources while its devices might be in use and
   process IO requests
 * Allow setting c_max_rate to 0 with the meaning that the resync controller
   has no upper limit for the resync speed

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.28-1.tar.gz
https://github.com/LINBIT/drbd/commit/8db03a6344e74e5c160294d80188dc31b785db61
