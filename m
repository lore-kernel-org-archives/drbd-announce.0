Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 881011627BB
	for <drbd-announce@lists.linbit.com>;
	Mon, 20 Apr 2026 21:57:16 +0200 (CEST)
Received: by mail-wr1-f54.google.com with SMTP id
	ffacd0b85a97d-43d70c30767so2577726f8f.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 20 Apr 2026 12:57:16 -0700 (PDT)
Received: from ryzen9 (192-164-131-220.hdsl.highway.telekom.at.
	[192.164.131.220]) by smtp.gmail.com with ESMTPSA id
	ffacd0b85a97d-43fe4e59f97sm34988727f8f.37.2026.04.20.12.57.14
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 20 Apr 2026 12:57:14 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.3.2 and drbd-9.2.18
Date: Mon, 20 Apr 2026 21:57:13 +0200
Message-ID: <86h5p5o15y.fsf@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain
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


Hi,

Another release coming. This time, it includes important fixes for
large, dynamic LINSTOR clusters. Linstor 1.33.2 already contains fixes
for most cases, but for disaggregated setups with diskless primary
nodes, this DRBD update is also necessary.

The bugs affect resources that got a replica added later, after creation
time. It only affects thinly-provisioned volumes, and only if they never
had a write request with a node absent and fully utilized peer
slots.
So, usually only a small percentage of all resources are
affected. Unfortunately, the affected resources show UpToDate/UpToDate,
but the younger replica misses some blocks.

Now we have tests for all those scenarios.

As these fixes are important for such larger LINSTOR installations, I
start this release cycle about two weeks earlier than usual.

During the release candidate phase, a regression in the RDMA transport
in the drbd-9.3 branch was discovered and fixed. And a problem with
attaching devices of ~100TiB or more was discovered and fixed.

9.3.2 (api:genl2/proto:86-101,118-124/transport:21)
--------
 * Use genl pre_doit/post_doit for netlink request setup and teardown
 * Handle recv returning 0 (EOF) in recv_bio
 * Revert flush_send_buffer send error causing state change
 * Fix a page leak in the RDMA transport's send-page path
 * All fixes from 9.2.18
  - Fix when a diskless primary creates a new current UUID,
    fixing possible silent data divergence later
  - Fix quorum calculation upon attach/detach operations
  - Handle split-brain recovery strategies during attach
    like they are handled during connect
  - Hanle attaching of large devices (~100TiB) without triggering
    the NMI watchdog
  - Fix a race condition in the RDMA code that could lead to
    leaking a cm object
  - Skip new-region resync for zero-guarantee backends at attach
  - drbdsetup attach waits for completion of disk state negotiation
    before returning
  - Fix missing disk line in drbdsetup show while in D_NEGOTIATING state
  - A few fixes found by the static analyzer smatch

https://pkg.linbit.com//downloads/drbd/9/drbd-9.3.2.tar.gz
https://github.com/LINBIT/drbd/commit/0605140bf521251f4f362b5bad2eeaf33dba1e9f

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.18.tar.gz
https://github.com/LINBIT/drbd/commit/a7afc67e5873f3fedce8d944c89edf87ffb7c116

cheers,
 Philipp
