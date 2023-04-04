Return-Path: <philipp.reisner@linbit.com>
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
	[209.85.208.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2537642016E
	for <drbd-announce@lists.linbit.com>;
	Tue,  4 Apr 2023 15:36:02 +0200 (CEST)
Received: by mail-ed1-f50.google.com with SMTP id eg48so130600104edb.13
	for <drbd-announce@lists.linbit.com>;
	Tue, 04 Apr 2023 06:36:02 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 04 Apr 2023 15:35:20 +0200
Message-ID: <865yabbwiv.fsf@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.14 and drbd-9.2.3
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

Today I am announcing the drbd-9.1.14 and drbd-9.2.3 releases.  In this
eight-week development cycle, we fixed interesting issues in different
places.

An area of attention was the "resync-after" functionality. This
feature allows you to serialize resyncs of resources. That is
interesting when you have many resources needing to resync when a node
returns online.

After rc.1 we sneaked in two minor changes on the drbd-9.1 branch. One
change is how a timeout is derived, which only affects users that use
non-standard timeout settings.
The second one simplifies the code and potentially fixes a bug of which
we have seen a single occurrence so far.

On the 9.2 branch, we needed to fix a network protocol compatibility
with drbd-8.4.

9.1.14 (api:genl2/proto:110-121/transport:17)
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
 * simplify remembering two-pc parents, maybe fixing a one-time-seen bug
 * derive abort_local_transaction timeout from ping-timeout

9.2.3 (api:genl2/proto:110-122/transport:18)
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
  - simplify remembering two-pc parents, maybe fixing a one-time-seen bug
  - derive abort_local_transaction timeout from ping-timeout

https://pkg.linbit.com/downloads/drbd/9/drbd-9.1.14.tar.gz
https://github.com/LINBIT/drbd/commit/df55dfb7a93484b7d7eb0c4deac62d887cfcbf67

https://pkg.linbit.com/downloads/drbd/9/drbd-9.2.3.tar.gz
https://github.com/LINBIT/drbd/commit/c142ca1280c41aee1330b980544ef276330ff6ef

Philipp
