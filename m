Return-Path: <philipp.reisner@linbit.com>
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 93DC1420649
	for <drbd-announce@lists.linbit.com>;
	Thu, 18 Feb 2021 18:02:47 +0100 (CET)
Received: by mail-io1-f46.google.com with SMTP id f20so2704297ioo.10
	for <drbd-announce@lists.linbit.com>;
	Thu, 18 Feb 2021 09:02:47 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Thu, 18 Feb 2021 18:02:35 +0100
Message-ID: <CADGDV=X3ShbKq9m=n9nuLsR96=xbvLVMw08XnGY2EriTOTwqTA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.0-rc.2
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

It is a drop-in replacement for drbd-9.0.x. Same config. Same
userspace utilities. Same wire protocol.

This is a release candidate, please help testing it.

9.1.0-rc.2 (api:genl2/proto:110-119/transport:16)
--------
 * merged fixes from 9.0.28-rc2
  - fix a regression introduces with 9.0.25; it failed to determine the
    right device size and the connection hangs in WFBitmapS/WFBitmapT
    repl state; to trigger this you need to do a partial resync to a
    new node with different backing device size
  - fix a race condition that causes a detach operation to hang; it
    is very hard to trigger

9.1.0-rc.1 (api:genl2/proto:110-119/transport:16)
--------
 * was forked off from drbd 9.0.19
 * has all changes up to 9.0.28-rc1
 * locking in the IO-submit code path was considerably improved,
   allowing multiple CPU to submitt in parallel

https://www.linbit.com/downloads/drbd/9/drbd-9.1.0-rc.2.tar.gz
https://github.com/LINBIT/drbd/commit/9e40b97c3c4b2f42ea662aa9451230829f6246ed
