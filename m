Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (office.linbit [86.59.100.100])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 25FDB2E3D415
	for <drbd-announce@lists.linbit.com>;
	Fri, 28 Sep 2007 14:15:58 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 28 Sep 2007 14:15:56 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200709281415.56934.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.2.0.tar.gz
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

There are some news!

You probably wonder what happened to 8.1. 8.1 is still around. It
is our code branch that we prepare for the inclusion into mainline
Linux.

In the mean time it became necessary to have a code branch for new
features as well. This is 8.2.

There are no fundamental differences between the 8.x branches so
far. Also we will continue to fix bugs in the 8.0.y branch and
propagate it to the other 8.x branches.

8.0.x   Stable and very conservative release policy.
8.1     Necessary changes to get DRBD into mainline Linux.
8.2.y   New features. Linux-2.6 like development model.

BTW, in 8.2 we also have changes to the on-the-wire DRBD
protocol, but they are done in a backwards compatible way. I.e.
it is possible to connect a drbd-8.0.x to drbd-8.2.x, but the
new "data-integrity-alg" feature only works when both sides
are drbd-8.2.x. (Rolling upgrades possible!)

Here is the changelog entry:

8.2.0 (api:86/proto:86-87)
--------
 * Branch for new features after 8.1 and 8.0. We will do a number of
   features that do not fiddle with the general architecture of DRBD.
   This will be like the the current Linux-2.6 development model.
 * Implemented the data-integrity-alg option. When this is set to
   one of the kernel's hash algorithms, such a hash is shipped with
   every user-data carrying packet. In case user-data is corrupted
   on the network DRBD protests by dropping the connection.

http://svn.drbd.org/drbd/tags/drbd-8.2.0/
http://oss.linbit.com/drbd/8.2/drbd-8.2.0.tar.gz
http://www.linbit.com/support/drbd-8.2.0/ [ not yet there, but soon ]

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
