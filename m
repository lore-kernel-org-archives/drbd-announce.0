Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (office.linbit [213.229.1.138])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 232AC2D9E3BE
	for <drbd-announce@lists.linbit.com>;
	Fri,  3 Nov 2006 15:46:06 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 3 Nov 2006 15:46:07 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200611031546.07875.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0pre6.tar.gz
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

Now drbd-8.0 really looks good. Besides the missing documentation
updates it is rather complete now.=20

=46or the first time I am thinking about using drbd-8.0 on my own
production systems....

8.0pre6 (api:85/proto:85)
=2D-------
 * All panic() calls where removed from DRBD.
 * IO errors while accessing the backing storage device are now handled
   correct.
 * Conflict detection for two primaries is in place and tested.
 * More tracing stuff
 * Lots of bugs found and fixed

http://oss.linbit.com/drbd/8.0/drbd-8.0pre6.tar.gz
http://svn.drbd.org/drbd/tags/drbd-8.0pre6/

BTW, Please also report spelling errors...
It is time to fix those also.

=2DPhilipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
