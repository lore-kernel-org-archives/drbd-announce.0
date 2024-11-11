Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2678A420109
	for <drbd-announce@lists.linbit.com>;
	Mon, 11 Nov 2024 15:44:20 +0100 (CET)
Received: by mail-wm1-f51.google.com with SMTP id
	5b1f17b1804b1-431688d5127so35701365e9.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 11 Nov 2024 06:44:20 -0800 (PST)
Date: Mon, 11 Nov 2024 15:44:18 +0100
Message-Id: <861pzhj0e5.fsf@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.1.23-rc.1 and drbd-9.2.12-rc.1
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
not-yet-released 6.12 kernels.
I intend to branch off a new series (e.g., 9.4.x) soon, and I will no
longer do releases in the 9.1.x branch.
We will discontinue support for RHEL7 kernels (and distros equally
old) with the new branch. We will add performance improvements for the
data path, features for multi-site deployments, and an optionally new
way of doing resyncs.

Please help test the release candidates.


https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.12-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/1eeb1fcfccbabfaf2d22a376c1f1a2a90eda3b2b

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.23-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/19a7625af848b7c310b1707060b00ca0773db109

