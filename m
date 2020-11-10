Return-Path: <philipp.reisner@linbit.com>
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 36FE84205FE
	for <drbd-announce@lists.linbit.com>;
	Tue, 10 Nov 2020 21:50:15 +0100 (CET)
Received: by mail-io1-f54.google.com with SMTP id m9so15733294iox.10
	for <drbd-announce@lists.linbit.com>;
	Tue, 10 Nov 2020 12:50:15 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Tue, 10 Nov 2020 21:50:04 +0100
Message-ID: <CADGDV=XMiXNjs1aao56jhup8MWK+cDF5KojcKzt-r1jHZid7oA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.26-rc1
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

with this release, DRBD becomes compatible with Linux 5.8 and 5.9. Thanks to
the coccinelle based compatibility framework it stays compatible all the
way back to the kernel 2.6.32.
In upstream quite a few things changed for block device drivers, following
all that and staying compatible with the old ones is a noticeable achievement
by Christoph! Thanks!
BTW, we got external contributions. One in the area of Linux 5.8 compatibility
and a bugfix.

This is a release candidate, please help testing it. With this huge change
in the compatibility framework, I ask the community to point out issues with
building DRBD on exotic distributions/kernels you might have.

Changelog:
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
 * fix a corner case where a node ends up Outdated after crash and rejoin
   of a primary node
 * implement 'blockdev --setro' in DRBD
 * following upstream changes to DRBD up to Linux 5.9 and ensure
   compatibility with Linux 5.8 and 5.9

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.26-0rc1.tar.gz
https://github.com/LINBIT/drbd/commit/79b368b143283a898ce65594361f49fcb460b3be

best regards,
 Phil
