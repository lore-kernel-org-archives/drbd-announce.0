Return-Path: <lars.ellenberg@linbit.com>
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
	[209.85.218.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 9A54B420634
	for <drbd-announce@lists.linbit.com>;
	Wed, 23 Dec 2020 13:54:56 +0100 (CET)
Received: by mail-ej1-f42.google.com with SMTP id 6so22684384ejz.5
	for <drbd-announce@lists.linbit.com>;
	Wed, 23 Dec 2020 04:54:56 -0800 (PST)
Date: Wed, 23 Dec 2020 13:54:53 +0100
From: Lars Ellenberg <lars.ellenberg@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20201223125453.GE18735@soda.linbit>
References: <CADGDV=UU2Y6-sh4qwKM-8PNgDrMQYh0bxF_D5cBFGfv=XuXFtg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CADGDV=UU2Y6-sh4qwKM-8PNgDrMQYh0bxF_D5cBFGfv=XuXFtg@mail.gmail.com>
Subject: [DRBD-announce] drbd-9.0.27 [Re: drbd-9.0.26]
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

On Tue, Dec 22, 2020 at 11:43:01AM +0100, Philipp Reisner wrote:
> Dear DRBD users,
> 
> This is a big release.
> The release candidate phase lasted more than a month.

And still did not catch a regression:
9.0.26 broke live-migration (dual-primary)
when both primary nodes are "diskful".

Live mimgration with one being a "diskless client" still worked.

We made sure our tests will now always cover
this "hyperconverged" live migration case.

9.0.27-1 (api:genl2/proto:86-118/transport:14)
--------
 * Fix regression: allow live migration between two diskful peers again

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.27-1.tar.gz
https://github.com/LINBIT/drbd/commit/bea41a056bb2abe4d5dfd2f69863282dfa1b2257

> 9.0.26-1 (api:genl2/proto:86-118/transport:14)
> --------
>  * fix a source of possible data corruption; related to a resync and
>    a primary node that is connected to the sync-source node only
>  * fix for writes not getting mirrored over a connection while the primary
>    transitions through the WFBitMapS state
>  * complete size 0 reads immediately; some workloads (KVM and
>    iscsi targets) in combination with a ZFS zvol as the backend can lead to
>    a kernel OOPS in ZFS; this is a workaround in DRBD for that
>  * fix a crash if during resync a discard operation fails on the
>    resync-target node
>  * fix a case of a disk unexpectedly becoming Outdated by moving the
>    exchange of the initial packets into the body of the two-phase-commit
>    that happens at a connect
>  * fix for sporadic "Clearing bitmap UUID for node" log entries;
>    a potential source of problems later on leading to false split-brain
>    or unrelated data messages.
>  * retry connect properly in case of bitmap-uuid changes during the handshake
>  * completed missing logic of the new two-phase-commit based connect process;
>    avoid connecting partitions with a primary in each; ensure consistent
>    decisions if the connect attempt will be retried
>  * fix an unexpected occurrence of NetworkFailure state in a tight
>    drbdsetup disconnect; drbdsetup connect sequence
>  * fix online verify to return to Established from VerifyS if the VerifyT node
>    was temporarily Inconsistent during the run
>  * fix a corner case where a node ends up Outdated after the crash and rejoin
>    of a primary node
>  * pause a resync if the sync-source node becomes inconsistent; an example
>    is a cascading resync where the upstream resync aborts and leaves the
>    sync-source node for the downstream resync with an inconsistent disk;
>    note, the node at the end of the chain could still have an outdated disk
>    (better than inconsistent)
>  * reduce lock contention on the secondary for many resources; can improve
>    performance significantly
>  * fix online verify to not clamp disk states to UpToDate
>  * fix promoting resync-target nodes; the problem was that it could modify
>    the bitmap of an ongoing resync; which leads to alarming log messages
>  * allow force primary on a sync-target node by breaking the resync
>  * fix adding of new volumes to resources with a primary node
>  * reliably detect split brain situation on both nodes
>  * improve error reporting for failures during attach
>  * implement 'blockdev --setro' in DRBD
>  * following upstream changes to DRBD up to Linux 5.10 and ensure
>    compatibility with Linux 5.8, 5.9, and 5.10

-- 
: Lars Ellenberg
: LINBIT | Keeping the Digital World Running
: DRBD -- Heartbeat -- Corosync -- Pacemaker

DRBD® and LINBIT® are registered trademarks of LINBIT
__
please don't Cc me, but send to list -- I'm subscribed
