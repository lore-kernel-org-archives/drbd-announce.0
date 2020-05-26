Return-Path: <philipp.reisner@linbit.com>
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 9A3864203DE
	for <drbd-announce@lists.linbit.com>;
	Tue, 26 May 2020 17:45:46 +0200 (CEST)
Received: by mail-io1-f46.google.com with SMTP id y18so2050894iow.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 26 May 2020 08:45:46 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Tue, 26 May 2020 17:45:34 +0200
Message-ID: <CADGDV=WCzCE8W1rqQ9EnCBk0Bbzhc1Onss5mZ6teBdgjVXD3qw@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.23-0rc2
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

Everything takes longer these days. Home-office, kids jumping around,
excuses, excuses...
I intend to make the final release very soon...

Here is the updated change-log:
9.0.23-0rc2 (api:genl2/proto:86-116/transport:14)
--------
 * fix a deadlock (regression introduced in 9.0.22) that can be
   triggered if a minor is added into a resource with an established
   connection
 * generate new UUID immediately if a primary loses a disk due to an IO
   error
 * fix read requests on diskless nodes that hit a read error on a
   diskful node; the retry on another diskful node works, but a bug
   could lead to a log-storm on the diskless node
 * fix removal of diskless nodes from clusters with quorum enabled
   (initiated from the diskless itself)
 * fix wrongly declined state changes if connections are established
   concurrently
 * fix continuation of initial resync; before that the initial resync
   always started from the beginning if it was interrupted
 * use rwsem _non_owner() operations to avoid false positives of
   lock-dep when running on a debug kernel
 * fix a sometimes missed resync if only a diskless node was primary
   since the day0 UUID
 * update compat up to Linux 5.6

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.23-0rc2.tar.gz

best regards,
 Phil
