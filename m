Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (unknown [81.16.158.130])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 8C11A2E08432
	for <drbd-announce@lists.linbit.com>;
	Fri, 19 Oct 2007 15:09:45 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 19 Oct 2007 15:09:44 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200710191509.44515.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7.25.tar.gz, ond of life of 0.7 and GIT
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

HI,

First of all there is the last planed 0.7 release.

0.7.25 (api:79/proto:74)
-----
 * Made it to compile on Linux-2.4 again.
 * Backported a fix to not deadlock on 2.6.22 and later.

We will not backport any futher things down to the 0.7 branch.
We will do another 0.7 release only in case a bug in 0.7.25
needs to be fixed.

Support for DRBD-0.7 with our commercial support offerings will 
continue until 2008-10-31. All users of drbd-0.7 are requested
to upgrade to drbd-8 before that date.

Your choices are drbd-8.0.x (currently 8.0.6),
and drbd-8.2.x (currently 8.2.0).

8.0 will only receive bug fixes, while 8.2 will also get new
features with future releases.

http://oss.linbit.com/drbd/0.7/drbd-0.7.25.tar.gz
http://www.linbit.com/support/drbd-0.7.25/

You might noticed that there is no SVN tag url for that release.

We switched from subversion to git. At http://www.drbd.org/latest.html 
you can read how to get DRBD's source out of our git repository.

-phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
