Return-Path: <rasto.levrinc@linbit.com>
Message-ID: <64109.62.178.141.198.1258358692.squirrel@mail.linbit.com>
Date: Mon, 16 Nov 2009 09:04:52 +0100 (CET)
From: "Rasto Levrinc" <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
MIME-Version: 1.0
Content-Type: text/plain;charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Subject: [DRBD-announce] DRBD Management Console 0.4.2
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

This is the next DRBD-MC beta release 0.4.2. DRBD-MC is a Java GUI that
helps to configure DRBD/Pacemaker/Corosync/Openais/Heartbeat clusters.
Some people are concerned that Java is too slow for GUIs and that was true
years ago, but now at last it's Java GUI time!

Now let's see what is new in this release. As a nod to the bleeding edge
people DRBD-MC now works with Pacemaker 1.0.6 and Corosync. New
Clusterlabs repositories were added as an installation option, so that you
can install the latest Pacemaker releases. If Clusterlabs repositories are
still too stale for you, it is possible to install from the GUI the latest
clone from Pacemaker Mercurial, making the GUI only one step behind the
last commit from Beekhof. The goal is to get ahead and let them catch up
on DRBD-MC.

Thanks to the feedback of the sysadmins out there some issues with disks
not being recognized and some other misconceptions were fixed. They also
found even more bugs, while clicking on things I would not dare to click.

In the meantime the whole new DRBD 8.3.6 was released and they got finally
configure script together, unfortunately breaking the DRBD installation
from the GUI in the process. Needless to say, it is fixed now.

Another new addition in this release is support for cloned groups. It
still needs some work to make it easier and more intuitive to configure
but at least it is now possible to enter and operate it.

See some new features in the screenshot:

http://oss.linbit.com/drbd-mc/img/drbd-mc-0.4.2.png

You can get DRBD-MC here:

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/drbd-mc-0.4.2.tar.gz
http://oss.linbit.com/drbd-mc/DMC-0.4.2.jar

You can start it with help of Java Web-Start or you can download it and
start it with "java -jar DMC-0.4.2.jar" command.

Here is the almost complete changelog:

* offline/online detection for nodes was fixed
* bogus "status failed" message while loading the cluster was removed
* null pointer exception when clicking on host that is not connected was
fixed
* DRBD 8.3.6 installation was fixed
* freezes, when adding a dependent group were fixed
* block devices that do not have partitions are shown now
* md_d device names for sw raids are allowed now
* support for cloned groups was implemented
* advanced mode check box is now global
* Pacemaker installation fixes
* auto option for DRBD configuration was added
* start up, if there are no DRBD resources, was fixed
* install from source option for Pacemaker was added
* versions of installed components on every node are now shown in the node
tooltips

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.


