Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (office.linbit [213.229.1.138])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 4FD4414C2B
	for <drbd-announce@lists.linbit.com>;
	Thu, 20 Apr 2006 14:01:16 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 20 Apr 2006 14:03:13 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200604201403.13969.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0pre3.tar.gz
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

Yet another pre release...

8.0pre3 (api:82/proto:80)
=2D-------
 * Now it works on device mapper (LVM) as well as on "real" block devices.
 * Finally (after years) a sane "drbdadm adjust" implementation, which is
   really really robust.
 * Fixes for 64bit kernel / 32 bit userland environments
 * Fixes in the sys-v init script
 * Renamed "--do-what-I-say" to "--overwrite-data-of-peer". Hopefully
   people now understand what this option does.=20

http://oss.linbit.com/drbd/8.0/drbd-8.0pre3.tar.gz
http://svn.drbd.org/drbd/tags/drbd-8.0pre3/

Happy testing!

=2DPhilipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
