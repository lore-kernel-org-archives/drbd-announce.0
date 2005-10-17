Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (213-229-1-138.sdsl-line.inode.at [213.229.1.138])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 158B31431D
	for <drbd-announce@lists.linbit.com>;
	Mon, 17 Oct 2005 18:06:46 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 17 Oct 2005 18:10:16 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200510171810.16884.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7.14.tar.gz
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

0.7.14 (api:77/proto:74)
=2D----
 * Fixed a SMP race condition introduced in 0.7.12, that could cause
   a lockup on a busy node in Primary/SyncSource state.
 * In case a disc failes during a read requests, the read requests
   is reissued to the peer. Now it also tells the peer that the disk
   broke.=20
   Without that fix this bug could cause a resync in the wrong direction
   after a cluster restart.
 * Some improvements to the documentation.

Well, it is a shame, that there was still a problem introduced with=20
that 0.7.12 release.

Users of SMP machines should really really avoid 0.7.13. Now everything
works, but in case you have an outage of one node, it might cause the
primary to freeze during the resync process.

http://oss.linbit.com/drbd/0.7/drbd-0.7.14.tar.gz
http://www.linbit.com/support/drbd-0.7.14/

=2DPhilipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
