Return-Path: <philipp.reisner@linbit.com>
Received: from fat-tyre.localnet (unknown [86.59.100.100])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTPS id 7D637106818D
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 Mar 2009 18:34:58 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 24 Mar 2009 18:34:57 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200903241834.57806.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0.15.tar.gz
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Hi,

8.0.15 (api:86/proto:86)
--------
 * Adding a missing range check in ensure_mdev()
 * Fix for several potential memory leaks when allocating a device (Bugz 135)
 * Fixed error code pathes in request processing (Bugz 149)
 * Fixed an minor issue with the exposed data UUID logic (Bugz 164)
 * Fixed tight attach/detach loops (Bugz 171)
 * Fixed drbdadm adjust, when a running config contains "--discard-my-data" (Bugz 201)
 * Fix stack smashing in drbdmeta
 * Adding a missing range check in ensure_mdev() (Bugz 199)
 * Compatibility with Linux 2.6.27 and 2.6.28

Although it is not explicitly in the (now official) Changelog it also works 
with the recently released Linux 2.6.29.

BTW, drbd-8.3.1 will follow in a few days.

If your DRBD is older than 8.0.8 you have to upgrade!

If your DRBD is older than 8.0.12 you should upgrade.

PS: We already support SLES11

http://oss.linbit.com/drbd/8.0/drbd-8.0.15.tar.gz
http://git.drbd.org/?p=drbd-8.0.git;a=commit;h=drbd-8.0.15
http://www.linbit.com/support/drbd-8.0.15/

-Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

