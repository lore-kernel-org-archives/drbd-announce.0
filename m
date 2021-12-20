Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id CBA0E4203D8
	for <drbd-announce@lists.linbit.com>;
	Mon, 20 Dec 2021 16:28:01 +0100 (CET)
Received: by mail-wm1-f51.google.com with SMTP id
	b186-20020a1c1bc3000000b00345734afe78so162199wmb.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 20 Dec 2021 07:28:01 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 20 Dec 2021 16:27:49 +0100
Message-ID: <CADGDV=UEyEi0HXiQqXnJOOSL3siodamXGb0GQOufOD1gqDiccA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.2.0-rc.3
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

and here is the 3rd release candidate for drbd-9.2.0

It turned out that in the new coordination between resync and
application IOs a corner case was not properly considered. Fixed and
tested this, now we are turning back to the community and asking you
if you find a way to break it.

We wish you a Merry Christmas and a Happy New Year!

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.0-rc.3.tar.gz

best regards,
 Phil
