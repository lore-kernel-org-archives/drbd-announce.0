Return-Path: <philipp.reisner@linbit.com>
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
	[209.85.167.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 0B5884202BF
	for <drbd-announce@lists.linbit.com>;
	Tue, 23 Apr 2024 18:20:56 +0200 (CEST)
Received: by mail-lf1-f53.google.com with SMTP id
	2adb3069b0e04-51abf1a9332so5966044e87.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 23 Apr 2024 09:20:56 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.1.20-rc.1 and drbd-9.2.9-rc.1
Date: Tue, 23 Apr 2024 18:20:36 +0200
Message-ID: <86sezcdp9n.fsf@linbit.com>
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

In this development cycle, we had two bug reports worth mentioning. One
was about a perplexing kernel crash stack trace. Fortunately, the
customer, who runs a big fleet of DRBD nodes, could reproduce it and
produce a kernel crash dump of this crash.

Joel and I took it as a challenge to decode the puzzle. With joint
brains, we examined a "partly overwritten" malloc()'d object. We were
able to reconstruct what happened and found the bug.

After finding the bug, I looked at the git history to understand how we
introduced that bug.

These bugs increasingly stem from an unintended interaction of two
developers' changes. Leaving us with the learning, utmost clarity of
interfaces, naming of locks and data structures, and clear expression
intention is key for avoiding such bugs in the future.

The Kubernetes CSI driver triggered the other crash in DRBD
(sometimes). The reason was that it downed resources in an unusual way
by deleting all minors first. Fixing that was, fortunately, a lot less
effort than the other one.

It will be welcome news for Ubuntu users that we tested heavily with the
upcoming Ubuntu-24.04 ("Noble") release. Besides updating the kernel
compat for Linux-6.8, we have noticed that the newer kernel delivers
netlink packets out-of-order more often. We use these netlink packets to
deliver information for drbd-kernel-driver to user-space. If you use
drbd-reactor or LINSTOR on Ubuntu Noble, you need to use drbd-utils
9.28.0 (or newer) to get a drbdsetup that brings out-of-order netlink
packets back into sequence.

This is a release candidate. Please help test it.

9.2.9-rc.1 (api:genl2/proto:86-122/transport:19)
--------
 * Allow resync operations between secondaries if the sync source is
   not connected with the primary node
 * Changes merged from 9.1.20
  - Fix a kernel crash that is sometimes triggered when downing drbd
    resources in a specific, unusual order (was triggered by the
    Kubernetes CSI driver)
  - Fix a rarely triggering kernel crash upon adding paths to a
    connection by rehauling the path lists' locking
  - Fix the continuation of an interrupted initial resync
  - Fix the state engine so that an incapable primary does not outdate
    indirectly reachable secondary nodes
  - Fix a logic bug that caused drbd to pretend that a peer's disk is
    outdated when doing a manual disconnect on a down connection; with
    that cured impact on fencing and quorum.
  - Fix forceful demotion of suspended devices
  - Rehaul of the build system to apply compatibility patches out of
    place that allows one to build for different target kernels from a
    single drbd source tree
  - Updated compability code for Linux 6.8

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.9-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/c300e9c998d1b49475d0c797e8edab2f270448ab

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.20-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/87069b782e991c08e06fe01e775d48ec26bca076

