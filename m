Return-Path: <lars.ellenberg@linbit.com>
Received: from mail-wr0-f176.google.com (mail-wr0-f176.google.com
	[209.85.128.176])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 0FDF71057315
	for <drbd-announce@lists.linbit.com>;
	Wed,  2 May 2018 13:58:40 +0200 (CEST)
Received: by mail-wr0-f176.google.com with SMTP id g21-v6so13721526wrb.8
	for <drbd-announce@lists.linbit.com>;
	Wed, 02 May 2018 04:58:40 -0700 (PDT)
Date: Wed, 2 May 2018 13:58:38 +0200
From: Lars Ellenberg <lars.ellenberg@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20180502115838.GL10032@soda.linbit>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [DRBD-announce] drbd-9.0.14
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

On Tue, Apr 17, 2018 at 03:24:08PM +0200, Philipp Reisner wrote:
> Hi,
> 
> This is a strongly recommended update for all drbd-9.0.x users.
> It contains serve fixes for for cases with multiple diskless
> nodes. Without these fixes you can even see wrong data read back from
> DRBD under complicated failure cases.
> 
> We slightly delayed the release to finish compatibility with
> the kernel of the recently released RHEL-7.5.

And here is the DRBD 9.0.14 release,
fixing a couple regressions we introduced in 9.0.13, like
auto-split-brain recovery handlers not being invoked; but you want
to *avoid* split brain and data divergence in the first place...

Excerpt from the ChangeLog
9.0.14-1 (api:genl2/proto:86-113/transport:14)
--------
 * fix regression in 9.0.13: call after-split-brain-recovery handlers
   no auto-recovery strategies (not even the default: disconnect) would be
   applied, nodes would stay connected and all nodes would try to become the
   source of the resync.
 * fix spurious temporary promotion failure: if after Primary loss
   failover happened too quickly, transparently retry internally.
 * fixup recently introduced P_ZEROES to actually work as intended
 * fix online-verify to account for skipped blocks; otherwise, it won't
   notice that it has finished, apparently being stuck near "100% done"
 * expose more resync and online-verify statistics and details
 * improve accounting of "in-flight" data and resync requests
 * allow taking down an already useless minor device during "down",
   even if it is (temporarily) opened by for example udev scanning
 * fix for a node staying "only" Consistent and not returning to UpToDate
   in certain scenarios when fencing is enabled
 * fix data generation UUID propagate during resync
 * compat for upstream kernels up to v4.17

http://www.linbit.com/downloads/drbd/9.0/drbd-9.0.14-1.tar.gz
https://github.com/LINBIT/drbd-9.0/tree/drbd-9.0.14

To take advantage of the more detailed resync and finally correct
online-verify stats, you will need to update your drbd-utils to 9.4,
which we expect to release later this week.

I'll leave the 9.0.13 changelog here for reference as well:

> 9.0.13-1 (api:genl2/proto:86-113/transport:14)
> --------
>  * abort a resync if a resync source becomes weakly connected and the
>    sync target is a neighbor of the primary; the lack of doing so was
>    a possible source of data corruption
>  * fix UUID handling with multiple diskless nodes; If the primary role
>    is moved between them, and no write happens before the storage
>    nodes are disconnect; before this fix the storage nodes would outdate
>    themselves upon reconnect
>  * When a data-set gets into contact (attach or connect) with an all
>    diskless cluster with a primary and the exposed UUID does not match
>    the arriving data-set, make sure to either set it to "Consistent"
>    or to reject the attach
>  * correctly handle when a node that was marked as intentional diskless
>    should get a disk; allocate bitmap slots when the --bitmap=no flag
>    gets removed; reject peers to attach if they are marked with --bitmap=no
>  * fix outdating of weakly connected nodes; It was broken when an already
>    primary node joins the cluster at the other end
>  * made returning from Ahead to SyncSource more reliable; the old code
>    may have missed the event if the write to the local backend was still
>    pending when the barrier-ack comes in
>  * fix a hard to trigger deadlock in the receiver; it triggered sometimes
>    on the Secondary if a resync was going on and writes on the primary
>    happen to the same area while the connection is interrupted; it caused
>    the device to be stuck in "NetworkFailure" state
>  * fix online resize in the presence of two or more diskless nodes
>  * fix online add of volumes to diskless nodes when it already has
>    established connections
>  * Set the SO_KEEPALIVE socket option on data sockets. Can be important
>    if long lived DRBD connections go through a firewall with connection
>    tracking
>  * automatically solve a specific split brain when quorum is enabled
>    and a node does no IO between losing connections to other nodes
>  * Compat: Drop support for kernels older 2.6.32 and distros older than
>    RHEL6; Added support for kernels up to v4.15.x
>  * new wire packet P_ZEROES a cousin of P_DISCARD, following the kernel
>    as it introduced separated BIO ops for writing zeros and discarding
>  * compat workaround for two RHEL 7.5 idiosyncrasies regarding refcount_t
>    and struct nla_policy

-- 
: Lars Ellenberg
: LINBIT | Keeping the Digital World Running
: DRBD -- Heartbeat -- Corosync -- Pacemaker

DRBD® and LINBIT® are registered trademarks of LINBIT
