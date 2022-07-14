Return-Path: <philipp.reisner@linbit.com>
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com
	[209.85.128.182])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 349A342097E
	for <drbd-announce@lists.linbit.com>;
	Thu, 14 Jul 2022 17:40:02 +0200 (CEST)
Received: by mail-yw1-f182.google.com with SMTP id
	00721157ae682-31c9b70c382so21071857b3.6
	for <drbd-announce@lists.linbit.com>;
	Thu, 14 Jul 2022 08:40:02 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Thu, 14 Jul 2022 17:39:50 +0200
Message-ID: <CADGDV=V_ODJ6oHdm6tx6Ja_3ftwxTzfms6nD3Am8339YGJMOmQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.8
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

Hello DRBD users,

Here is the final drbd-9.1.8 release. Another rc in the 9.2 series will
follow next week.
With this release we restored the protocol compatibility with drbd-8.4. The
reason behind this is that we want to discontinue drbd-9.0. Since upstream
Linux still contains drbd-8.4 we want to have our active branches protocol
compatible with 8.4. Next step for the upstream journey is to build
the CI pipeline for an in-tree DRBD.
In the one week of release candidate state, we got aware of one issue
that is actually a regression in drbd-9.1.7. It is about re-integrating
a node with a backing disk to a diskless primary node.

9.1.8 (api:genl2/proto:110-121/transport:17)
--------
 * restore protocol compatibility with drbd-8.4
 * detect peers that died silently when starting a two-phase-commit
 * correctly abort two-phase-commits when a connection breaks between
   phases 1 and 2
 * allow re-connect to a node that was forced into secondary role and
   where an opener is still present from the last time it was primary
 * fix a race condition that allowed to configure two peers with the
   same node id
 * ensure that an open() call fails within the auto-promote timeout
   if it can not succeed
 * build fixes for RHEL9
 * following upstream changes to DRBD up to Linux 5.17 and updated compat

https://github.com/LINBIT/drbd/commit/2240f77a45d20474f1fd0e187fd4e3e876f5726c
https://pkg.linbit.com/downloads/drbd/9/drbd-9.1.8.tar.gz
