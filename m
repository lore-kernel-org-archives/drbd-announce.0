Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 06 Aug 2014 16:52:28 +0200
Message-ID: <13664418.zkWRqUik3v@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-utils-8.9.1.tar.gz
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

With this utils only release mainly the regressions from the
repository split got fixed. On the other hand the systemd
service file is of course for those who already deploy RHEL7
systems.

8.9.1
--------
  * add DRBD systemd service
  * new configuration options socket-check-timeout and csums-after-crash-only
  * update xen block-drbd helper: allow for type "phy"
  * update udev rules and move from /etc/ to /lib/
  * fix various regressions/fallout from the kernel/userland package split,
    re-add scripts drbddisk and drbdupper,
    re-add "become-on-primary" feature to init script
  * crm-fence-peer.sh: improve detection of "clean down"
  * updated fencing scripts stonith_admin-fence-peer.sh and rhcs_fence
  * improved "proxy" configuration section parsing
  * added manpage for drbd-overview, minor review of man pages
  * build: various changes in configure.ac, makefiles, debian/* and spec file

http://oss.linbit.com/drbd/drbd-utils-8.9.1.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-utils.git;a=tag;h=refs/tags/v8.9.1

Best regards,
 Phil
