Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: annoucements@drbd.org
Date: Mon, 29 Nov 2004 15:52:41 +0100
MIME-Version: 1.0
Content-Disposition: inline
Content-Type: text/plain;
  charset="iso-8859-15"
Content-Transfer-Encoding: 8bit
Message-Id: <200411291552.41324.philipp.reisner@linbit.com>
Cc: 
Subject: [DRBD-announce] drbd-0.7.6.tar.gz
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

Yet another DRBD release: http://oss.linbit.com/drbd/0.7/drbd-0.7.6.tar.gz

The initial motivation to release 0.7.6 was to make DRBD work on
Linux-2.6.10(rc2). But on the day I wanted to release it, this
"SyncSource node does not recognise the end of resync" bug came
to the surface:

  It is triggered if
   - Your FS uses a block size of 4k
   - You use protocol C
   - You have File-system IO during start of resync
   - Your device is "rather" big.
  The bug was that during the start of resync (preferable triggered) by
  "drbdadm invalidate XYZ" both nodes need to write the whole BitMap
  to disk. In this periode of time of the nodes considered the resync
  process as already running, while the other did not. 
  -> The FS writes that happened during the start of resync, cleared
     bits in the BitMap on one node but not on the other node.
  => The effect in the end was that The SyncSource node did not 
     recognised the end of resync. 

  The easy fix with older releases is to issue 
   drbdadm disconnect XYZ
   drbdadm connect XYZ
  on the secondary node.

After I fixed that issue (without breaking protocol compatibility)
an other problem (that I never saw before on any of my installations)
popped to the surface:

  The receiver and the asender thread somhow locked up. I fixed
  the code so that this lockup can not happen anymore.

  I think this was reported on the list as ... the speed of
  the syncer falls until it finally reaches zero ... 


For LINBIT customers, prebuild RPMs for SLES8, SLES9, RHAS2.1, 
RHAS3, and some other distributions are available at
https://www.linbit.com/support/

At
http://www.linbit.com/en/solutions/enterprise/linhac/drbd-support/
it is possible to get access the the RPMs by spening a few Euros
via PayPal.


0.7.6 (api:77/proto:74)
-----
 * Fixed bug that could cause a lockup of the receiver and
   asender threads, the visible outcome was that the syncer
   starves.
 * Fixed a bug that under specific circumstandes caused that the
   SyncSource node did not recognised that a resync process was
   finished.
 * "drbdadm invalidate [res]" was not working correct, while
   "drbdadm invalidate_remote [res]" works. Fixed the former.
 * Make DRBD work on Linux-2.6.10-rc2 and newer: Replaced
   sock_alloc() by sock_create(), replaced TASK_ZOMBIE by 
   EXIT_ZOMBIE.
 * Range checks in drbdadm for all numeric configure parameters.
 * A fix to make ioctl()s work on machines with 64bit kernel space 
   and 32bit user space. 
 * Ioctl()s are only allowed if the caller has CAP_SYS_ADMIN set.
 * Removal of warnings on 64bit architectures.
 * Backport of find_first_bit() for x86_64 aka AMD64 for use on 
   that architecture under Linux-2.4.x
 * Changed drbdadm to do the syncer config before the net config.
 * Changed the way drbdadm determines the minor_count parameter for
   module loading.
 * Improvements to the drbddisk script, to do the right thing
   in case Heartbeat is configured with a small timeout than DRBD.
 * On request of the debian package maintainers, the debian directory
   from SVN is not longer included in the tar.gz releases.

-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Schönbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
