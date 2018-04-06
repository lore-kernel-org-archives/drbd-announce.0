Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr0-f176.google.com (mail-wr0-f176.google.com
	[209.85.128.176])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 2371D1056F9D
	for <drbd-announce@lists.linbit.com>;
	Fri,  6 Apr 2018 15:35:31 +0200 (CEST)
Received: by mail-wr0-f176.google.com with SMTP id d17so1806237wre.1
	for <drbd-announce@lists.linbit.com>;
	Fri, 06 Apr 2018 06:35:31 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 06 Apr 2018 15:28:59 +0200
Message-ID: <9917931.SO3ec9PEg9@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.13-0rc1
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

This is the release candidate of an important drbd-9 update.
As soon as it is final it will be a strongly recommended update for
all uers. It contains serve fixes for for cases with multiple diskless
nodes. Without these fixes you can even see wrong data read back from
DRBD under complicated failure cases.

Please help testing this release candidate. If all goes smooth I
will tag 9.0.13 (final) on April 13.


9.0.13-0rc1 (api:genl2/proto:86-113/transport:14)
=2D-------
 * abort a resync if a resync source becomes weakly and the sync target
   is a neighbor of the primary; the lack of doing so was a possible
   source of data corruption
 * fix UUID handling with multiple diskless nodes; If the primary role
   is moved between them, and no write happens before the the storage
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
   and a node does no IO between loosing connections to other nodes
 * Compat: Drop support for kernels older 2.6.32 and distros older than
   RHEL6; Added support for kernels up to v4.15.x

http://www.linbit.com/downloads/drbd/9.0/drbd-9.0.13-0rc1.tar.gz
https://github.com/LINBIT/drbd-9.0/releases/tag/drbd-9.0.13-0rc1

best regards,
 Phil
=2D-=20
LINBIT | Keeping The Digital World Running

DRBD=AE and LINBIT=AE are registered trademarks of LINBIT, Austria.

