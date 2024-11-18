Return-Path: <philipp.reisner@linbit.com>
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
	[209.85.218.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 6B9C142015E
	for <drbd-announce@lists.linbit.com>;
	Mon, 18 Nov 2024 14:43:44 +0100 (CET)
Received: by mail-ej1-f51.google.com with SMTP id
	a640c23a62f3a-aa20944ce8cso761764866b.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 18 Nov 2024 05:43:44 -0800 (PST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.1.23 and drbd-9.2.12
Date: Mon, 18 Nov 2024 14:43:42 +0100
Message-ID: <86r078bqsx.fsf@linbit.com>
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


Hello DRBD-users,

This DRBD release is about four weeks late compared to the usual
release pace. The reasons for this are that the discovery of fresh
bugs was a bit slow in this cycle, and those bugs were hard to
crack. It took some time to understand both bugs to the extent that it
allowed us to write reproducers for our test suite.
By the way, the customer affected by one of these issues run more
than 22,000 drbd resources in a linstor cluster stretching over more
than 350 nodes, with about 7.9 PB under LINSTOR management.
The DRBD RDMA transport depended on the behavior of the Melanox
cards. We fixed that and verified the improvements by running it on
intel RDMA cards.
Last but not least, we invested quite some time in tracking all Linux
upstream developments and have DRBD compatible with 6.11 and the
yesterday-released 6.12 kernels.
I intend to branch off a new series (e.g., 9.4.x) soon, and I will no
longer do releases in the 9.1.x branch.
We will discontinue support for RHEL7 kernels (and distros equally
old) with the new branch. We will add performance improvements for the
data path, features for multi-site deployments, and an optionally new
way of doing resyncs.

PS: That restores compatibility with the Debian Bookworm kernel. The
    Debian kernel mainers cherry-picked a very recent upstream commit
    from Linux 6.12.


9.2.12 (api:genl2/proto:86-101,118-122/transport:19)
--------
 * Fix a complicated distributed deadlock corner case that caused
   DRBD to being unable to reconnect after losing connection during
   a resync
 * Fix the RDMA transport for use with an intel card; fixed various
   aspects where we depended on Mellanox cards' behavior
 * Changes merged from 9.1.22
  - Fix a corner case that can happen when DRBD establishes multiple
    connections in parallel, which could lead one connection to end up in
    an inconsistent replication state of WFBitMapT/Established
  - Fix a corner case in which a reconciliation resync ends up in
    WFBitMapT/Established
  - Restrict protocol compatibility to the most recent 8.4 and 9.0 releases
  - Fix a corner case causing a module ref leak on drbd_transport_tcp;
    if it hits, you can not rmmod it
  - rate-limit resync progress while resync is paused
  - resync-target inherits history UUIDs when resync finishes,
    this can prevent unexpected "unrelared data" events later
  - Updated compatibility code for Linux 6.11 and 6.12


https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.12.tar.gz
https://github.com/LINBIT/drbd/commit/2da6f528dc4ab3fd25c511f7b03531100e54ab08

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.23.tar.gz
https://github.com/LINBIT/drbd/commit/6d015249702c93a0b937ab0b22f62d0da125cb55

cheers,
 Philipp
