Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (office.linbit [213.229.1.138])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 28D6E16CEC
	for <drbd-announce@lists.linbit.com>;
	Wed, 26 Apr 2006 14:58:50 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 26 Apr 2006 15:00:12 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200604261500.13036.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7.18.tar.gz
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

Although drbd-8.0preX comes along nicely, we also maintain drbd-0.7...

0.7.18 (api:78/proto:74)
=2D----
 * Under high memory pressure it was possible to hit a deadlock=20
   on a kmalloc(). Changed the GFP mask, it is no longer possible to
   deadlock it with memory pressure.
 * With very unlucky network timing during connect DRBD falls into=20
   a connect / drop-connection loop, that as soon as DRBD is in this=20
   loop is very stable. This is fixed now, DRBD detects this situation
   an breaks out of it.
 * Fix to the init-script. Now it waits until udev has created
   the device nodes of _all_ resources.
 * A small fix for the 32bit userland 64bit kernel people, running
   older kernels.
 * Improved handling of IO errors during initial read in of the
   activity log.

Nothing ground shaking but gets the latest bug fixes out of SVN
into an official release.

http://oss.linbit.com/drbd/0.7/drbd-0.7.18.tar.gz
http://svn.drbd.org/drbd/tags/drbd-0.7.18/
http://www.linbit.com/support/drbd-0.7.18/

=2Dphilipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
