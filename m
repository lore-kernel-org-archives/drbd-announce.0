Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (office.linbit [213.229.1.138])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id D283D2CF7154
	for <drbd-announce@lists.linbit.com>;
	Mon,  2 Oct 2006 11:14:52 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 2 Oct 2006 11:14:54 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200610021114.55092.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0pre5.tar.gz
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

The good news are: pre5 is much more stable and usable than any other 8.0=20
prerelease before.

8.0pre5 (api:84/proto:83)
=2D-------
 * The request code was completely rewritten.
 * The write conflict detection code for primary-primary is currently
   broken, but will be fixed soon.
 * drbdsetup is no longer based on IOCTL but works now via=20
   netlink/connector.
 * drbd_panic() is on its way out.
 * A runtime configurable tracing framework got added.
 * A lot of effort was put into finding and fixing bugs.

http://oss.linbit.com/drbd/8.0/drbd-8.0pre5.tar.gz
http://svn.drbd.org/drbd/tags/drbd-8.0pre5/

Happy testing, happy early-adoping ;)

=2DPhilipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
