Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (213-229-1-138.sdsl-line.inode.at [213.229.1.138])
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 77B42142F3
	for <drbd-announce@lists.linbit.com>; Tue, 10 Feb 2004 15:24:43 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 10 Feb 2004 15:24:42 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 8bit
Content-Disposition: inline
Message-Id: <200402101524.42861.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.6.11.tar.gz
Sender: drbd-announce-admin@lists.linbit.com
Errors-To: drbd-announce-admin@lists.linbit.com
Reply-To: drbd-user@lists.linbit.com
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>
List-Id: Announcements of new releases and critical bugs found <drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce/>

Hi,

I think that this will be the last drbd-0.6.x release. (In case 
there is an issue with 0.6.11, there will be a .12 release of course.)

* Updates to the debian directory (mostly by David Krovich)
* Documentation updates by Lars Ellenberg and Helmut Wollmersdorfer.
* Updates to the build system by Lars Ellenberg.
* Sending of IO hints is done non-blocking, by Lars Ellenberg.
* Code to make IOCTLs work on 64/32 bit platforms (PPC64, SPARC64, AMD64)
* Some code cleanups by LGE.

I think the real highlights are the improvements to the documentation.

In case you are running on drbd-0.6.10 I do not think that it is
worth the trouble to upgrade to 0.6.11.

-Philipp
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Schönbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :

