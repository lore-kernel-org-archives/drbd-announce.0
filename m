Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (213-229-1-138.sdsl-line.inode.at [213.229.1.138])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id B10F114FEE
	for <drbd-announce@lists.linbit.com>;
	Thu,  1 Sep 2005 11:02:55 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 1 Sep 2005 11:02:55 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200509011102.55787.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7.13.tar.gz
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

0.7.13 (api:77/proto:74)
=2D----
 * Fixed a SMP race condition that caused the resync process to stall
   after a few seconds to minutes.
 * The sync speed display is replaced by the word "stalled" in case the=20
   syncer makes no progress within 20 seconds.
 * Some improvements to the documentation.

Everyone who uses 0.7.12 is urged to upgrade to 0.7.13.=20
See also the Changelog of 0.7.12=20
http://lists.linbit.com/pipermail/drbd-announce/2005-August/000028.html

=46ind it in the usual places:

http://oss.linbit.com/drbd/0.7/drbd-0.7.13.tar.gz
http://www.linbit.com/support/drbd-0.7.13/

=2Dphilipp

=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
