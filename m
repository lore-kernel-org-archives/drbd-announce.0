Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 3B543420960
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Dec 2021 18:04:53 +0100 (CET)
Received: by mail-wr1-f41.google.com with SMTP id t9so33524119wrx.7
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Dec 2021 09:04:53 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Tue, 14 Dec 2021 18:04:41 +0100
Message-ID: <CADGDV=UK-PC064XCiSM6QveCPN8ffF+0cbABbRatOhQS6qo2Og@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.5, drbd-9.0.32
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

Here are the final releases of drbd-9.0.32-1 and drbd-9.1.5.

For 9.0 we got a dividend from the WinDRBD effort. There was an
access-after-free bug hiding in the code, that is no issue when DRBD is
running in the Linux kernel since the Linux kernel does not un-map the
addresses after freeing objects from a mem-pool. With WinDRBD this is
different, after analyzing the bug, we fixed it in the Linux DRBD of course
(which is the upstream for WinDRBD). As announced earlier this Year the
9.0.32 release will be the final release of the 9.0 branch.

DRBD-9.1 gets the bug fixes from the 9.0 branch, and a locking regression
was fixed, specific to the 9.1 branch. From now on 9.1 is the branch that
receives bug fixes only.


9.0.32-1 (api:genl2/proto:86-121/transport:14)
--------
 * fix a read-access-after-free, that could cause an OOPs; triggers with
   an unusual configuration with a secondary having a smaller AL than
   the primary or a diskless primary and heavy IO
 * avoid a livelock that can cause long IO delays during resync on a
   primary resync-target node
 * following upstream changes to DRBD up to Linux 5.14 and updated compat
   (including RHEL9-beta)
 * fix module override for Oracle-Linux

9.1.5 (api:genl2/proto:110-121/transport:17)
--------
 * merged all changes from drbd-9.0.32
  - fix a read-access-after-free, that could cause an OOPs; triggers with
    an unusual configuration with a secondary having a smaller AL than
    the primary or a diskless primary and heavy IO
  - avoid a livelock that can cause long IO delays during resync on a
    primary resync-target node
  - following upstream changes to DRBD up to Linux 5.14 and updated compat
    (including RHEL9-beta)
  - fix module override for Oracle-Linux
 * fixed a locking regression of the 9.1 branch, only relevant in
   the moment a local backing device delivers an IO error to drbd
 * removed compat support for kernel older than Linux-3.10 (RHEL7)
 * code cleanups and refactoring

https://pkg.linbit.com//downloads/drbd/9.0/drbd-9.0.32-1.tar.gz
https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.5.tar.gz
