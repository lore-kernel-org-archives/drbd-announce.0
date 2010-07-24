Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
Date: Sun, 25 Jul 2010 01:45:18 +0200
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201007250145.19619.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD MC 0.7.7 / Pacemaker GUI
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

This is the next DRBD MC beta release 0.7.7. DRBD MC, is a Java application 
that helps to configure DRBD and Pacemaker. You can start DRBD MC on your 
workstation and connect via SSH to the cluster. DRBD MC is compatible with 
Heartbeat 2.1.3 to the Pacemaker 1.1.2 with Corosync or Heartbeat and DRBD 
8.

There are not many new features, this being vacation time and all, but there 
are some fixes, that it may be worth to upgrade and it happens that DRBD MC 
is the easiest to upgrade application ever.

Orphaned resources are now shown, so if all of the sudden many orphan 
resources show up in the GUI, they are nothing to be worry about, they can 
be removed or left alone. For some reason removing may not work with recent 
versions of Pacemaker with Heartbeat, but it works always with Pacemaker on 
Corosync. If you are hit by this, ignore it simply, they will disappear 
after next Heartbeat+Pacemaker restart.

More seriously in the version 1.2.5 corosync -v fills up shared memory. This 
was fixed before and after this version. Unfortunately DRBD MC checks if 
version of Corosync changed every minute (it is unlikely but possible) and 
Corosync 1.2.5 is the version that Andrew Beekhof likes to build and thus it 
is very popular. DRBD MC has now a workaround for this Corosync version.

You can get DRBD MC here:

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/DMC-0.7.7.jar
http://oss.linbit.com/drbd-mc/drbd-mc-0.7.7.tar.gz

You can start it with help of Java Web-Start or you can download it and
start it with "java -Xmx512m -jar DMC-0.7.7.jar" command. Make sure you use
the Java from SUN. The openjdk seems to work fine for some time now, but it
seems to run DRBD MC much slower than the original Java.
But first of all, please don't run it on one node with X forwarding, but on 
the desktop.

Here are the most important changes:

* workaround for Corosync 1.2.5 leaking shm with -v option
* fix standby command so that it works with sudo
* move "remove all services" to the advanced mode
* disable menus in DRBD view, for resources that are managed by CRM
* add support file for Fedora 13 and Opensuse 11.3
* show orphaned resources
* when new DRBD device was created, reload filesystem comboboxes
* save node colors in the graph
* fix network info
* remove kex timeout, that causes ssh library to hang
* fix host scores bug with upper-cased hostnames
* allow removing of new group services
* accept +INFINITY scores

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
