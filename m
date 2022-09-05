Return-Path: <philipp.reisner@linbit.com>
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
	[209.85.210.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E0F51420667
	for <drbd-announce@lists.linbit.com>;
	Mon,  5 Sep 2022 09:37:44 +0200 (CEST)
Received: by mail-ot1-f53.google.com with SMTP id
	h20-20020a056830165400b00638ac7ddba5so5669919otr.4
	for <drbd-announce@lists.linbit.com>;
	Mon, 05 Sep 2022 00:37:44 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 5 Sep 2022 09:37:32 +0200
Message-ID: <CADGDV=WVa9Dak4hejBrwP85u-7tj+cySjerfADvWLA9eOxJ0Ow@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.11
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

The fix for the request processing that was quickly released with drbd-9.1.10,
created another problem in the request processing code. This other problem is
only reproducibly by us when we artificially delay a CPU thread by
instrumenting the code.
This bug in the request processing code can again lead to kernel crashes.

This last week gives us a lot of homework on how to cover the request
processing code better in our automated tests.

Again, a quick release to get the 9.1.x branch into a general usable state.


9.1.11 (api:genl2/proto:110-121/transport:17)
--------
 * The change introduced with 9.1.10 created another problem that might
   lead to premature request completion (kernel crash); reverted that
   change and fix it in another way

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.11.tar.gz
https://github.com/LINBIT/drbd/commit/ba3a5505c843e1dae30f8307ce918f24255e0dad
