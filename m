Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (unknown [86.59.100.100])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id CC3C12D9DB69
	for <drbd-announce@lists.linbit.com>;
	Wed, 17 Jan 2007 18:22:23 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 17 Jan 2007 18:22:24 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200701171822.24967.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0rc2.tar.gz
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

I expect that this _is_ the last release candidate of drbd-8.0

8.0rc2 (api:86/proto:86)
--------
 * Added the well known automagiacally adjust drbd_config.h to
   make drbd compile on every by vendor's backports defaced 
   kernel. ( Linux-2.6.x only of course )
 * Fixed races with starting and finishing resync processes 
   while heavy application IO is going on.
 * Ported DRBD to the new crypto API (and added a emulation of the
   now API on top of the old one for older 2.6.x kernels)
 * Code to perform better on ethernet networks with jumbo
   frames.
 * Bugfixes to our request code (race conditions).
 * Every error code that is returned by drbdsetup has a 
   textual description by now.

http://oss.linbit.com/drbd/8.0/drbd-8.0rc2.tar.gz
http://svn.drbd.org/drbd/tags/drbd-8.0rc2/

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
