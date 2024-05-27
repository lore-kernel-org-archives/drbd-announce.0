Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 938B942015E
	for <drbd-announce@lists.linbit.com>;
	Mon, 27 May 2024 18:18:06 +0200 (CEST)
Received: by mail-wm1-f46.google.com with SMTP id
	5b1f17b1804b1-420180b5898so80456595e9.2
	for <drbd-announce@lists.linbit.com>;
	Mon, 27 May 2024 09:18:06 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.1.21-rc.1 and drbd-9.2.10-rc.1
Date: Mon, 27 May 2024 18:18:04 +0200
Message-ID: <86sey35iv7.fsf@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: drbd-user@lists.linbit.com
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


Hi DRBD-users,

You might have noticed that this release comes about four weeks earlier
than our usual pace. The reason is that we discovered two regressions we
want to fix. Both regressions were introduced in the last cycle, into
drbd-9.1.20 and drbd-9.2.9.

One is that if the size of your backing device is a power of two, and
you are using external meta-data, DRBD tries to read a 64-bit word,
starting 32 bits before the end of the last page of the bitmap
area. Yes, that is an out-of-bound access, leading to a crash. Due to
the preconditions, it affects only a relatively small part of our user
base.

The other regression triggers when you delete a connection from a
resource and another connection goes down simultaneously. It causes then
a deadlock, rendering the affected resource stuck in that state. In
deployments with LINSTOR this can happen, since when LINSTOR removes a
resource it calls `drbdadm down <res>` on all the nodes
concurrently. Kubernetes users with dynamic workloads are affected by
this.

The good news is that both issues are understood and fixed.

Please help test the release candidates.


9.2.10-rc.1 (api:genl2/proto:86-122/transport:19)
--------
 * Changes merged from 9.1.21
  - fix a deadlock that can trigger when deleting a connection and
    another connection going down in parallel. This is a regression of
    9.1.20
  - Fix an out-of-bounds access when scanning the bitmap. It leads to a
    crash when the bitmap ends on a page boundary, and this is also a
    regression in 9.1.20.

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.10-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/c546a6487acade23427200165a74a55acf1277ba

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.21-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/2fd95c83d008f3bc498cb59778869f86528c47b5


