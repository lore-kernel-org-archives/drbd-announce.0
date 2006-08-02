Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (office.linbit [213.229.1.138])
	(using TLSv1 with cipher EXP1024-RC4-SHA (56/128 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 072F22CE6E4E
	for <drbd-announce@lists.linbit.com>;
	Wed,  2 Aug 2006 11:49:13 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 2 Aug 2006 11:49:14 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200608021149.14996.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7.21.tar.gz
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

Hi There,

After we where pointed at the "syncer stalled" after reconnect symptom.
Lars tested disconnect/reconnect in a tight loop. This brought up
some issues, we fixed.

0.7.21 (api:79/proto:74)
=2D----
 * Fixed the "syncer stalled" after reconnect symptom.
 * Fixed the "stalled in WFParams" after reconnect symptom. The cause
   of this bug was actually a misuse of the data socket.
 * Allow to set the uplug_watermark to 1, only usefull for very strange
   cases.

This makes DRBD to cause no troubles, in case the replication link
is badly broken...=20

http://oss.linbit.com/drbd/0.7/drbd-0.7.21.tar.gz
http://svn.drbd.org/drbd/tags/drbd-0.7.21/
http://www.linbit.com/support/drbd-0.7.21/ (completed in about 2 hours)

=2DPhilipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
