Return-Path: <philipp.reisner@linbit.com>
Received: from amd.localdomain (chello080108092198.22.11.tuwien.teleweb.at
	[80.108.92.198])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 2F2262E0373D
	for <drbd-announce@lists.linbit.com>;
	Mon,  7 May 2007 20:05:44 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 7 May 2007 20:05:52 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200705072005.52664.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0.3.tar.gz
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

Hi there,

Although it seems to be quite hard to trigger these race conditions,
you are for sure better off if you have a DRBD release with these fixes 
on your production clusters...

8.0.3 (api:86/proto:86)
--------
 * Fixed a race condition that could cause us to continue to traverse a bio
   after it was freed. (led to an OOPS)
 * Fixed a race condition that could cause us to use members of an ee, after
   it was freed. (led to various weirdness)
 * Language fixes for the man pages.
 * The drbdsetup commands (events, wait-connect,...) release the lock now.
 * Minor fixes and updates to the user land tools and to the peer outdater.

http://oss.linbit.com/drbd/8.0/drbd-8.0.3.tar.gz
http://www.linbit.com/support/drbd-8.0.3/
http://svn.drbd.org/drbd/tags/drbd-8.0.3/

-Phil
