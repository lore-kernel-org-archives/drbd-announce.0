Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (unknown [81.16.158.130])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 6C4562E3856D
	for <drbd-announce@lists.linbit.com>;
	Mon,  3 Sep 2007 13:54:50 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 3 Sep 2007 13:54:48 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200709031354.49202.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0.6.tar.gz
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

The reason to have another maintenance release only 4 weeks after
the last one is the DRBD deadlocked on Linux-2.6.22 and newer. 

Altough we have a few bugfixes on the list, I do not see a need
to upgrade from 8.0.5 to 8.0.6.

8.0.6 (api:86/proto:86)
--------
 * Fixed DRBD to not deadlock while doing bitmap updates on Linux
   2.6.22 and later.
 * Make it compile on Linux-2.6.22 and later.
 * Removed a hardcoded path to docbook DTDs from our sgml files,
   maybe improving the situation with building the documentation.
 * When a drbd connect attempt gets accepted onto a other program,
   that simply closes the socket, drbd stays for some seconds in the
   "BrokenPipe" network state. When one removed the network
   config during that time, drbd OOPSed. This is fixed now.
 * drbdmeta can now also initialize meta data on meta devices
   smaller than 128MB.
 * Added an explicit NULL argument to our ioctl() calls in drbdmeta.
 * Added scripts/block-drbd, which is a nice way hand over DRBD
   role assignment to Xen, allowing one to do Xen live migrations
   in a sane way.
 * Added scripts/pretty-proc-drbd.sh
 * Added an option to drbd.conf which instructs the init script
   to promote DRBD devices to primary role upon machine start up.

http://www.linbit.com/support/drbd-8.0.6/
http://oss.linbit.com/drbd/8.0/drbd-8.0.6.tar.gz
http://svn.drbd.org/drbd/tags/drbd-8.0.6/

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
