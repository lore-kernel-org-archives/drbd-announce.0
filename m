Return-Path: <philipp.reisner@linbit.com>
Received: from [10.9.9.50] (213-229-1-138.sdsl-line.inode.at [213.229.1.138])
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 4AE8D14362
	for <drbd-announce@lists.linbit.com>;
	Mon, 20 Jun 2005 11:30:33 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 20 Jun 2005 11:30:34 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200506201130.34588.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7.11.tar.gz
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

By the beginning of June I realized that there was no DRBD release in the=20
last 4 month, people could get the impression that the development stalled.
This is not the case! There were just no bugs in 0.7.10 that triggered the
release of 0.7.11 . So here is a "time triggered" release:

0.7.11 (api:77/proto:74)
=2D----
 * The upper limit of the runtime tuning parameter max_buffers
   was ways too low for today's IBM storage controllers.
   Was 32 - 10000 ; Now it is 32 - 131072 ( Now one could
   allow DRBD to allocate up to half a gigabyte of memory as
   receive buffers)
 * A fix to the Makefiles to make building of RPMs work on RAHS4.
 * A workaround to have DBRD running on PPC64 with Linux-2.4.x kernels,
   on Linux-2.6.x everything was fine already.
 * Removal of dead code (busy_blocks).
 * LINBIT drbd rpms now conflict with km_drbd
   (SuSE's kernel module source hook)
 * possibly existing /lib/modules/*/extra/drbd.ko are renamed to .orig in t=
he
   post-install scripts to avoid conflicts with existing modules from
   distribution kernel packages
 * fixed flex input buffer overflow
   drbdadm_scanner.fl produced tokens of arbitrary length due to excessive =
use
   of "+" and "*" modifiers. Now these are replaced with "{x,y}" modifiers,=
 so
   it should no longer segfault, which was actually observed e.g. with long
   continuous comment blocks (~5k).

No need to upgrade for you in case you are happy with 0.7.10.
=46or new systems please use "seven-eleven".

  http://oss.linbit.com/drbd/0.7/drbd-0.7.11.tar.gz
  http://www.linbit.com/support/drbd-0.7.11/

BTW, It was tagged and packaged by Lars on the 8th of June.=20

 Philipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
