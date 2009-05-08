Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com,
 drbd-announce@lists.linbit.com
Date: Fri, 8 May 2009 12:13:55 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200905081213.55786.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD Management Console 0.2.1
Reply-To: drbd-user@lists.linbit.com, drbd-mc@lists.linbit.com
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

This is the next DRBD-MC beta release 0.2.1. In this release some important 
and some less important bugs were fixed. The Heartbeat/Pacemaker 
installation was improved and now it is possible to choose from more 
installation methods, the default being the installation from opensuse.org 
repositories if available.

Here is the complete changelog:

* group actions are fixed to be performed on its resources
* removed host scores from group
* adding more information to the DRBD graph
* adding swap info to the DRBD graph
* fixed lvm info in the graph
* fixed resizing of the vertices
* changed vertex animations
* adding different heartbeat installation methods
* showing also device mapper devices that are not lvm
* fixing the Heartbeat lib and lib64 paths on different distributions
* fixing the edges in the Heartbeat graph
* checking the locations of the cib sockets
* fixing the reverse order action
* fixed cib events for hb >= 2.99.0
* fixing bug in dialogs where text could be obscured
* fixed removing of the group
* fixed 'starting before' service that is in the group... 
* fixing a race during repainting of the menu tree
* sorting mount points alphabetically
* using wildcards for distribution versions, instead of defining
  them all the time 
* fixing repainting of the menu tree
* fixing create DRBD meta-data dialog
* fixing create filesystem dialog
* fixed remembering of dsa and rsa passwords
* fixed save checkbox in cluster finish dialog
* and some code cleanup

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/drbd-mc-0.2.1.tar.gz
http://oss.linbit.com/drbd-mc/DMC-0.2.1.jar

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: http://www.drbd.org/mc/management-console/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

