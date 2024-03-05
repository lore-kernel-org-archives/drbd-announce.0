Return-Path: <philipp.reisner@linbit.com>
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
	[209.85.208.169])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 3A263420319
	for <drbd-announce@lists.linbit.com>;
	Tue,  5 Mar 2024 22:14:35 +0100 (CET)
Received: by mail-lj1-f169.google.com with SMTP id
	38308e7fff4ca-2d09cf00214so78388331fa.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 05 Mar 2024 13:14:35 -0800 (PST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.1.19 and drbd-9.2.8
Date: Tue, 05 Mar 2024 22:14:32 +0100
Message-ID: <86ttlk4c07.fsf@linbit.com>
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

As so often, we had to fix bugs in the area not-so-common corner cases.
We started with a long hunt for a bug that caused a diskless primary
node that seldom fails to re-issue pending read requests to another node
with a backing disk when it loses connection to the node it first sent
the requests to. It turned out that a caching pointer into a list data
structure could be a few elements "too far." When re-issuing the
mentioned read requests, it missed exactly the requests between where it
should point to and where it points to.

At about the same time, we also became aware that a DRBD device that you
drive into an IO-depth of 8000 write requests consumes too much CPU in
processing the write acknowledge packets when they come back in.
BTW, how do you do that? You need to use a system with lots of memory
and write to a DRBD device without using O_DIRECT. Then, when the kernel
starts flushing out the dirty pages, it creates high IO depths. When
doing benchmarks, people usually use O_DIRECT and control the IO-depth,
e.g., 1, 10s, or 100s.

So, we killed two bugs with one stone and started using the mentioned
caching pointer for the ACK processing. With that, we reduce the CPU
consumption of the ACK processing and make it a lot easier to detect
should the caching pointer be off.

We also learned that we needed more testing in the area of the
checksum-based resync. We have that now.

You can see in the changelog that we improved the online resize in case
not all nodes are online. Up to this point, it executed an online grow,
even if it does not know if the missing node's backing device also
grew. Too optimistic.
Now, it might be too permissive if the online partition misses some of
its members' complete mesh connections. We will put more work into this.

The RDMA code received a fix related to high IO depths. I suspect that
there is another bug in there that relates to cleaning up after
connection aborts.

I recommend upgrading.


9.2.8 (api:genl2/proto:86-122/transport:19)
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

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.8.tar.gz
https://github.com/LINBIT/drbd/commit/e163b05a76254c0f51f999970e861d72bb16409a

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.19.tar.gz
https://github.com/LINBIT/drbd/commit/1d69c7411a0b59507e467545a32f20c3e6e2574c

cheers,
 Philipp
