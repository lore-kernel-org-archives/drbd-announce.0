Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (office.linbit [213.229.1.138])
	(using TLSv1 with cipher EXP1024-RC4-SHA (56/128 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id AFD932CE6AC2
	for <drbd-announce@lists.linbit.com>;
	Mon, 31 Jul 2006 16:41:02 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 31 Jul 2006 16:41:04 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200607311641.05332.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0pre4.tar.gz
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


The DRBD-8.0 code was under massive change again. Since bug-reports for
pre3 are completely useless by now, it is time for a new pre release.

8.0pre4 (api:83/proto:82)
=2D-------
 * Added the "drbd-peer-outdater" heartbeat plugin.
 * New ("cluster wide") state changes. (Cluster wide serialisation of
   major state changes, like becoming primary, invalidating a disk etc...)
 * Write requests are now sent by the worker instead out of the process's
   context that calls make_request().
 * The worker thread no longer gets restarted upon loss of connection.
 * A testsuite developed by students of 'FH Hagenberg' was added.

Hopefully we really get into freezing the code base, and preparing a=20
stable release of drbd 8.0

http://oss.linbit.com/drbd/8.0/drbd-8.0pre4.tar.gz
http://svn.drbd.org/drbd/tags/drbd-8.0pre4/

Please do:
 * stress tests
    IO pressure, memory pressure etc...

 * coverage tests
    Try to test all possible failure and recovery scenarios.

 * Performance comparison tests between drbd-0.7.x and drbd-8.0.x

 * Put OCFS2 / GFS on top of it (still untested from my side)

Please send _usefull_ reports to drbd-dev@lists.linbit.com . Please note
that that list is moderated, and we try to keep the traffic there
quite low.

Send random observations regarding DRBD-8 to drbd-user@lists.linbit.com

Thanks!
=2DPhilipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
