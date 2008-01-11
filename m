Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (unknown [81.16.158.130])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 675BD2E11332
	for <drbd-announce@lists.linbit.com>;
	Fri, 11 Jan 2008 16:49:45 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 11 Jan 2008 16:49:44 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200801111649.44501.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.2.4.tar.gz
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

8.2.4 (api:86/proto:86-88)
--------
 * Fixed the online-verify and data-integrity-alg features.
   While preparing DRBD for Linux-2.6.24 a bug was introduced
   that rendered most digest based functionality in DRBD useless.

You do not need to upgrade from 8.2.3 in case you do not want
to use online-verify. 
If you want to use online-verify or the data-integrity feature
you have to upgrade, because they do not work in 8.2.3 and will
never ever find or report any inconsistencies or data transmission
corruptions.

Well, yes. We have heard of release candidates, and now the time
has come for us jump onto this bandwagon... ;)

http://oss.linbit.com/drbd/8.2/drbd-8.2.4.tar.gz
http://git.drbd.org/?p=drbd-8.2.git;a=tag;h=drbd-8.2.4
http://www.linbit.com/support/

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
