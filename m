Return-Path: <philipp.reisner@linbit.com>
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com
	[209.85.166.178])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E3FFC4207E2
	for <drbd-announce@lists.linbit.com>;
	Tue, 22 Dec 2020 11:43:12 +0100 (CET)
Received: by mail-il1-f178.google.com with SMTP id q1so11605313ilt.6
	for <drbd-announce@lists.linbit.com>;
	Tue, 22 Dec 2020 02:43:12 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Tue, 22 Dec 2020 11:43:01 +0100
Message-ID: <CADGDV=UU2Y6-sh4qwKM-8PNgDrMQYh0bxF_D5cBFGfv=XuXFtg@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.26
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

Dear DRBD users,

This is a big release. The release candidate phase lasted more than a
month.  Bug reports and requests were coming in concurrently from different
customers/users working on different use-cases and scenarios.

One example: the XCP-ng driver developers need to switch all nodes quickly
for a short time to primary, right after the initial resync started. Nobody
else does that, so they uncovered an issue.

Another one: KVM on DRBD on ZFS zVols. We learned the hard way that the
guest within KVM might issue read requests with a size of 0 (zero!). I guess
that is used for discovery, maybe a SCSI scan. The size 0 read is processed
by DRBD, but older versions of ZFS react with a kernel OOPS!

The most important two fixes are those that address possible sources of data
corruption. Both were reported by a cloud provider from China. Apparently,
they have a fresh way of testing, so they were able to identify these issues
AND EVEN SUGGESTED PATCHES!

One is about write-requests that come in on a primary while it is in the
process of starting a partial/bitmap-based resync (repl: WFBitmapS). Those
write-requests might not get mirrored.  The bug can happen with just two
nodes, although more nodes probably increase the likelihood that it happens,
The volume needs to be a bit bigger because a small bitmap reduces the
likelihood to hit it. Expect a tight-loop test to run for multiple hours to
trigger it once.
There is a whole story behind it. Many years ago DRBD simply blocked
incoming write-requests during that state. Then we had to optimize DRBD for
'uniform write latencies' and allowed write-requests to proceed while it is
in WFBitmapS state, and introduced an additional packet to send late bitmap
updates in this state. Later came other changes, related to state handling
that finally opened the window for this bug.

The second bug in this category requires 3 nodes or more. It requires a
resync between two nodes, and that the 3rd node is primary and only
connected to the sync source of the other two. Again you need to do a lot of
IO on the primary, a fast resync and then it can happen that a few bits are
missing in the primary towards node 3. This can lead to a later resync from
the primary to the third node missing these blocks.

Bugs are bad. Those that can cause inconsistencies in the mirror
especially. One way to maneuver a production system beyond this is by using
the online-verify mechanism to find out if your DRBD resources are subject
to this. It also sets the bits for the blocks it finds out of sync. Get in
touch with us via support, on the community-slack channel, or on the mailing
list in case you are affected.

I recommend everyone to upgrade any drbd-9 to 9.0.26.


9.0.26-1 (api:genl2/proto:86-118/transport:14)
--------
 * fix a source of possible data corruption; related to a resync and
   a primary node that is connected to the sync-source node only
 * fix for writes not getting mirrored over a connection while the primary
   transitions through the WFBitMapS state
 * complete size 0 reads immediately; some workloads (KVM and
   iscsi targets) in combination with a ZFS zvol as the backend can lead to
   a kernel OOPS in ZFS; this is a workaround in DRBD for that
 * fix a crash if during resync a discard operation fails on the
   resync-target node
 * fix a case of a disk unexpectedly becoming Outdated by moving the
   exchange of the initial packets into the body of the two-phase-commit
   that happens at a connect
 * fix for sporadic "Clearing bitmap UUID for node" log entries;
   a potential source of problems later on leading to false split-brain
   or unrelated data messages.
 * retry connect properly in case of bitmap-uuid changes during the handshake
 * completed missing logic of the new two-phase-commit based connect process;
   avoid connecting partitions with a primary in each; ensure consistent
   decisions if the connect attempt will be retried
 * fix an unexpected occurrence of NetworkFailure state in a tight
   drbdsetup disconnect; drbdsetup connect sequence
 * fix online verify to return to Established from VerifyS if the VerifyT node
   was temporarily Inconsistent during the run
 * fix a corner case where a node ends up Outdated after the crash and rejoin
   of a primary node
 * pause a resync if the sync-source node becomes inconsistent; an example
   is a cascading resync where the upstream resync aborts and leaves the
   sync-source node for the downstream resync with an inconsistent disk;
   note, the node at the end of the chain could still have an outdated disk
   (better than inconsistent)
 * reduce lock contention on the secondary for many resources; can improve
   performance significantly
 * fix online verify to not clamp disk states to UpToDate
 * fix promoting resync-target nodes; the problem was that it could modify
   the bitmap of an ongoing resync; which leads to alarming log messages
 * allow force primary on a sync-target node by breaking the resync
 * fix adding of new volumes to resources with a primary node
 * reliably detect split brain situation on both nodes
 * improve error reporting for failures during attach
 * implement 'blockdev --setro' in DRBD
 * following upstream changes to DRBD up to Linux 5.10 and ensure
   compatibility with Linux 5.8, 5.9, and 5.10


https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.26-1.tar.gz
https://github.com/LINBIT/drbd/commit/8e0c552326815d9d2bfd1cfd93b23f5692d7109c
