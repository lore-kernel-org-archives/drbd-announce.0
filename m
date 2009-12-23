Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 23 Dec 2009 20:38:30 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <200912232038.30646.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.7rc1.tar.gz
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

Happy Christmas!

It is time to have a release out that actually compiles on Linux-2.6.32,
and that is actually complete. This feature has neither important bug
fixes nor impressive new features. It is more a maintenance thing.

Since getting the RPM packaging right is a challenging task, here is 
a release candidate of 8.3.7.

Oh, there is one thing to notice: This is the first release that suggests
to use config-snipplets in /etc/drbd.d/.

Thanks for testing RPM-building and testing the update procedure!

8.3.7rc1 (api:86/proto:86-91)
--------
 * Lots of fixes to the new RPM packaging
 * Lots of fixes to the autoconfig stuff
 * Fixed a regression in the resynch handshake code introduced before 8.3.3.
   That bug causes DRBD to block during the initial handshake when a partial
   resync is not possible but a full resync is necessary. Happens very rarely.
   (Bugz 260)
 * crm-fence-peer.sh is now also usable if DRBD is managed from the xen block
   helper script
 * Fixes to the init script's dependencies
 * Backported cleanups that where contributed to the in kernel DRBD
 * Allow online resizing of disconnected devices, new option to drbdsetup
   drbdsetup /dev/drbdX resize --assume-peer-has-space
 * Following Linux upstream changes 2.6.32 (SHASH and in_flight issues)
 * New /etc/drbd.conf example that suggests the use of /etc/drbd.d/xxx.res


http://git.drbd.org/?p=drbd-8.3.git;a=tag;h=drbd-8.3.7rc1
http://oss.linbit.com/drbd/8.3/drbd-8.3.7rc1.tar.gz

-Phil
