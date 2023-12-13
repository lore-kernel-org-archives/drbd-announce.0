Return-Path: <philipp.reisner@linbit.com>
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
	[209.85.218.46])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2DA8C4201C5
	for <drbd-announce@lists.linbit.com>;
	Wed, 13 Dec 2023 21:42:20 +0100 (CET)
Received: by mail-ej1-f46.google.com with SMTP id
	a640c23a62f3a-9fa2714e828so961770266b.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 13 Dec 2023 12:42:20 -0800 (PST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 13 Dec 2023 21:42:18 +0100
Message-ID: <86r0jphm1h.fsf@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.18-rc.1 and drbd-9.2.7-rc.1
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

Here comes the DRBD December release. drbd-9.1.18-rc.1 and drbd-9.2.7-rc.1.
We have two updates that are worth mentioning.

One, the RDMA transport finally reaches general usability. As usual, I
have plans to improve it further, it never stops.

The other improvement is in the area of the quorum code. For a cluster
containing two nodes with backing disks and a diskless tiebreaker node,
our quorum implementation can preserve quorum on a single storage node
with the help of the tiebreaker node.

Up to now, it has lost quorum when that remaining storage node restarts.

Now we are improving that, it will restore quorum from the meta-data in
case it reboots.

Please help test the release candidates.


9.2.7-rc.1 (api:genl2/proto:86-122/transport:19)
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
  - Preserve "tiebreaker quorum" over a reboot of the last node (3-node
    clusters only)
  - Update compatibility code for Linux 6.6


https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.7-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/7f22671f5e852604d0383c499b96e1c2fe87901c

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.18-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/aaba2a8236b623538aa1c54b46b8ea48c782a03b

cheers,
 Phil
