Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 9D8051630D4
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Apr 2026 22:19:39 +0200 (CEST)
Received: by mail-wm1-f54.google.com with SMTP id
	5b1f17b1804b1-488b8efed61so59417295e9.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Apr 2026 13:19:39 -0700 (PDT)
Received: from ryzen9 (192-164-131-220.hdsl.highway.telekom.at.
	[192.164.131.220]) by smtp.gmail.com with ESMTPSA id
	5b1f17b1804b1-488ee03897dsm70976005e9.10.2026.04.14.13.19.37
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 14 Apr 2026 13:19:37 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.3.2-rc.1 and drbd-9.2.18-rc.2
Date: Tue, 14 Apr 2026 22:19:36 +0200
Message-ID: <86jyu9nvl3.fsf@linbit.com>
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

And yes, due to a build issue we noticed late, it is rc.2 of 9.2.18,
while 9.3.2 is rc.1.

At the moment, this is a release candidate.

9.3.2-rc.1 (api:genl2/proto:86-101,118-124/transport:21)
--------
 * Use genl pre_doit/post_doit for netlink request setup and teardown
 * Handle recv returning 0 (EOF) in recv_bio
 * Revert flush_send_buffer send error causing state change
 * All fixes from 9.2.18
  - Fix UUID bump for intentional-diskless primary
  - Fix a_lost_peer_is_on_same_cur_uuid after primary restart
  - Fix new-current-uuid --clear to reset all bm_uuid, not just
    currently configured
  - Detect and recover from split-brain at attach
  - Skip new-region resync for zero-guarantee backends at attach
  - Read bitmap before drbd_determine_dev_size during attach
  - Require rs_discard_granularity for day0 no-resync path
  - Fix missing disk line in drbdsetup show while in D_NEGOTIATING state
  - Use two-phase commit for disconnect even without volumes
  - Count detached-but-connected peers as diskless for quorum
  - Fix out-of-bounds access
  - Fix variable dereference before check

https://pkg.linbit.com//downloads/drbd/9/drbd-9.3.2-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/c5a2dd06c122e06d99a1f39e394512e1d8505bdf

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.18-rc.2.tar.gz
https://github.com/LINBIT/drbd/commit/46e5aef8f574a0fe4ea6d89b2406e507788f07d4

cheers,
 Philipp
