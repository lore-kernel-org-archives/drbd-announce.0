Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (office.linbit [213.229.1.138])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id B1F742EFF7
	for <drbd-announce@lists.linbit.com>;
	Wed, 24 May 2006 14:35:18 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 24 May 2006 14:37:12 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200605241437.12609.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7.19.tar.gz
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

And an other maintenance release...

0.7.19 (api:78/proto:74)
=2D----
 * Fixed a bug where lc_del() left a list poison in an LRU chache's
   hash table. The only way to trigger this bug was:
   up (>>200M), primary, mkfs, resize to 200M, down, up
 * DRBD now propagates the backing storage's read ahead properties
   to upper layers. With devices that read very fast, this is=20
   important.
 * GFP_KERNEL was changed to GFP_NOIO in a few places, to make it
   more save against deadlocks in the memory subsystem.

The trigger for this release to happen was the enormous difference
in read performance we experienced at a customer's site.

  With some nice hardware the system there achieved 320MB/sec=20
  read performance. With drbd-0.7.18 on top of DRBD we got only
  about 70MB/sec read performance, while with that modification
  in 0.7.19 we can get the whole 320MB/sec out of DRBD as well.

http://oss.linbit.com/drbd/0.7/drbd-0.7.19.tar.gz
http://svn.drbd.org/drbd/tags/drbd-0.7.19/
http://www.linbit.com/support/drbd-0.7.19/

=2DPhilipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
