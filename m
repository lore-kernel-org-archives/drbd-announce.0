Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (office.linbit [213.229.1.138])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 28E9A1608E
	for <drbd-announce@lists.linbit.com>;
	Tue, 20 Dec 2005 11:34:36 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 20 Dec 2005 11:34:37 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200512201134.37568.philipp.reisner@linbit.com>
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

Hi,

0.7.15 (api:77/proto:74)
=2D----
 * Fixed a bug in the GC code that could cause a resync attempt
   in the wrong direction.
 * Made DRBD's compat_ioctls work with kernels higher than 2.6.14. This
   means DRBD builds on AMD64/x86_64 with 2.6.15 and higher again.
 * drbdadm no longer looks in the current directory for its
   backend programs (=3Ddrbdsetup), but instead looks in the directory
   of the drbdadm executable and in $PATH.
 * Removed the examples from manpage, added a pointer to the HA-wiki.


The first bugfix might sound very critical, but it only affects the=20
situation immediately after the initial sync (that one that is started
with the --do-what-I-say option). In case DRBD gets restarted once=20
the bug no longer gets triggered.

I do not see an urgent need to update your 0.7.14 installations, but
you should use 0.7.15 with new installations of course.

http://oss.linbit.com/drbd/0.7/drbd-0.7.15.tar.gz
http://www.linbit.com/support/drbd-0.7.15/
http://svn.drbd.org/drbd/tags/drbd-0.7.15/

=2DPhilipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
