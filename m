Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (213-229-1-138.sdsl-line.inode.at [213.229.1.138])
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id C030B14018
	for <drbd-announce@lists.linbit.com>; Thu,  1 Apr 2004 17:25:10 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 1 Apr 2004 17:25:10 +0200
MIME-Version: 1.0
Content-Disposition: inline
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 8bit
Message-Id: <200404011725.10107.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7_pre6.tar.gz
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

A lot has happened...

* Documentation fixes to drbdadm's man page [by Helmut Wollmersdorfer].
* Rearrenged some things to ease monolithic kernel builds with DRBD
  [by Kees Cook].
* Replaced calls to blk_run_queues() with blk_run_queue()
* Lots of fixes to make it actually work with SCSI devices on Linux-2.6.
* Fixed a lot of SMP issues!
* 64bit fixes (tested on a pair of opterons)
* Clear on-disk-bitmap in case something is set in the bitmap and
  no resync will happen.
* Some work on kernel-threads, zombie prevention and inter thread signalling.
* We are free of any sleep_on()s! We use wait_event() everywhere.
* A bugfix to the AL code! (The newly added extent was too early visible
  in the hash table.)
* Implemented a cleanup mode for the workqueue. -- Now we free everything
  from the workqueue correctly, even after loss of connection.
* Completed the "on-io-error" code.

...but there are still things to do...

-Philipp
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Schönbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
