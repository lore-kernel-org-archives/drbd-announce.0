Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 7 Jan 2010 13:50:25 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201001071350.25981.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.7rc2.tar.gz
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Good start into 2010!

The second release candidate of 8.3.7 is intended to be the least RC.

Please help testing, especially if the update procedure for RPMs
works for you.

8.3.7rc2 (api:86/proto:86-91)
--------
 * Lots of fixes to the new RPM packaging
 * Lots of fixes to the autoconfig stuff
 * Following the rename of CONFIG_LBD to CONFIG_LBDAF
 * Silenced an assert. Could trigger after changing write ordering (Bugz 261)
 * Fixed a race condition between detach and ongoing IO. Very hard to
   trigger, caused an OOPS in make_request/drbd_make_request. (Bugz 262)
 * Fixed a regression in the resync handshake code introduced before 8.3.3.
   That bug causes DRBD to block during the initial handshake when a partial
   resync is not possible but a full resync is necessary. Happens very rarely.
   (Bugz 260)
 * Corrected a null test in the authentication code, found by conccinelle,
   thanks to upstream integration. The chance to trigger that was probably 10^-9
 * crm-fence-peer.sh is now also usable if DRBD is managed from the xen block
   helper script
 * Fixes to the init script's dependencies
 * Backported cleanups that where contributed to the in kernel DRBD
 * Allow online resizing of disconnected devices, new option to drbdsetup
   drbdsetup /dev/drbdX resize --assume-peer-has-space
 * Allow multiple after options in the syncer section for stacked setups
 * Correctly process relative paths in include statements in drbd.conf
 * New option (-t) for drbdadm to test syntax of config snippets
 * Following Linux upstream changes 2.6.32 (SHASH and in_flight issues)
 * New /etc/drbd.conf example that suggests the use of /etc/drbd.d/xxx.res

http://git.drbd.org/?p=drbd-8.3.git;a=tag;h=drbd-8.3.7rc2
http://oss.linbit.com/drbd/8.3/drbd-8.3.7rc2.tar.gz

-Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
