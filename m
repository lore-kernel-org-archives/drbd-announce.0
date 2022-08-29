Return-Path: <philipp.reisner@linbit.com>
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id C145B4205FD
	for <drbd-announce@lists.linbit.com>;
	Mon, 29 Aug 2022 13:37:30 +0200 (CEST)
Received: by mail-oi1-f176.google.com with SMTP id t140so9977747oie.8
	for <drbd-announce@lists.linbit.com>;
	Mon, 29 Aug 2022 04:37:30 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 29 Aug 2022 13:37:18 +0200
Message-ID: <CADGDV=Vpb5MTmxPhssZ09=ZjPww2L8AGyt31A5QuBqU5Hbq=sg@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.9
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

during the summer season, we learned that in the progress of following
upstream changes and introducing compatibility code (tests and coccinelle
spatch files) we broke DRBD on partitions on all kernels older than Linux
5.10.

Yes, partitions are handled differently than logic volumes in some details in
the kernel.  As good, old partitioning is still as a thing, this is the main
reason to get a release out in August.

The other fixes are mostly hard to trigger or for exotic configurations or
seldom-performed operations.

9.1.9 (api:genl2/proto:110-121/transport:17)
--------
 * fix a mistake in the compat generation code; it broke DRBD on
   partitions on kernel older than linux 5.10 (this was introduced
   with drbd-9.1.8; not affected: logical volumes)
 * fix for a bug (introduced with drbd-9.0.0), that caused possible
   inconsistencies in the mirror when using the 'resync-after' option
 * fix a bug that could cause a request to get stuck after an unlucky
   timing with a loss of connection
 * close a very small timing window between connect and promote that
   could lead to the new-current-uuid not being transmitted to the
   concurrently connecting peer, which might lead to denied connections
   later on
 * fix a recently introduced OOPS when adding new volumes to a
   connected resource
 * fix online attach when the connection to a 3rd node is down

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.9.tar.gz
https://github.com/LINBIT/drbd/commit/a2b9ca1057069e0dbc7c5322b3c7d611c582b1e6
