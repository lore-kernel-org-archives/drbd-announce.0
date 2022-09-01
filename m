Return-Path: <philipp.reisner@linbit.com>
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com
	[209.85.160.46])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 35995420203
	for <drbd-announce@lists.linbit.com>;
	Thu,  1 Sep 2022 11:51:44 +0200 (CEST)
Received: by mail-oa1-f46.google.com with SMTP id
	586e51a60fabf-11f4e634072so16061682fac.13
	for <drbd-announce@lists.linbit.com>;
	Thu, 01 Sep 2022 02:51:44 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Thu, 1 Sep 2022 11:51:32 +0200
Message-ID: <CADGDV=XiQ_gnbWP6nmTbT1Qva=b_DjRoNc71xxLgfBgJkAo9-g@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.10
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

It happened. There is a regression in drbd-9.1.9 that can cause kernel
crashes. We are releasing drbd-9.1.10 immediately. With just this regression
fixed.

It is one of these cases, where a change interferes with the existing code
in a way that we were not able to see during development and review.
The test-cases did not cover this scenario. Again, we can only react with
adding a test case for this.

This time I am bending the process, and I intentionally omit the RC phase,
to keep adoption of drbd-9.1.9 low.

When you are using protocol A and running drbd-9.1.9 we strongly recommend
upgrading to drbd-9.1.10.

9.1.10 (api:genl2/proto:110-121/transport:17)
--------
 * fix a regression introduced with 9.1.9; using protocol A on SMP
   with heavy IO can might cause kernel crash


https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.10.tar.gz
https://github.com/LINBIT/drbd/commit/9e8102e1117e4ba588072097360928ca3e9f5ce6
