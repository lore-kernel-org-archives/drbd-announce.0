Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 46977105758B
	for <drbd-announce@lists.linbit.com>;
	Fri, 15 Dec 2017 16:49:06 +0100 (CET)
Received: by mail-wm0-f41.google.com with SMTP id n138so18294346wmg.2
	for <drbd-announce@lists.linbit.com>;
	Fri, 15 Dec 2017 07:49:06 -0800 (PST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 15 Dec 2017 16:49:03 +0100
Message-ID: <2543513.nXB554kqkl@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.10~rc2,
	drbd-utils-9.2.0~rc2 and drbd-8.4.11~rc1
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Hi,

Relative to the rc1:
 - one corner case with the quorum code fixed
 - quorum-minimum-redundancy configure option in the drbd-utils
   package
 - Japanese translations for the man-pages!

still on track to tag the final before X-mas...

Oh, and for drbd-8.4, the only the compat code for upstream-linux
was updated.


Please help testing the release candidate. We intend to release the
final in 7 days from now.

http://www.linbit.com/downloads/drbd/9.0/drbd-9.0.10-0rc2.tar.gz
https://github.com/LINBIT/drbd-9.0/tree/drbd-9.0.10-0rc2

http://www.linbit.com/downloads/drbd/utils/drbd-utils-9.2.0rc2.tar.gz
https://github.com/LINBIT/drbd-utils/tree/ce230bb7c83363f

http://www.linbit.com/downloads/drbd/8.4/drbd-8.4.11-0rc1.tar.gz
https://github.com/LINBIT/drbd-8.4/tree/drbd-8.4.11-0rc1


best regards,
 phil

