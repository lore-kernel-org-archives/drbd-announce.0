Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 12 Nov 2008 22:20:08 +0100
MIME-Version: 1.0
Content-Disposition: inline
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <200811122220.08214.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.0.14.tar.gz and drbd-8.2.7.tar.gz
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

8.0.14
======

Updating to the latest and greatest release is always a good thing. 
Since we had some support calls from customers with releases old as
8.0.4 here the warning:

 If your DRBD is older than 8.0.8 you have to upgrade!

 If your DRBD is older than 8.0.12 you should upgrade.

 Do not online resize anything older than 8.0.13.

8.0.14 (api:86/proto:86)
--------
 * fixed some access-after-free corner cases
 * fixed some potential deadlocks on state changes
 * don't use bounce buffers (reduce unnecessary buffer page bounces on 32bit)
 * properly serialize IO operations on the whole bitmap
 * reduce race possibilities in our thread restart code
 * linux 2.6.27 compatibility
 * latency improvements using TCP_QUICKACK
 * reduced spurious coding differrences between drbd-8.0 and drbd-8.2
 * drbdsetup now checks for /proc/drbd instead of playing netlink ping-pong
   to determin whether the drbd kernel module is present.
 * fixed (harmless but annoying) stack corruption in drbdadm
 * adjusted timeouts on 'detach' and 'down'
 * fixed unit conversion of disk size configuration parameter
 * fixed drbdadm/drbdsetup default unit mismatch
   for disk size configuration parameter
 * drbd.spec file update
 * documentation update

http://oss.linbit.com/drbd/8.0/drbd-8.0.14.tar.gz
http://git.drbd.org/?p=drbd-8.0.git;a=tag;h=drbd-8.0.14
http://www.linbit.com/support/drbd-8.0.14/


8.2.7
=====

Upgrading you DRBD-8.2 installations to 8.2.7 is recommended, due
to the issues with the online verify code.

The new features:

 * Support for Dolphin ICS DX interconnect adapters

     Dolphin's DX cards offer lower latencies than 10 GBit/s
     ethernet cards. That might improve performance of applications
     that are very sensitive to write latency.
     That of course only makes sense if you have already a reasonable
     RAID controller with battery backed up write back cache.
     (BTW, use the latest and greatest drivers from Dolphin.)

 * Support for IPv6

     Now you may use 'ipv4', 'ipv6' or 'sci' after the 'address' keyword,
     before the actual address in the configuration file.
     That became necessary since Dolphin's addresses look like ipv4 
     addresses. While we where at it we added support for ipv6 as well.

 * DRBD can now use write barriers

     Although we do not yet offer write barriers to the users of
     DRBD devices, we can now use them to express write after write
     dependencies on the receiving node. On some SAN based block
     devices using barriers instead of flushes is a big latency and
     throughput gain. 

The Changelog:

8.2.7 (api:86/proto:86-88)
--------
 * Fixed possible Oops on connection loss during sync handshake
 * Fixed various possible deadlocks in the disconnect/reconnect and
   online-verify code
 * Fixed possible access-after-free
 * Added support for TCP buffer autotuning
 * Added support for AF_SCI aka "Super Sockets"
 * Added support for IPV6
 * latency improvements
 * Support for using barriers to enforce write ordering on the secondary
   node. New config options: no-disk-barrier, no-disk-drain
 * Merged all changes from 8.0.12 -> 8.0.14 into 8.2

http://oss.linbit.com/drbd/8.2/drbd-8.2.7.tar.gz
http://git.drbd.org/?p=drbd-8.2.git;a=tag;h=drbd-8.2.7
http://www.linbit.com/support/drbd-8.2.7/

-Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.


