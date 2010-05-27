Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 27 May 2010 17:37:16 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201005271737.16480.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.8rc2.tar.gz
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

Hi,

This again is a call for all DRBD users, that have some testing equipment
available, and are ready to contribute a bit of their time to testing
DRBD.

 This is a release candidate, do not use it for production.
 This is a release candidate, do not package it for distributions.

Changes relative to rc1:
 * Reverted the "late new current UUID" changes, they are not
   ready for this release.
 * A few correction to the way we deal with the TCP stack.
   Should improve latency, and make setting of socket sendbuf 
   size.
 * Added missing calls to check-resize to the init script and 
   the OCF resource agent.
 * fixed hang on local read errors while disconnected

Change log relative to 8.3.7:

8.3.8rc2 (api:88/proto:86-94)
--------
 * Do not expose failed local READs to upper layers, regression introduced
   in 8.3.3
 * Fixed support for devices with 4k hard sector size (again)
 * Fixed a potential Oops in the disconnect code
 * Fixed a race condition that could cause DRBD to consider the peers disk
   as Inconstent after resync instead of UpToDate (Bugz 271)
 * Fixed a reace condition that could cause DRBD to consider the peers disk
   as Outdated instead of Inconsistent during resync (Bugz 277)
 * Disallow to start a resync with invalidate / invalidate-remote when the
   source disk is not UpToDate
 * Forcing primary works now also for Consistent, not only for Outdated and
   Inconsistent (Bugz 266)
 * Improved robustness against corrupt or malicous sector addresses when
   receiving data
 * Added the initial-split-brain, it gets called also if the split-brain gets
   automatically resolved
 * Added the --assume-clean option for the resize command, it causes drbd to
   not resync the new storage after an online grow operation
 * drbdadm: Do not segfault if stacked-on-top-of refers to an undefined res
 * drbdadm: Do not consider configs with invalid after statements as invalid
 * drbdadm: Do not segfault if the peer's proxy section is missing
 * drbdadm: Allow nullglob in include statement
 * drbdadm: Fixed the use of waitpid
 * init script: fix insserv headers (Debian 576901)
 * Gave the receiving code the ability to use multiple BIOs for writing a
   single data packet; now DRBD works with BIOs up to 32kByte also on LVM
   devices; from now on the use_bmbv config option does nothing
 * New command check-resize, that allows DRBD to detect offline resizing
   and to move internal meta-data accordingly
 * Added a control loop, that allows DRBD to find auto tune the resync
   speed, on connections with large queues (drbd-proxy)
 * --dry-run option for connect; disconnects after sync handshake
 * --overwrite-data-of-peer got an alias named --force
 * Improvements to crm-fence-peer
 * Fixed option parsing and stacking in snapshot-resync-target-lvm.sh
 * Compiles on 2.6.33 and 2.6.34

http://git.drbd.org/?p=drbd-8.3.git;a=commit;h=drbd-8.3.8rc2
http://oss.linbit.com/drbd/8.3/drbd-8.3.8rc2.tar.gz

-Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
