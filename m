Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr0-f169.google.com (mail-wr0-f169.google.com
	[209.85.128.169])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id E4BB91057315
	for <drbd-announce@lists.linbit.com>;
	Tue, 17 Apr 2018 15:24:11 +0200 (CEST)
Received: by mail-wr0-f169.google.com with SMTP id o15so4501228wro.11
	for <drbd-announce@lists.linbit.com>;
	Tue, 17 Apr 2018 06:24:11 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 17 Apr 2018 15:24:08 +0200
Message-ID: <6923981.GJPYzmf5ND@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.13
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

Hi,

This is a strongly recommended update for all drbd-9.0.x users.
It contains serve fixes for for cases with multiple diskless
nodes. Without these fixes you can even see wrong data read back from
DRBD under complicated failure cases.

We slightly delayed the release to finish compatibility with
the kernel of the recently released RHEL-7.5.


9.0.13-1 (api:genl2/proto:86-113/transport:14)
=2D-------
 * abort a resync if a resync source becomes weakly connected and the
   sync target is a neighbor of the primary; the lack of doing so was
   a possible source of data corruption
 * fix UUID handling with multiple diskless nodes; If the primary role
   is moved between them, and no write happens before the storage
   nodes are disconnect; before this fix the storage nodes would outdate
   themselves upon reconnect
 * When a data-set gets into contact (attach or connect) with an all
   diskless cluster with a primary and the exposed UUID does not match
   the arriving data-set, make sure to either set it to "Consistent"
   or to reject the attach
 * correctly handle when a node that was marked as intentional diskless
   should get a disk; allocate bitmap slots when the --bitmap=3Dno flag
   gets removed; reject peers to attach if they are marked with --bitmap=3D=
no
 * fix outdating of weakly connected nodes; It was broken when an already
   primary node joins the cluster at the other end
 * made returning from Ahead to SyncSource more reliable; the old code
   may have missed the event if the write to the local backend was still
   pending when the barrier-ack comes in
 * fix a hard to trigger deadlock in the receiver; it triggered sometimes
   on the Secondary if a resync was going on and writes on the primary
   happen to the same area while the connection is interrupted; it caused
   the device to be stuck in "NetworkFailure" state
 * fix online resize in the presence of two or more diskless nodes
 * fix online add of volumes to diskless nodes when it already has
   established connections
 * Set the SO_KEEPALIVE socket option on data sockets. Can be important
   if long lived DRBD connections go through a firewall with connection
   tracking
 * automatically solve a specific split brain when quorum is enabled
   and a node does no IO between losing connections to other nodes
 * Compat: Drop support for kernels older 2.6.32 and distros older than
   RHEL6; Added support for kernels up to v4.15.x
 * new wire packet P_ZEROES a cousin of P_DISCARD, following the kernel
   as it introduced separated BIO ops for writing zeros and discarding
 * compat workaround for two RHEL 7.5 idiosyncrasies regarding refcount_t
   and struct nla_policy

http://www.linbit.com/downloads/drbd/9.0/drbd-9.0.13-1.tar.gz
https://github.com/LINBIT/drbd-9.0/releases/tag/drbd-9.0.13

best regards,
 Phil

=2D-=20
LINBIT | Keeping The Digital World Running

DRBD=AE and LINBIT=AE are registered trademarks of LINBIT, Austria.

