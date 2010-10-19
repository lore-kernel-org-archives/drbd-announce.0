Return-Path: <rasto.levrinc@linbit.com>
Message-ID: <59954.10.9.9.58.1287491233.squirrel@mail.linbit.com>
Date: Tue, 19 Oct 2010 14:27:13 +0200 (CEST)
From: "Rasto Levrinc" <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
MIME-Version: 1.0
Content-Type: text/plain;charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Subject: [DRBD-announce] DRBD MC 0.8.2 / Pacemaker GUI
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

This is the next DRBD MC beta release 0.8.2. DRBD MC is a Java application
that helps to configure DRBD, Pacemaker, VMs or any combination of them.
It uses SSH to connect to the cluster from a desktop computer.

In this minor release couple of minor enhancements were implemented and
minor issues were fixed.

Now it is possible to specify location according the pingd results. At the
moment, the "on host with most connections" and "stop on host with no
connection" can be chosen. Let me now if there are some other uses for
that.

The gathering information from servers has been optimized, fixed and
tuned, so that it needs much less CPU on the servers then before.

Screenshots:

http://oss.linbit.com/drbd-mc/img/drbd-mc-0.8.2.png
http://oss.linbit.com/drbd-mc/img/drbd-mc-0.8.2-drbd.png

You can get DRBD MC here:

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/DMC-0.8.2.jar
http://oss.linbit.com/drbd-mc/drbd-mc-0.8.2.tar.gz

You can download it and start it with "java -jar DMC-0.8.2.jar" command or
you can use Java Webstart. First of all, please don't run it on one node
with X forwarding, but on the desktop.

It works with SUN Java 6 and OpenJDK 7. It does not work good with OpenJDK
1.6 and this is probably what you have if you have OpenJDK installed as
Java. With this so-called fully compatible Java version it runs slow,
experiences random errors or may even hang.

DRBD MC is compatible with Heartbeat 2.1.3 to the Pacemaker 1.1.2 with
Corosync or Heartbeat and DRBD 8.

Here are the most important changes:
* fix DRBD panels updating
* make rrp_mode=active default in corosync.conf
* fix Ubuntu Lucid software installation
* fix Fedora 13 software installation
* using backports repos for Debian software installation
* fix on-mouse-over ptest not working all the time
* hb 2.1.4: fix when using rsc_order without type argument
* improved ssh connection handling
* allow moving group resources up and down in the group
* fix progress indicator
* pingd location constraints
* score 0 for order is shown better
* fix tooltips showing old info
* move order score to the not advanced section
* group services fixes
* make failed resource red again
* make migrate-from the default migrate option
* migrate all and unmigrate all menu items
* add drop down list with hosts for stonith hostlists parameter
* improve colors
* add actions menu to the block devices
* fix retry button in host configuration wizard
* fix standby mode for old heartbeats

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

