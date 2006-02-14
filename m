Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (office.linbit [213.229.1.138])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 82833162E2
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Feb 2006 11:15:38 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 14 Feb 2006 11:24:21 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200602141124.22231.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7.16.tar.gz
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

0.7.16 (api:77/proto:74)
=2D----
 * DRBD no longer shrinks an consistent device if it gets connected to
   an smaller peer or attached to a smaller disk.
 * There was a bug related to the degr-wcf-timeout config option, it was
   never used in recent DRBD releases. Fixed.
 * Made DRBD work with Neil Brown's patch, that serializes recusive
   calls to generic_make_request(). FC4 included that patch in its
   later kernels.
 * Minor fixes to drbdadm
 * Compiles now also with Linux-2.6.16-rc1
 * Updates to documentation and example config file to make it more
   clear that we talk about byte/second and not bit/second.

   One could say this release happened to bring an end to all the
   'DBRD freezes on FC4 with the latest kernel' mails on the list ;)

Seriously, there was also a rather critical bug in the way DRBD
determines the size of its devices fixed. During normal operation
everything works as expected.
But when a disk crashes and you replace that one with a smaller one
accidentally, DRBD shrunk its device to the new constrains with
the past releases.=20
Staring with this release DRBD will simply refuse to accept a too small
disk to a consistent degraded cluster node.

http://oss.linbit.com/drbd/0.7/drbd-0.7.16.tar.gz
http://www.linbit.com/support/drbd-0.7.16
http://svn.drbd.org/drbd/tags/drbd-0.7.16

Philipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
