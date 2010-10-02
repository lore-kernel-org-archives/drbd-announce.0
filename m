Return-Path: <rasto.levrinc@linbit.com>
Message-ID: <61085.62.178.141.198.1286019612.squirrel@mail.linbit.com>
Date: Sat, 2 Oct 2010 13:40:12 +0200 (CEST)
From: "Rasto Levrinc" <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
MIME-Version: 1.0
Content-Type: text/plain;charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Subject: [DRBD-announce] DRBD MC 0.8.0 / Pacemaker GUI
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

This is the next DRBD MC beta release 0.8.0. DRBD MC is a Java application
that helps to configure DRBD, Pacemaker or both. It uses SSH to connect to
the cluster from a desktop computer.

Some people have doubts if Java is the right technology for GUI and ask
why it isn't done in [insert the newest subset-of-Perl language here].
IMHO it's the same if someone would diss COBOL in 1973, I rest my case. :)

If you are a CLI kind of person you probably don't need it, if you like
BNF notations, syntax errors and people screaming at you - man this, man
that, if you are into this stuff, there's nothing wrong with it, you don't
need it. But this is a GUI world and lately people including me don't even
get a decent keyboard at their workplace, there's no way around it, you
are going to need this GUI.

In this release the VM part of the GUI was developed and reached almost
the feature parity with virt-manager. Unlike virt-manager it is
cluster-aware and it can be run from Windows, yet it still can be run from
Linux so don't run away. Screenshot:

http://oss.linbit.com/drbd-mc/img/drbd-mc-0.8.0.png

Seemingly faster popups were implemented as well. Especially they seem
much faster with large groups on slow computers. The trick is, that first
they pop up and then they load in the background and it feels faster, some
people do this as well.

You can get DRBD MC here:

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/DMC-0.8.0.jar
http://oss.linbit.com/drbd-mc/drbd-mc-0.8.0.tar.gz

You can download it and start it with "java -jar DMC-0.8.0.jar" command or
you can use Java Webstart. First of all, please don't run it on one node
with X forwarding, but on the desktop.

It works with SUN Java 6 and OpenJDK 7. It does not work good with OpenJDK
1.6 and this is probably what you have if you have OpenJDK installed as
Java. With this so-called fully compatible Java version it runs slow,
experiences random errors or may even hang.

DRBD MC is compatible with Heartbeat 2.1.3 to the Pacemaker 1.1.2 with
Corosync or Heartbeat and DRBD 8.


Here are the most important changes:

* fix DRBD with filesystem in a group
* rename "Cluster" to "Cluster Manager" in menu
* enable DRBD menus in unmanaged resources and advanced mode
* dialog fixes
* new domain wizard implementation
* better popup menus
* fix possible null pointer exception, while removing vertices
* fix possible race with radio groups
* fixing a leak while there is no ssh connection
* using epel 5.4 for redhat/centos distributions
* test-suite for VMs
* test-suite for DRBD
* fix menu tree not updating for orphaned resources
* split tooltips that are too wide
* add "stop all services" menu item
* show in tooltip why a menu item was disabled
* implement all VM devices

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.


