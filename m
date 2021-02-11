Return-Path: <philipp.reisner@linbit.com>
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id DFEEE4202D0
	for <drbd-announce@lists.linbit.com>;
	Thu, 11 Feb 2021 22:46:30 +0100 (CET)
Received: by mail-io1-f53.google.com with SMTP id z21so5939951iob.7
	for <drbd-announce@lists.linbit.com>;
	Thu, 11 Feb 2021 13:46:30 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Thu, 11 Feb 2021 22:46:19 +0100
Message-ID: <CADGDV=VBBBBCanQLX+iXxN6S1KTP4-7PHT0+p+dzzRWNvy+9og@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.28-0rc1
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

Hi community,

I called the 9.0.26 release a 'big release'. Compared to that this will be
a small release. Though it contains a number of fixes, they are very hard to
trigger.

Two minor features are coming with this release:
 1 Resource renaming
 2 ability to disable the upper bandwidth boundary for the resync controller

The real exciting development is happening on the master branch. I intended to
release that today, but issues with the build process force me to delay it until
tomorrow. The plan is that we will do parallel releases of these two branches
for the next 12 months. Stay tuned for more tomorrow.

This is a release candidate, please help testing it.

9.0.28-0rc1 (api:genl2/proto:86-119/transport:14)
--------
 * fix a kernel OOPS (via a BUG()) upon adding a timer twice under very rare
   timing
 * fix a counter imbalance that could lead to assertion messages when a
   protocol A peer disconnects with a certain timing
 * fix a rare race with receiving bitmap and a state change while
   establishing a connection
 * fix UUID handling to avoid false split brain detections; this bug got
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

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.28-0rc1.tar.gz
https://github.com/LINBIT/drbd/commit/24d2c899ca59668a77e03544612a5c7b5cf6d6b7
