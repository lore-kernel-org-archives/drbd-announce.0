Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (office.linbit [213.229.1.138])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id D518D2CDC291
	for <drbd-announce@lists.linbit.com>;
	Tue,  4 Jul 2006 15:48:28 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 4 Jul 2006 15:50:53 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200607041550.54320.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7.20.tar.gz
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

Yet another 0.7 release...

0.7.20 (api:79/proto:74)
=2D----
 * The GC comparison code failed to start a resync in case the two
   cluster node failed simultaneously (common power failure).
 * Fixed DRBD's code to start kernel threads to work on 2.6.17 also.
 * IOCTL return codes fixed for 32bit userland - 64 bit kernel
   setups.
 * New config option "unplug-watermark".
 * Released the drbd_alloc_ee() / drbd_free_ee() implementation from=20
   the DRBD+ branch to the main branch.


In case you use a non default AL size, and both nodes of your
cluster crash simultaneously, DRBD failed to start the resync
of the AL covered areas.

This should alert all users that tuned their al-size, and cause
them to upgrade to 0.7.20.

The "unplug-watermark" is usefull to tune performance for
disk controllers with huge request queues.

http://oss.linbit.com/drbd/0.7/drbd-0.7.20.tar.gz
http://svn.drbd.org/drbd/tags/drbd-0.7.20/
http://www.linbit.com/support/drbd-0.7.20/

=2DPhilipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
