Return-Path: <philipp.reisner@linbit.com>
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com
	[209.85.166.180])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 67AF54202F8
	for <drbd-announce@lists.linbit.com>;
	Thu, 18 Feb 2021 18:02:02 +0100 (CET)
Received: by mail-il1-f180.google.com with SMTP id o7so2087774ils.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 18 Feb 2021 09:02:02 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Thu, 18 Feb 2021 18:01:47 +0100
Message-ID: <CADGDV=XLHh66P0MfB=UMV0c0R=TwwFsr8eVMXO8RU-Zpx_5BUQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.28-0rc2
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

during rc1 week two bug fixes got merged. Both pretty exotic bugs (in
the sense of affecting very few users). Just yesterday new issues were
reported, we want to examine them before we make this a final release.

This is a release candidate, please help testing it.

9.0.28-0rc2 (api:genl2/proto:86-119/transport:14)
--------
 * fix a regression introduces with 9.0.25; it failed to determine the
   right device size and the connection hangs in WFBitmapS/WFBitmapT
   repl state; to trigger this you need to do a partial resync to a
   new node with different backing device size
 * fix a race condition that causes a detach operation to hang; it
   is very hard to trigger

9.0.28-0rc1 (api:genl2/proto:86-119/transport:14)
--------
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

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.28-0rc2.tar.gz
https://github.com/LINBIT/drbd/commit/294ba1ebbb1de04c32bac400868e1bcbb45f64ee
