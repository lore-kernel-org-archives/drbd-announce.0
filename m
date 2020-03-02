Return-Path: <philipp.reisner@linbit.com>
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id F2F5F420177
	for <drbd-announce@lists.linbit.com>;
	Mon,  2 Mar 2020 17:31:09 +0100 (CET)
Received: by mail-qt1-f173.google.com with SMTP id e20so382175qto.5
	for <drbd-announce@lists.linbit.com>;
	Mon, 02 Mar 2020 08:31:09 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 2 Mar 2020 16:32:31 +0100
Message-ID: <CADGDV=XztsMrOuPTbpU1QtW7MEzBGEb3Wtwh4X08e00fRD_e3g@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.22-0rc1
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

It is just a number of smaller bug-fixes. No single one that I want to point
out.

Please help testing this release candidate.

9.0.22-0rc1 (api:genl2/proto:86-116/transport:14)
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

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.22-0rc1.tar.gz
https://github.com/LINBIT/drbd/commit/a48aa832f8ab7ccddd735eafdd77b152ce48135f

best regards,
 phil
