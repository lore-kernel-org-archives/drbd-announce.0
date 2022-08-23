Return-Path: <philipp.reisner@linbit.com>
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
	[209.85.210.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 9FC11420643
	for <drbd-announce@lists.linbit.com>;
	Tue, 23 Aug 2022 15:48:08 +0200 (CEST)
Received: by mail-ot1-f53.google.com with SMTP id
	h20-20020a056830165400b00638ac7ddba5so9822793otr.4
	for <drbd-announce@lists.linbit.com>;
	Tue, 23 Aug 2022 06:48:08 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Tue, 23 Aug 2022 15:46:56 +0200
Message-ID: <CADGDV=Xu8ubutDy8aB4LbFYcM78yc1qdB4d3f_w33vN-rqdfVA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.9-rc.1
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

This is a release candidate, please help test it.

9.1.9-rc.1 (api:genl2/proto:110-121/transport:17)
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

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.9-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/5b458b1a5ca74bec2ce498f5ad29a9bd0e7b4ad2
