Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 7E22D4203C9
	for <drbd-announce@lists.linbit.com>;
	Tue,  5 Oct 2021 19:39:52 +0200 (CEST)
Received: by mail-wr1-f47.google.com with SMTP id k7so36716wrd.13
	for <drbd-announce@lists.linbit.com>;
	Tue, 05 Oct 2021 10:39:52 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Tue, 5 Oct 2021 19:39:38 +0200
Message-ID: <CADGDV=WOHvDc+Rep_3q19FGiMTxgf2vskOW+uMCWsSXksZSyWQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] DRBD-9.0.31-1 & drbd-9.1.4
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

no show-stopper came up last week, so here is the final release.

Many of the fixes are fixes to specific corner cases.

A noticeable change is that the "--discard-my-data" flag (it is an
option to the connect command) was changed. So far it was only used to
express how a split-brain situation should be resolved. From now on
the user can use this flag to force the resync direction (within some
constraints).
E.g. DRBD will not allow you to overwrite UpToDate or Consistent data
with Inconsistent data.

PS: It is a good time to switch or plan your switch to the 9.1.x releases.
We plan to discontinue the regular releases of 9.0.x at the end of the Year.

9.0.31-1 (api:genl2/proto:86-121/transport:14)
--------
 * fix a possible call of NULL, a regression introduced with 9.0.26
 * fix a corner case in aborting an connect 2-phase-commit
 * fix detection of crashed primaries
 * fix resync decisions for crashed primaries in protocol A
 * protect resync decisions against changes of the local UUIDs
 * fix corner case that led to an endless loop logged
   with "Retrying drbd_rs_del_all() later. refcnt=..."
 * fix to resync after connecting to a diskless primary
 * do not clear bitmap between inconsistent nodes
 * add missing initializer for a resize 2-phase-commit
 * reject size increase from diskless nodes if there are size-limiting peers
 * remove queuing of 2-phare-commits; reduce complexity
 * allow reverting resync direction by the '--discard-my-data' option
 * new rr-conflict strategy called 'auto-discard'

9.1.4 (api:genl2/proto:110-121/transport:17)
--------
 * merged all changes from drbd-9.0.31-0rc1
 * enabled dynamic debug on some additional log messages
 * remove (broken) write conflict resolution, replace it with warning
   about the fact
 * debugfs entry for the interval tree

https://pkg.linbit.com//downloads/drbd/9.0/drbd-9.0.31-1.tar.gz
https://github.com/LINBIT/drbd/commit/7f138e7493f1e16cb10e2379b10fbd05f9466e7d

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.4.tar.gz
https://github.com/LINBIT/drbd/commit/e4de25c3a65811b0fa4733b1c2a000ee322f5cfa
