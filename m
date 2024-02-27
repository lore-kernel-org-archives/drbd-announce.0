Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 1AF4C42021F
	for <drbd-announce@lists.linbit.com>;
	Tue, 27 Feb 2024 22:46:49 +0100 (CET)
Received: by mail-wr1-f48.google.com with SMTP id
	ffacd0b85a97d-33de64c91abso1145496f8f.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 27 Feb 2024 13:46:49 -0800 (PST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.1.19-rc.1 and drbd-9.2.8-rc.1
Date: Tue, 27 Feb 2024 22:46:47 +0100
Message-ID: <86wmqp4m2g.fsf@linbit.com>
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


Hello,

As always, this release brings several fixes. For many of those fixes,
we created new test cases or extended existing test cases to verify the
bug's existence and the patch's effectiveness.

What we learned was that we needed more testing in the area of the
checksum-based resync. We have that now.

In December, I wrote that the RDMA transport was ready; well, it turned
out that it still had an issue under heavy I/O load. Although that is
fixed now, other bugs might be waiting to be discovered in the RDMA
transport.

This is the release candidate. Please help test it.

9.2.8-rc.1 (api:genl2/proto:86-122/transport:19)
--------
 * Fix the not-terminating-resync phenomenon between two nodes with
   backing disk in the presence of a diskless primary node under
   heavy I/O
 * Fix a rare race condition aborting connections claiming wrong
   protocol magic
 * Fix various problems of the checksum-based resync, including kernel
   crashes
 * Fix soft lockup messages in the RDMA transport under heavy I/O
 * changes merged from drbd-9.1.19
  - Fix a resync decision case where drbd wrongly decided to do a full
    resync, where a partial resync was sufficient; that happened in a
    specific connect order when all nodes were on the same data
    generation (UUID)
  - Fix the online resize code to obey cached size information about
    temporal unreachable nodes
  - Fix a rare corner case in which DRBD on a diskless primary node
    failed to re-issue a read request to another node with a backing
    disk upon connection loss on the connection where it shipped the
    read request initially
  - Make timeout during promotion attempts interruptible
  - No longer write activity-log updates on the secondary node in a
    cluster with precisely two nodes with backing disk; this is a
    performance optimization
  - Reduce CPU usage of acknowledgment processing

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.8-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/c2823c629623594bd6f916b7bc7e55629a790d4d

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.19-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/b33129351562fde9407c21a96d5bba01d4cf6ed3
