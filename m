Return-Path: <rasto.levrinc@linbit.com>
Date: Tue, 12 Jul 2011 08:30:22 +0200
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
Message-ID: <20110712063021.GA25101@barkeeper1-xen.linbit>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] DRBD MC 0.9.4 / Pacemaker GUI
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

This is the next DRBD:MC release 0.9.4. DRBD:MC is DRBD, Pacemaker and
Cluster Virtual Manager GUI.

The commands in DRBD 8.4 (the replication software) have changed a lot, but
you don't have to worry about it if you use DRBD:MC, except some fields got
shuffled around and there's something called volumes in between.

I've noticed that OpenJDK 6 is getting better for some time. Not only the
Java application starts with it now, after minimum of changes it was running,
without blowing up the computer.

Although things fix by themselves occasionally, it turned out that making a
workaround for one Java version on one platform breaks something on other
platform, causing a combinatorial explosion of breakages, workarounds a fixes.
In short I've been for couple of days I've been in a place, we call the Java
hell.

Now it works perfectly with OpenJDK 6, but It is still recommended to run
it with SUN Java, since OpenJDK is a bit slow in comparison.

You can get DRBD:MC here:
http://oss.linbit.com/drbd-mc/

Screenshot:

http://oss.linbit.com/drbd-mc/img/drbd-mc-0.9.4.png

1. You don't need Java on the cluster servers only on your desktop. 
2. Download the DMC-0.9.4.jar file.
3. Start it: java -jar DMC-0.9.4.jar, or click on the file.
4. It connects to the cluster via SSH.
5. If you use it without DRBD, you have to click "Skip" button on couple of
   places.
6. It is recommended to use it with SUN Java.

DRBD:MC is compatible with Heartbeat 2.1.3 to the Pacemaker 1.1.5 with
Corosync or Heartbeat and DRBD 8.

The most important changes:
*  use get-gi instead of attach to find out if there are meta-data
*  improve testing framework
*  fix gnome wnck applet craziness problem on some platforms
*  --nolrm option to disable showing of resources that are only in LRM
*  make texts in the graph clearer
*  fix remove all and stop all functions
*  fix issues with dialogs on some platforms
*  fix resource sets
*  keep options when switching between primitive and clone
*  reload resync-after combo boxes when there are changes
*  Opensuse installation for 11-4
*  fix saving of cloned grouped resource
*  fix lockup in OpenJDK 6
*  fix Scientific Linux 5 detection
*  right KVM emulator defaults for every distro
*  change "Go Out of Standby" to "Go Online" in menu
*  cleanup resources only if they need to be
*  fix saving of VM config
*  improved CIB communication from the helper programm
*  fix "IPC Channel to ... is not connected" warning
*  fix removing of constraints
*  fix canceling of new DRBD resource
*  don't reenable apply button for short after applying
*  8.4.0 volume support
*  add "adjust all" option to the DRBD host menus
*  fix ptest with sudo

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD MC http://oss.linbit.com/drbd-mc/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
