Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (office.linbit [213.229.1.138])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 693662D99A19
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 Oct 2006 15:08:49 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 24 Oct 2006 15:08:48 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200610241508.49069.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7.22.tar.gz
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

Hi,=20

While working on drbd-8.0 and rewriting a lot of stuff there,
we noticed a bug in the previous handling of protocol A and B.

In case you are using protocol A or B you should upgrade
to this version !

0.7.22 (api:79/proto:74)
=2D----
 * Fixed bugs in the implementation of protocol A and B.
   we noticed that in protocol A and B, on connection loss,
   we could "forget" to set certain areas out of sync.
   so resync in those protocol has been broken all along!
 * Fix races between failure in drbd_send_dblock
   and concurrently running tl_clear
 * Fix potential access-afer-free in drbd_dio_end
 * Fix possible list corruption respective resulting deadlock in=20
   receive_DataRequest
 * Improved the drbd_thread_stop / start code
 * Gracefull removal of devfs and other updates.
 * Implemented the "freeze_io" option for "on-disconnect"

http://oss.linbit.com/drbd/0.7/drbd-0.7.22.tar.gz
http://www.linbit.com/support/drbd-0.7.22/
http://svn.drbd.org/drbd/tags/drbd-0.7.22/

=2DPhil
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
