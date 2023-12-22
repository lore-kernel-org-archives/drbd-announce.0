Return-Path: <philipp.reisner@linbit.com>
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D585F4202C2
	for <drbd-announce@lists.linbit.com>;
	Fri, 22 Dec 2023 15:26:02 +0100 (CET)
Received: by mail-ed1-f45.google.com with SMTP id
	4fb4d7f45d1cf-548ce39b101so2322729a12.2
	for <drbd-announce@lists.linbit.com>;
	Fri, 22 Dec 2023 06:26:02 -0800 (PST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 22 Dec 2023 15:26:00 +0100
Message-ID: <86o7eigvpj.fsf@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.18 and drbd-9.2.7
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

Here comes the DRBD December release. drbd-9.1.18 and drbd-9.2.7.
The updates that are worth mentioning are...

The RDMA transport finally reaches general usability. As usual, I have
plans to improve it further, it never stops.

Regarding quorum, for a cluster containing two nodes with backing disks
and a diskless tiebreaker node, our quorum implementation can preserve
quorum on a single storage node with the help of the tiebreaker node.
Up to now, it has lost quorum when that remaining storage node restarts.
Now we are improving that, it will restore quorum from the meta-data in
case it reboots.

We failed to notice that DRBD had issues establishing all connections
when a fresh cluster initializes three or more nodes with
differently-sized backing disks. We modernized some code from the
DRBD-8.4 times, and now that works.


9.2.7 (api:genl2/proto:86-122/transport:19)
--------
 * Fixed wrong tx-timeouts in the RDMA transport
 * Recreate buffers promptly for the RDMA transport, improving
   performance a lot
 * changes merged from drbd-9.1.18
  - Fixed connecting nodes with differently sized backing disks,
    specifically when the smaller node is primary, before establishing
    the connections
  - Fixed thawing a device that has I/O frozen after loss of quorum
    when a configuration change eases its quorum requirements
  - Properly fail TLS if requested (only available in drbd-9.2)
  - Fixed a race condition that can cause auto-demote to trigger right
    after an explicit promote
  - Fixed a rare race condition that could mess up the handshake result
    before it is committed to the replication state.
  - Preserve "tiebreaker quorum" over a reboot of the last node (3-node
    clusters only)
  - Update compatibility code for Linux 6.6


https://pkg.linbit.com/downloads/drbd/9/drbd-9.2.7.tar.gz
https://github.com/LINBIT/drbd/commit/194036f7c69c45ab65549c6504c17523cb7d6644

https://pkg.linbit.com/downloads/drbd/9/drbd-9.1.18.tar.gz
https://github.com/LINBIT/drbd/commit/08711cce35480897f6a26f4251caf597f8114203

Merry Christmans,
  Philipp
