Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Date: Wed, 29 Oct 2008 13:22:44 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200810291322.45193.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0.14rc1.tar.gz and drbd-8.2.7rc2.tar.gz
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

This is a double announcement for release candidates in both
code branches.
I will advertise the new features with the announcement of the
final releases. This is rather the public call for users to
test these releases on their staging systems.

8.2.7rc2 (api:86/proto:86-88)
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

http://oss.linbit.com/drbd/8.2/drbd-8.2.7rc2.tar.gz
http://git.drbd.org/?p=drbd-8.2.git;a=tag;h=drbd-8.2.7rc2

8.0.14rc1 (api:86/proto:86)
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

http://oss.linbit.com/drbd/8.0/drbd-8.0.14rc1.tar.gz
http://git.drbd.org/?p=drbd-8.0.git;a=tag;h=drbd-8.0.14rc1

-Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

