Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (213-229-1-138.sdsl-line.inode.at [213.229.1.138])
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id E1A7014018
	for <drbd-announce@lists.linbit.com>; Thu, 19 Feb 2004 17:36:43 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 19 Feb 2004 17:36:43 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 8bit
Content-Disposition: inline
Message-Id: <200402191736.43206.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7_pre5.tar.gz
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

* Forwarded documentation from drbd-0.6.11 and wrote a draft drbdadm man page
* Lots of updates to the build system
* introduced on-io-error=pass_on|panic|detach replaces do-panic
* More sanity checks to the set_disk ioctl and command
* Made the diskless mode work, intoduced the detach ioctl and command
* Lars rewrote the make_request function to support on-io-error=detach
  also for local IO errors on the primary
* Removed the UNCONFIG_BOTH ioctl
* Removed the secondary_remote ioctls/commands
* 64 bit fixes for
  . CONFIG_LBD (64 bit sector_t on 32 bit arch)
  . pure 64 bit architectures
  . 32bit userland / 64 bit kernel architectures (AMD64/Sparc64...)
* Fixes to drbdadm

There is still some cleanup work to do, _but_ basically we are
feature complete for drbd-0.7. 

It compiles and basically works on Linux-2.4.x and Linux-2.6.x

So far no tests on SMP were performed. -- Do not expect too much 
on SMP systems with this release. This is one of the areas I have
to work on next. (Over the course of development we probabely 
 introduced some loose ends, but yes, SMP locking was considered
 during the whole development process)

Now it is your turn to help testing this and to write reproducible 
bug reports ! 

-Philipp
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Schönbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :

