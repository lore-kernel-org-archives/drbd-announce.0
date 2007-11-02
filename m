Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (unknown [81.16.158.130])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id B40062E08F4F
	for <drbd-announce@lists.linbit.com>;
	Fri,  2 Nov 2007 15:55:11 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 2 Nov 2007 15:55:10 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200711021555.10580.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0.7.tar.gz and drbd-8.2.1.tar.gz
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

We have a double release!

No need for urgent upgrade. No hair-rising bugs found. For new
systems please use the new releases of course.

If you plan to use online resizing (esp. online shrinking) 
updating to this release is strongly encouraged.


8.0.7 (api:86/proto:86)
--------
 * Fixed drbdmeta's conversion of 07 style meta data.
 * Handle the failure of vmalloc() in the bitmap code more gracefully.
 * Do not pause resync on unconfigured devices.
 * Added missing piecos of the implementation of the "pri-lost" handler.
 * Added the "split-brain" handler.
 * Drop the network config after failure to authenticate.
 * Made it to compile on Linux-2.6.24-rc1.
 * Fixed an unlikely race that could cause a device to get stuck
   in SyncPause.
 * Online resizing failed to start resync properly (although it
   set up all the meta data correct). Fixed that.
 * Minor improvements to documentation and error messages.

http://www.linbit.com/support/drbd-8.0.7/
http://oss.linbit.com/drbd/8.0/drbd-8.0.7.tar.gz

8.2.1 (api:86/proto:86-87)
--------
 * Fixed the OOPS when _not_ using a shared secret on kernels
   before Linux-2.6.19 (=old crypto API).
 * Support for drbd-porxy's configuration directives in drbdadm.
 * Look for /etc/drbd-82.conf before drbd-08.conf before drbd.conf
 * drbdadm now allowes one to move the device, disk and meta-disk
   statements out of the host ("on") sections into the resource
   section. This allows you to shorten your config files.
 * Merged all changes from 8.0.6 -> 8.0.7 to 8.2

http://www.linbit.com/support/drbd-8.2.1/
http://oss.linbit.com/drbd/8.2/drbd-8.2.1.tar.gz

PS: The tags are not yet visible in the public git repository, but hat
    will happen soon. (I am not yet familiar with all the details of
    GIT's tags...)

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
