Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr0-f176.google.com (mail-wr0-f176.google.com
	[209.85.128.176])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 99103105630C
	for <drbd-announce@lists.linbit.com>;
	Mon, 12 Jun 2017 17:25:57 +0200 (CEST)
Received: by mail-wr0-f176.google.com with SMTP id v111so101374463wrc.3
	for <drbd-announce@lists.linbit.com>;
	Mon, 12 Jun 2017 08:25:57 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 12 Jun 2017 17:20:38 +0200
Message-ID: <4212903.tzomkRvtXs@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.8rc2
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

This time testers where more active than usual. All the brought
up issues where _not_ regressions of the current cycle.

So, again, the call for all testers: Let us know if there is
anything that needs to be fixed before the 9.0.8 release.


9.0.8rc2-1 (api:genl2/proto:86-112/transport:14)
--------
 * fix attach of first disk after resource had no disk at all
 * fix a OOPS on a diskfull node when a request from a diskless
   node causes an error from the back-end device. (This is a regression that
   was introduced with the 9.0.7 release)
 * Serialize reconciliation resync after the nodes found it if they
   are UpToDate

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.8rc2-1.tar.gz
http://git.drbd.org/drbd-9.0.git/tag/refs/tags/drbd-9.0.8rc2
