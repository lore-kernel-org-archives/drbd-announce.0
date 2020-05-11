Return-Path: <philipp.reisner@linbit.com>
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B5F744203C9
	for <drbd-announce@lists.linbit.com>;
	Mon, 11 May 2020 15:15:14 +0200 (CEST)
Received: by mail-io1-f66.google.com with SMTP id i19so9524537ioh.12
	for <drbd-announce@lists.linbit.com>;
	Mon, 11 May 2020 06:15:14 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 11 May 2020 15:15:02 +0200
Message-ID: <CADGDV=XFkF=MnhEJxXa0DhaE24uTDVi11UqrGEb79iLk7-77Og@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.23-0rc1
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

A few fixes are waiting...
The regression is, of course, painful, and causes a lot of thinking
here about how we can get better at testing and verifying our changes.
There is a plan.

The area of handling IO errors needed a bit of love and quickly adding
and removing nodes with LINSTOR is an area where bugs where hidden.

Help us to find out what is broken within a week. If you fail, this
becomes a final release on May 18.


9.0.23-0rc1 (api:genl2/proto:86-116/transport:14)
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
 * use rwsem _non_owner() operations to avoid false positives of
   lock-dep when running on a debug kernel

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.23-0rc1.tar.gz


best regards,
 Phil
