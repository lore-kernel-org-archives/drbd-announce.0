Return-Path: <philipp.reisner@linbit.com>
Received: from amd.localdomain (chello080110205223.112.11.tuwien.teleweb.at [80.110.205.223])
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 7053714018
	for <drbd-announce@lists.linbit.com>; Sun,  1 Feb 2004 21:57:42 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Sun, 1 Feb 2004 21:57:41 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200402012157.42040.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7_pre4.tar.gz
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

It is nearly two month that I release the last prerelease of 
DRBD-0.7, and therefore a lot has happened in the mean time.

 * -pre4, builds, loads, and even survives the some basic 
   tests on _LINUX-2.6.1_ ! 
 * It looks already quite good on Linux-2.4.x

The things that are missing/broken (I remember now)
 
 * Online resizing will fail with internal metadata
 * The alternative to "do_panic" is still not yet implemented

What you should check out:

 * All the activity-log and persistant bitmap work is finished 
   and in very good shape. You well never again have to wait
   until a FullSync is done.
 * The drbdadm tool

Unfortunately the only available documentation are the comments
in the samle configuration file. 

BTW, drbdadm will look first for /etc/drbd-07.conf and then for
     /etc/drbd.conf, while drbd-0.6 only looks for /etc/drbd.conf

!!! BIG WARNING !!!
  Although it might work quite well in some tests, this is 
  development code. Do not think about replacing drbd-0.6.10
  on your production system with this.
!!! 

-Philipp

