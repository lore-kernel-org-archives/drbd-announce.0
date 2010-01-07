Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
Date: Thu, 7 Jan 2010 11:38:28 +0100
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <201001071138.29262.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD Management Console 0.5.0
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

This is the next DRBD-MC beta release 0.5.0. DRBD-MC is a Java GUI that 
helps to configure DRBD/Pacemaker/Corosync/Openais/Heartbeat clusters.

You can get DRBD-MC here:

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/drbd-mc-0.5.0.tar.gz
http://oss.linbit.com/drbd-mc/DMC-0.5.0.jar

You can start it with help of Java Web-Start or you can download it and 
start it with "java -jar DMC-0.5.0.jar" command.

One of the new great features in this release is the ptest integration in 
the GUI. It's something like What-If machine or a ptest before commit, if 
you are CRM shell fan, but without hassle of finding out about ptest and 
making the sense of its output. It works with Pacemaker (not older 
Heartbeats) and anytime you are about to do something, you will see what 
will happen. This tests are executed as you hover with your mouse pointer 
over some buttons or pull-down menus and you see what will happen in the 
graph and in the tooltips. It is kind of difficult to describe because it is 
entirely a new GUI element I've just invented and I hope everyone will love 
it, not hate it.

Similarly any time you do some change in DRBD config a dry-run is performed 
first and see if something bad is about to happen, for example a full-sync.

In this release a VNC viewer for VirtualDomain resource was added. Well, 
LINBIT forced me to do it, but it is actually quite neat.

Some people ask about DRBD-MC documentation, there definitely will be one, 
but at the moment DRBD-MC develops too fast and it would be quite impossible 
to keep the documentation up-to-date, just like what happened once or twice 
with Pacemaker documentation. :)

See some new features in the screenshot:

http://oss.linbit.com/drbd-mc/img/drbd-mc-0.5.0.png

Here is the almost complete changelog:
* race in the menu tree was fixed
* "create config" dialogs were improved
* loading from file menu item is now enabled only in god mode
* handling of newly added services and groups was fixed
* DRBD meta-data dialog was fixed
* creating of groups and clones was fixed
* group services popups were improved
* removing of not saved services was fixed
* more than one DRBD meta-data in one block device are allowed now
* consensus timeout in corosync config was updated
* Pacemaker installation on 32 bit Redhat distros was fixed
* Pacemaker installation from clusterlabs repos was fixed
* Virtual machines submenu was implemented
* Heartbeat/Pacemaker installation for Centos was added
* clone service submenu was implemented
* group popup submenus for every group service was implemented
* app error is not shown in a new window anymore
* VNC viewers were added
* kernel panic and host reboot for testing is now available only in god mode
* scrollable pulldown menus are now nicer
* dry-run on mouse-over in DRBD view was added
* managed/unmanaged information in cluster graph was fixed
* ptest on mouse-over for hosts, constraints and global config was 
implemented
* Fedora 12 support was added
* ptest for pull down menus was implemented
* ptest check was implemented
* Opensuse 11.2 support was added

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

