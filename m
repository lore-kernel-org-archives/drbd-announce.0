Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com,
 drbd-user@lists.linbit.com
Date: Fri, 27 Mar 2009 14:13:33 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200903271413.33855.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.3.1.tar.gz and drbd-8.0.16.tar.gz
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

Let me point out a few highlights:

*) Use drbd-overview instead of 'cat /proc/drbd'

*) The udev rule provides you nice symlinks for the drbd device nodes:

   /dev/drbd/by-res/foo-bar

*) include statement:
   Although we have not yet changed the configuration examples, but now
   it is possible to have a drbd.conf that looks like this:

   include "/etc/drbd.d/global_shared.conf"
   include "/etc/drbd.d/*.res"

*) the congested_fn should improve overall system performance on machines
   with hight IO load.

*) The outdate-wfc-timeout allows one to tune the wait-for-connect 
   time down to 1 second in case the peer is already outdated.

The changelog:

8.3.1 (api:86/proto:86-89)
--------
 * Fixed drbdadm invalidate on disconnected devices (reg in 8.2.7)
 * Fixed a hard to trigger spinlock deadlock when using device stacking
   with the upper device having a smaller minor number than the lower device.
   (Bugz 210)
 * Adding a missing range check in ensure_mdev()
 * Implemented a congested_fn; the kernel can keep its pdflushes running now
 * Improvements the connection code for high latency links
 * Fix for several potential memory leaks when allocating a device
 * Use an additional meta data bit to store the fact of an old crashed primary
 * Udev rule that populates /dev/drbd/by-res/ and /dev/drbd/by-disk/
 * New timeout option: outdated-wfc-timeout
 * New drbdmeta option: --ignore-sanity-checks
 * Include statement for drbd.conf
 * Improvements to drbd-overview.pl
 * Fixed snapshot-resync-target-lvm.sh to work with more than 10 devices
 * Do not force a full resync after a detach on a primary node
 * Compatibility with Linux 2.6.27, 2.6.28 and 2.6.29

http://oss.linbit.com/drbd/8.3/drbd-8.3.1.tar.gz
http://git.drbd.org/?p=drbd-8.3.git;a=commit;h=drbd-8.3.1
http://www.linbit.com/support/drbd-8.3.1/


And, since the init script of 8.0.15 is broken on some distributions, here
is 8.0.15 with a micro patch, now 8.0.16.

8.0.16 (api:86/proto:86)
--------
 * Fixed the init script to work with all flavors of LSB

http://oss.linbit.com/drbd/8.0/drbd-8.0.16.tar.gz
http://git.drbd.org/?p=drbd-8.0.git;a=commit;h=drbd-8.0.16
http://www.linbit.com/support/drbd-8.0.16/

-Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

