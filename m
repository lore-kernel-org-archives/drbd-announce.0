Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (unknown [86.59.100.100])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 8C5042DEAC75
	for <drbd-announce@lists.linbit.com>;
	Mon,  5 Mar 2007 12:42:04 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 5 Mar 2007 12:42:27 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200703051242.27753.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0.1.tar.gz
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

Tara! The first maintenance release of the 8.0 code:

8.0.1 (api:86/proto:86)
--------
 * Fixed some race conditions that could trigger an OOPS when the loca disk
   fails and DRBD detaches itself from the failing disk.
 * Added a missing call to drbd_try_outdate_peer().
 * LVM's LVs expose ambiguous queue settings. When a RAID-0 (md) PV is
   used the present a segment size of 64k but at the same time allow only
   8 sectors. Fixed DRBD to deal with that fact corretly.
 * New option "always-asbp" to also use the after-after-split-brain-policy
   handlers, even it is not possible to determine from the UUIDs that
   the data of the two nodes was related in the past.
 * More verbosity in case a bio_add_page() fails.
 * Replaced kmalloc()/memset() with kzmalloc(), and a wrapper for older kernls
 * A fast version of drbd_al_to_on_disk_bm(). This is necessary for short
   (even sub-second) switchover times while having large "al-extents"
   settings.
 * Fixed drbdadm's array overflows (of on stack objects)
 * drbdsetup can now dump its usage in a XML format
 * New init script for gentoo
 * Fixed Typos in the usage of /proc/sysrq-trigger in the example config.


The release of 8.0.0 happened 6 weeks ago. There were quite a number of
bugs found and fixed, but non of them was so critical that we decided
to do an release immediately.

What I want to express is, that I am quite pleased with the quality of
DRBD-8.0.x so far.

This should not downplay the need to upgrade to 8.0.1 in case you
are using your DRBD cluster in production on real disks (disks 
that can fail), as opposed to local RAID sets (which I usually
not expect to report errors to the upper layers).

A word on http://usage.drbd.org . It is quite pleasant that the
ratio of download to participation in usage.drbd.org rose since
the release of 8.0.0 .
We have 1871 downloads to 450 nodes that admit that they run drbd-8.0.0.

Here are the links:

http://oss.linbit.com/drbd/8.0/drbd-8.0.1.tar.gz
http://svn.drbd.org/drbd/tags/drbd-8.0.1/
http://www.linbit.com/support/drbd-8.0.1/

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
