Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (office.linbit [213.229.1.138])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 7190215EA7
	for <drbd-announce@lists.linbit.com>;
	Wed,  8 Mar 2006 15:20:13 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 8 Mar 2006 15:22:31 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200603081522.32176.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7.17.tar.gz
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

0.7.17 (api:77/proto:74)
=2D----
 * There was a bug that could cause the activity log to be not applied=20
   after a primary crash, when an other size than 127 elements was configur=
ed.
 * There was a bug in the activity log code, that could cause that the
   latest update to the AL is omitted at recovery time.
 * The "Marked additional XXKB as out-of-synced based on AL." message
   showed one one eighth of the real amount, fixed.

These are serious flaws in DRBD. Altough the probability to hit by
one of these bugs is not high, and they are only of interest
when you had a primary crash.=20

But if you are hit by one of these bugs a few data blocks
might be out of sync on your mirror pair!

1. You should upgrade.
2. If you ever had a crash of your primary node in your cluster you=20
   should do a full sync now.

http://oss.linbit.com/drbd/0.7/drbd-0.7.17.tar.gz
http://www.linbit.com/support/drbd-0.7.17/
http://svn.drbd.org/drbd/tags/drbd-0.7.17/

=2DPhilipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
