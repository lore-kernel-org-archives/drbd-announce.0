Return-Path: <rasto.levrinc@linbit.com>
Message-ID: <37957.10.9.9.58.1304065904.squirrel@mail.linbit.com>
Date: Fri, 29 Apr 2011 10:31:44 +0200 (CEST)
From: "Rasto Levrinc" <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
MIME-Version: 1.0
Content-Type: text/plain;charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Subject: [DRBD-announce] DRBD MC 0.9.2 / Pacemaker GUI
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

This is the next DRBD MC release 0.9.2. DRBD MC is DRBD, Pacemaker and
cluster virtual manager GUI.

In this release the parts of the GUI that enable to setup a live VM
migration were enhanced and fixed. The virtual manager works now in a
cluster as promised.

Another nice feature, that someone can combine with the previous, is the
possibility to create LVs, resize them, snapshot them etc.

Just think about it...
LVM -> DRBD -> HB/Corosync+Pacemaker -> VMs -> live migration, it comes
all together. Now, there's an idea for the next video. :)

You can get DRBD MC here:
http://oss.linbit.com/drbd-mc/
http://oss.linbit.com/drbd-mc/DMC-0.9.2.jar
http://oss.linbit.com/drbd-mc/drbd-mc-0.9.2.tar.gz

1. You don't need Java on the cluster servers only on your desktop.
2. Download the DMC-0.9.2.jar file.
3. Make sure you use SUN Java not the OpenJDK 1.6.
4. Start it: java -jar DMC-0.9.2.jar
5. It connects to the cluster via SSH.
6. If you use it without DRBD, you have to click "Skip" button on couple of
   places.

DRBD MC is compatible with Heartbeat 2.1.3 to the Pacemaker 1.1.5 with
Corosync or Heartbeat and DRBD 8.

The most important changes:
* divert existing drbd.ko for squeeze Linbit packages
* show host menu tooltips in DRBD view
* enable load DRBD menu, if it is not loaded
* change default application size
* Java style cleanup
* LV Resize plugin
* LV Create plugin
* LV Snapshot plugin
* fix remove button not working in new VM hardware
* fix apply button being disabled sometimes by mistake
* fix removing of a group, that has resources with constraints
* don't edit global drbd config if there are no resources
* fix some menu items showing twice
* make applying of changes smoother
* add operation timeouts dynamically
* add scientific linux version detection
* add README file
* add scripts/ directory
* fix saving of modified info in a cluster with VMs
* change directory structure
* fix changing of parameters in VM GUI in a cluster
* add junit framework
* fix modifying of VM options
* fix plugin subdirectories
* add --id-dsa, --id-rsa and --known-hosts options
* make block device editable
* fix min max checking in DRBD config
* fix updating of DRBD view
* store the same UUID on both nodes
* use machine="pc" instead of "pc-0.12" for now
* fix saving of new VMs not working on all hosts
* add allow-migrate option
* fix ptest not showing group services
* fix opensuse installation
* enable fine-grained sudo, don't make everything in bash -c
* change "fenced" to "fencing..."
* add annotations
* better VM input error handling
* show if a node was fenced
* remove superfluous warnings with libvirt 0.8.*
* better stacktrace for failed commands
* show pending status
* don't exit on errors when parsing
* why-a-field-is-disabled interface
* on_poweroff option
* Add CPU match fields in VM GUI

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD MC http://oss.linbit.com/drbd-mc/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.


