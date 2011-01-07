Return-Path: <rasto.levrinc@linbit.com>
Date: Fri, 7 Jan 2011 17:07:01 +0100
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
Message-ID: <20110107160701.GA15371@barkeeper1-xen.linbit>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] DRBD MC 0.8.8 / Pacemaker GUI
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

This is the next DRBD MC release 0.8.8. DRBD MC is DRBD, Pacemaker and Virtual
Manager GUI.

In this release many things were fixed. There is now a revert button, that
reverts the changes since the last commit, instead of having to restart the
GUI.

Underneath there's a new plugin interface with one plugin, that resizes LVM
volume with DRBD on it. There will be more plugins available later.
Although all plugins are/will be open source, the prebuilt plugins are not
freely available. DRBD MC calls home to check available plugins. To disable
this check, you can run it with --no-plugin-check option and a tin foil hat :)

You can get DRBD MC here:

http://oss.linbit.com/drbd-mc/
http://oss.linbit.com/drbd-mc/DMC-0.8.8.jar
http://oss.linbit.com/drbd-mc/drbd-mc-0.8.8.tar.gz

1. You don't need Java on the cluster servers only on your desktop. 
2. Download the DMC-0.8.8.jar file.
3. Make sure you use SUN Java not the OpenJDK 1.6.
4. Start it: java -jar DMC-0.8.8.jar
5. It connects to the cluster via SSH.
6. If you use it without DRBD, you have to click "Skip" button on couple of
   places.

DRBD MC is compatible with Heartbeat 2.1.3 to the Pacemaker 1.1.3 with
Corosync or Heartbeat and DRBD 8.

he most important changes:
* fix Corosync installation in fedora 14
* fix removing of a cloned group
* rename drbd.d directory after it is not used
* fix DRBD view not showing some of the lvm devices
* don't supply sudo password all the time
* make some buttons more descriptive
* plugin caching
* add lvm resize plugin
* improve start up
* implement plugin interface
* VM GUI fixes
* fix Corosync installation for sles11 sp1
* use "crm respawn" as default
* fix setting of locations in cloned groups
* improve apply button logic
* add commit buttons
* add revert buttons
* disallow spaces in DRBD resource name
* change menu tree icons to show if resource is running
* reconnect if ssh port have changed
* fix available Linbit packages on Centos

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD MC http://oss.linbit.com/drbd-mc/
: DRBD MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
