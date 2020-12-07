Return-Path: <philipp.reisner@linbit.com>
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id EC02342061D
	for <drbd-announce@lists.linbit.com>;
	Mon,  7 Dec 2020 17:39:06 +0100 (CET)
Received: by mail-io1-f53.google.com with SMTP id i9so14006145ioo.2
	for <drbd-announce@lists.linbit.com>;
	Mon, 07 Dec 2020 08:39:06 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 7 Dec 2020 17:38:54 +0100
Message-ID: <CADGDV=WNgrhm110Ehe6x33pHs0VjB7Ms+u57k5_t6B-Y=js+4w@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.26-rc3
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

It is time for a rc3, rc2 is already nearly 3 weeks old!

We were very busy ironing out details with the state engine for strate
transitions when nodes establish a connection. Well, two partitions
join. It looks really good now. A new test tortures it in a way we
never tested it before. I am convinced that we have put an end to an
entire class of bugs.

While doing this two patches reached us that aim to cure possible
sources for inconsistencies in mirroring the data. One of those got
merged, the other one is still under investigation. We will take the
time that is necessary to fully understand that and have a proper fix
in place.

This is a release candidate, please help testing it.

Changelog:
9.0.26-0rc3 (api:genl2/proto:86-118/transport:14)
--------
 * fix for writes not getting mirrored over a connection while the primary
   transitions through the WFBitMapS state
 * completed missing logic of the new two-phase-commit based connect process;
   avoid connecting partitions with a primary in each; ensure consistent
   decisions if the connect attempt will be retried

9.0.26-0rc2 (api:genl2/proto:86-118/transport:14)
--------
 * fix a crash if during resync a discard operation fails on the
   resync-target node
 * fix online verify to not clamp disk states to UpToDate
 * fix promoting resync-target nodes; the problem was that it could modify
   the bitmap of an ongoing resync; which leads to alarming log messages
 * pause a resync if the sync-source node becomes inconsistent; an example
   is a cascading resync where the upstream resync aborts and leaves the
   sync-source node for the downstream resync with an inconsistent disk;
   note, the node at the end of the chain could still have an outdated disk
   (better than inconsistent)
 * allow force primary on a sync-target node by breaking the resync
 * minor fixes to the compat tests

9.0.26-0rc1 (api:genl2/proto:86-118/transport:14)
--------
 * fix a case of a disk unexpectedly becoming Outdated by moving the
   exchange of the initial packets into the body of the two-phase-commit
   that happens at a connect
 * fix adding of new volumes to resources with a primary node
 * reliably detect split brain situation on both nodes
 * fix an unexpected occurrence of NetworkFailure state in a tight
   drbdsetup disconnect; drbdsetup connect sequence
 * fix online verify to return to Established from VerifyS if the VerifyT node
   was temporarily Inconsistent during the run
 * fix a corner case where a node ends up Outdated after the crash and rejoin
   of a primary node
 * implement 'blockdev --setro' in DRBD
 * following upstream changes to DRBD up to Linux 5.9 and ensure
   compatibility with Linux 5.8 and 5.9

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.26-0rc3.tar.gz
https://github.com/LINBIT/drbd/commit/9114a0383f72b87610cd9ee282676cf94213da5b
