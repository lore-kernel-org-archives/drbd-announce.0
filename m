Return-Path: <philipp.reisner@linbit.com>
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com
	[209.85.128.169])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 876C6420370
	for <drbd-announce@lists.linbit.com>;
	Mon, 27 Mar 2023 22:23:51 +0200 (CEST)
Received: by mail-yw1-f169.google.com with SMTP id
	00721157ae682-5445009c26bso192144677b3.8
	for <drbd-announce@lists.linbit.com>;
	Mon, 27 Mar 2023 13:23:51 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 27 Mar 2023 22:23:38 +0200
Message-ID: <CADGDV=XrnUGkxUx04yvGJXEASPuxW_RWqE8OB2XmY5Aa=1cNnA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.14-rc.1 and drbd-9.2.3-rc.1
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

Hello DRBD-user,

Today I am announcing the release candidate 1 of the next releases of
drbd-9.1 and drbd-9.2. In this eight-week development cycle, we fixed
interesting issues in different places.

An area of attention was the "resync-after" functionality. This
feature allows you to serialize resyncs of resources. That is
interesting when you have many resources needing to resync when a node
returns online.

As usual, we added several new tests to our test-suite: behavior and
endurance tests.

This is a release candidate. Please help test it. If you are not able
to find regressions, this might become the final release a week from
now.


9.1.14-rc.1 (api:genl2/proto:110-121/transport:17)
--------
 * fix a race with concurrent promotion and demotion, which can
   lead to an unexpected "split-brain" later on
 * fix a specific case where promotion was allowed where it should not
 * fix a race condition between auto-promote and a second two-phase
   commit that can lead to a DRBD thread locking up in an endless loop
 * fix several bugs with "resync-after":
  - missing resync-resume when minor numbers run in opposite
    direction as the resync-after dependencies
  - a race that might lead to an OOPS in add_timer()
 * fix an OOPS when reading from in_flight_summary in debugfs
 * fix a race that might lead to an endless loop of printing
   "postponing start_resync" while starting a resync
 * fix diskless node with a diskfull with a 4KiB backend

9.2.3-rc.1 (api:genl2/proto:110-122/transport:18)
--------
 * improve matching ACKs to in-memory request objects;
   inexact matches were a source of unexpected connection losses
 * merge changes from drbd-9.1.14
  - fix a race with concurrent promotion and demotion, which can
    lead to an unexpected "split-brain" later on
  - fix a specific case where promotion was allowed where it should not
  - fix a race condition between auto-promote and a second two-phase
    commit that can lead to a DRBD thread locking up in an endless loop
  - fix several bugs with "resync-after":
   - missing resync-resume when minor numbers run in opposite
     direction as the resync-after dependencies
   - a race that might lead to an OOPS in add_timer()
  - fix an OOPS when reading from in_flight_summary in debugfs
  - fix a race that might lead to an endless loop of printing
    "postponing start_resync" while starting a resync
  - fix diskless node with a diskfull with a 4KiB backend

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.14-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/b886a10aca3c13524bb142dd37fd4de51c6f0623

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.3-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/4598906f0686e74a05f5ccf6fc89ba77cf60b2ae

cheers,
 Philipp
