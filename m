Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (office.linbit [213.229.1.138])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 157D916190
	for <drbd-announce@lists.linbit.com>;
	Thu,  6 Apr 2006 18:59:38 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 6 Apr 2006 19:00:22 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200604061900.22891.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0-pre2.tar.gz
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

Again an 8.0 pre release. There where _no_ actual bug reports
for the first pre release, so this release has no actual
bug fixes, only smoothing the rough edges:

8.0-pre2 (api:81/proto:80)
=2D-------
 * removed the "on-disconnect" and "split-brain-fix" config options and
   added the "fencing" config option instead.
 * Updated all manpages to cover drbd-8.0
 * /proc/drbd shows the whole drbd_state_t, as well the logging of state
   changes shows every field of drbd_state_t now.
 * Deactivated most of the TCQ code for now, since it changed again
   in the mainline kernel.
 * Minor other fixes.

http://usage.drbd.org sais that drbd-8.0_pre1 was installed on=20
27 nodes. Most amusing is that it is an odd number ;)

http://oss.linbit.com/drbd/8.0/drbd-8.0-pre2.tar.gz
http://svn.drbd.org/drbd/tags/drbd-8.0-pre2/

=2Dphilipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
