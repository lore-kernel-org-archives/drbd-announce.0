Return-Path: <philipp.reisner@linbit.com>
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com
	[209.85.128.180])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 7F34B4201D4
	for <drbd-announce@lists.linbit.com>;
	Wed,  6 Jul 2022 23:49:58 +0200 (CEST)
Received: by mail-yw1-f180.google.com with SMTP id
	00721157ae682-2ef5380669cso153066027b3.9
	for <drbd-announce@lists.linbit.com>;
	Wed, 06 Jul 2022 14:49:58 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Wed, 6 Jul 2022 23:49:46 +0200
Message-ID: <CADGDV=Xn9XGien9uQN4jdC9nbp1Z7BcjVtqMU5c5eQrXWh52+Q@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.8-rc.1 & drbd-9.2.0-rc.6
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

Announcing the parallel release of drbd-9.1.8-rc.1 and drbd-9.2.0-rc.6. In both
you will find that we restored the protocol compatibility with drbd-8.4. The
reason behind this is that we want to discontinue drbd-9.0. Since upstream
Linux still contains drbd-8.4 we want to have our active branches protocol
compatible with 8.4.  I consider the fixes in the 9.1 branch as boring
details. I think that is good news.
That gave us a little time to re-focus on the drbd-9.2 branch. With the rc.6
(yes, I am skipping rc.5) the known regressions since 9.1 got fixed. Another
advantage over drbd-9.1 is the merging of discard requests during a resync.
This can make a considerable difference. E.g. with ZFS as a backend, the
resync works on a granularity of 8K. In case we are resyncing large areas
of an empty volume DBRD issued many sequential 8K discard requests. ZFS
limits the number of discard requests it processes. With the new code, DRBD
will merge these 8K requests into bigger requests of 128MiByte. With that,
the resync speed rises from 20MiByte/sec to 660MiBytes/sec in my test
VMs.

Please help testing these release candidates.

9.1.8-rc.1 (api:genl2/proto:110-121/transport:17)
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

https://github.com/LINBIT/drbd/commit/34a655ba957f25d05ad8bb88f5d3dc408b50bd9a
https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.8-rc.1.tar.gz

9.2.0-rc.6 (api:genl2/proto:110-121/transport:18)
--------
 * fixes to the new way of coordinating resync and application IO
 * merge discard requests during resync on a resync target node;
   This can speed up the resync progress by multiple orders of magnitude
 * Merged changes from the 9.1.8 release
  - restore protocol compatibility with drbd-8.4
  - detect peers that died silently when starting a two-phase-commit
  - correctly abort two-phase-commits when a connection breaks between
    phases 1 and 2
  - allow re-connect to a node that was forced into secondary role and
    where an opener is still present from the last time it was primary
  - fix a race condition that allowed to configure two peers with the
    same node id
  - ensure that an open() call fails within the auto-promote timeout
    if it can not succeed
  - build fixes for RHEL9
  - following upstream changes to DRBD up to Linux 5.17 and updated compat

https://github.com/LINBIT/drbd/commit/abf3d0c948e8e2671db03efc8fc22454219e6480
https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.0-rc.6.tar.gz
