Return-Path: <philipp.reisner@linbit.com>
Received: from [10.9.9.50] (213-229-1-138.sdsl-line.inode.at [213.229.1.138])
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 10E4214314
	for <drbd-announce@lists.linbit.com>;
	Mon, 31 Jan 2005 13:36:38 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 31 Jan 2005 13:37:22 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200501311337.22840.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7.10.tar.gz
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

In order to fix the drbd-0.7.9 desaster here is 0.7.10.

0.7.10 (api:77/proto:74)
=2D----
 * 0.7.9 had a memory corruption bug and memory leakage (BIOs).
   This time I did the clone_bio() fix myself, and this release is
   supposed to work with SLES9 SP1, Linux-2.6.11 and Linux-2.6.12.

NOTE: These bugs were introduced with 0.7.9, so in case you=20
      run 0.7.8 you do not need to upgrdate to 0.7.10.

The reason for the hurry was because SUSE released their=20
SLES9-SP1 kernel with some patches from upcomming Linux-2.6.11.=20
DRBD (0.7.8) was not compatible with this changes.

I have learned my lession about making releases.

http://oss.linbit.com/drbd/0.7/drbd-0.7.10.tar.gz

=2DPhilipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
