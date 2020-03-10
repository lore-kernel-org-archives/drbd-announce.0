Return-Path: <philipp.reisner@linbit.com>
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 31B2042033E
	for <drbd-announce@lists.linbit.com>;
	Tue, 10 Mar 2020 16:42:26 +0100 (CET)
Received: by mail-qt1-f174.google.com with SMTP id l13so4878052qtv.10
	for <drbd-announce@lists.linbit.com>;
	Tue, 10 Mar 2020 08:42:26 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Tue, 10 Mar 2020 16:35:28 +0100
Message-ID: <CADGDV=Wro37Wfpf+3UXebNY-TTBznZ=vSDZ4SOcbPopf83zt7g@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.22
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

this release has only bug-fixes. Most of the fixed issues are hard
to reproduce. Some are easy to reproduce, you just need the idea
to try exactly that.
Of course, also the test-suite was extended during this cycle.

9.0.22-1 (api:genl2/proto:86-116/transport:14)
--------
 * introduce locking to avoid connection retries when UUIDs or
   relevant flags change during the exchange of this data
 * improve serialization of events after losing a primary
 * fix a constraint in sanitize state that can cause a promote to be
   declined by some other node
 * fix a case of a false positive detection of a split-brain condition
 * allow a resync target to switch to the resync source with less
   bits out of sync
 * fix bitmap UUID after resync to use current UUID from self rather
   than sync source
 * fix pushing bitmap UUID into history when changed
 * fix regression introduced with 9.0.20, that can cause a missed
   resync after a reconciliation resync
 * fix regression introduced with 9.0.20, that can cause a missed
   resync after a promote on a diskless node
 * fix UUID handling in case a node promotes during (a short)
   reconciliation resync
 * fix removing of a diskless node when quorum is enabled

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.22-1.tar.gz
https://github.com/LINBIT/drbd/commit/fe2b59836bdf1c7c81ccbaad8ef8016d9c3ba582

best regards,
 Phil
