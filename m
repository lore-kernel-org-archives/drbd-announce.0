Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
Date: Thu, 12 Aug 2010 09:23:50 +0200
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201008120923.50353.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD MC 0.7.9 / Pacemaker GUI
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

This is the next DRBD MC beta release 0.7.9. DRBD MC, is a Java application 
that helps to configure DRBD and Pacemaker. You can start DRBD MC on your 
workstation and connect to the cluster via SSH. DRBD MC is compatible with 
Heartbeat 2.1.3 to the Pacemaker 1.1.2 with Corosync or Heartbeat and DRBD 
8.

It works with SUN Java 6 and OpenJDK 7. It does not work good with OpenJDK 
1.6 and this is probably what you have if you have OpenJDK installed as Java 
at the moment. With OpenJDK 1.6, the so-called fully compatible Java 
version, it runs slow, experiences random errors or may even hang. Good news 
is, that this problem will disappear in the future by itself. For now you 
need to install the SUN Java, that comes with your distribution.

In this release couple of stability issues and annoyances were fixed. The 
VMs manager part of the program was further developed, so that now it is 
possible to add new disks and network interfaces to the virtual machines and 
modify them.

Screenshot:

http://oss.linbit.com/drbd-mc/img/drbd-mc-0.7.9.png

You can get DRBD MC here:

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/DMC-0.7.9.jar
http://oss.linbit.com/drbd-mc/drbd-mc-0.7.9.tar.gz

You can start it with help of Java Web-Start or you can download it and 
start it with "java -Xmx512m -jar DMC-0.7.9.jar" command. First of all, 
please don't run it on one node with X forwarding, but on the desktop.

Here are the most important changes:
* editable VMS net interfaces and disks
* order block devices dynamically in the DRBD view
* fix possible deadlock in Swing
* show orphaned resources only in advanced mode
* fix storing of global time values
* make "DC Version" and "Cluster Infrastructure" fields not editable.
* fix for adding new services
* fix removing of items in services menu
* cleanup group resources after they are removed
* fix removing of new group
* show drbddisk RA only if necessary
* fix expanding of the terminal area

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
