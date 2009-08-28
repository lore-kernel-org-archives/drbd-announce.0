Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com,
 drbd-announce@lists.linbit.com
Date: Fri, 28 Aug 2009 15:11:37 +0200
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200908281511.37772.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD Management Console 0.3.1
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

This is the next DRBD-MC beta release 0.3.1. In this release support for
Corosync was added along with many small improvements and bug fixes.

Here is the complete changelog:

* skipping connect dialogs when host is already connected
* info in the graph was reorganized and improved
* --keep-helper option was implemented so that drbd-gui-helper is not
overwritten if desired
* back buttons in the installation dialogs were fixed
* mkfs.jfs and mkfs.reiserfs were made non-interactive
* DRBD is now loaded as soon as it was installed
* all services in a group vertex are shown
* improvements in the corosync.conf/openais.conf wizard were implemented
* launchpad.net installation option for Ubuntu Hardy was added
* reconnecting after connection was lost was fixed
* Corosync support was added
* many small bug fixes

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/drbd-mc-0.3.1.tar.gz
http://oss.linbit.com/drbd-mc/DMC-0.3.1.jar

Rasto Levrinc
-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

