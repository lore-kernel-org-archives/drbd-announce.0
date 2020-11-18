Return-Path: <philipp.reisner@linbit.com>
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
	[209.85.166.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 51145420373
	for <drbd-announce@lists.linbit.com>;
	Wed, 18 Nov 2020 17:37:58 +0100 (CET)
Received: by mail-io1-f48.google.com with SMTP id s10so2692060ioe.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 18 Nov 2020 08:37:58 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Wed, 18 Nov 2020 17:37:46 +0100
Message-ID: <CADGDV=U7QFAp7ays7X2ETVX5dRQCKBuVkSp=Rjr_=JKJzG8JpA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.26-rc2
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

we had a very busy week. A number of merge-requests got ready. A bug
fix from an external contributor cam in this week. The only issue that
was reported from the -rc1 release was a minor glitch in the compat
layer. That was fixed as well.

I hope it calms down so that we can tag the final next week.

This is a release candidate, please help testing it.

Changelog:
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

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.26-0rc2.tar.gz
https://github.com/LINBIT/drbd/commit/100c1e13813702a52e54cda9d0a011d3b88ac2b6
