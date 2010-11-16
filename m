Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	linux-ha@lists.linux-ha.org, pacemaker@oss.clusterlabs.org
Date: Tue, 16 Nov 2010 11:39:39 +0100
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201011161139.39567.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD MC 0.8.4 / Pacemaker GUI
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

This is the next DRBD MC release 0.8.4. DRBD MC is a Java application that 
helps to configure DRBD, Pacemaker, VMs or any combination of them. It uses 
SSH to connect to the cluster from a desktop computer.

Focus of this release was on performance, profiling, fixing leaks and stuff 
like that. Thanks to this DRBD MC went straight from being bloated and 
sloppy application to lightweight and lean, making the source code a 
textbook of concentrated good-coding practices.

It turned out, that after couple of changes it is now possible to run DRBD 
MC as an applet without any performance or functionality loss. See here:

http://oss.linbit.com/drbd-mc/img/drbd-mc-0.8.4.png

It just sits in the browser and makes all this everything-must-be-web people
happy. For now if you want to enable the applet functionality, you'd have to
compile and sign it yourself.

You can get DRBD MC here:

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/DMC-0.8.4.jar
http://oss.linbit.com/drbd-mc/drbd-mc-0.8.4.tar.gz

1. Download the DMC-0.8.4.jar file.
2. Make sure you use SUN Java not the OpenJDK 1.6.
3. Start it: java -jar DMC-0.8.4.jar
4. It connects to the cluster via SSH.

DRBD MC is compatible with Heartbeat 2.1.3 to the Pacemaker 1.1.3 with
Corosync or Heartbeat and DRBD 8.

Here are the most important changes:
* add clone-node-max meta attribute
* fix defaults in IPaddr/IPaddr2 RAs
* remove useless node name and DNS check in host dialog wizard
* add --no-upgrade-check option
* fix applying of clones
* fix leaks with groups and clones
* graph fixes
* fix graph resizing
* fix leak with DRBD resources
* make it possible to run as an applet
* upgrade Jung library to 2.0.1

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
