Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
Date: Fri, 19 Mar 2010 11:07:39 +0100
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <201003191107.40407.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD Management Console 0.7.0
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

This is the next DRBD-MC beta release 0.7.0. DRBD-MC, that is also a 
Pacemaker GUI, is a Java application that helps to configure 
DRBD/Pacemaker/Corosync/Heartbeat clusters. It is compatible with Heartbeat 
2.1.3 to the Pacemaker 1.0.8 with both available communication layers and 
DRBD 8.

In this release resource defaults were added. This is one of the missing 
features, that normal people would use, I think. You'll find it in next to 
the global options if you cluster software supports it.

The great new feature are the different operating modes and advanced/not 
advanced modes. Depending on the operating mode, the input fields and menus 
are shown, hidden, enabled or disabled. For example an administrator that 
does not configure the cluster, can quickly find what he needs, not to worry 
removing or changing something he shouldn't. You can start the DRBD-MC with 
maximum operating mode that is allowed for the user in the whole application 
and change to the lesser modes on the fly. Of course it can be easily 
circumvented so this is not a security feature, but...

Disabling and hiding of widgets, menus and whole panels should fit nicely 
with the upcoming ACLs, as soon as they figure out how to do it.

Till then, the new operating modes make the configuration and administration 
of a the cluster much easier, faster and almost enjoyable.

There are currently following "Operating Modes":

Read-Only (cmd option --ro):
read-only access is granted, you can view the cluster, add and remove 
clusters to and from your DRBD MC, but you cannot change anything on the 
cluster. This is somewhat equivalent to watching crm_mon, but way more 
informative. Additionally you can start VNC Viewer to work with Virtual 
Machines.

Operator (--op):
you can do the basic tasks like stop, start and migrate resources and put 
nodes to and out of standby, but also resolve DRBD split-brains for example. 
All configuration options are hidden. This is, what it seems, about the 
functionality that Hawk is going to have, but without operations on DRBD and 
VMs.

Administrator (--admin):
this level of access can create, configure, reconfigure and destroy, as well 
as operate the whole cluster, but many most of the options are hidden. This 
is a default operating mode.

Administrator (--admin)/ Advanced:
here are the options, that are seldom needed and/or I am not even sure what 
they do.

Another but hidden operating mode is a God mode. This is useful, as the name 
suggest, only for development and for testing.

http://oss.linbit.com/drbd-mc/img/drbd-mc-0.7.0.png

You can get DRBD MC here:

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/DMC-0.7.0.jar
http://oss.linbit.com/drbd-mc/drbd-mc-0.7.0.tar.gz

You can start it with help of Java Web-Start or you can download it and 
start it with "java -Xmx512m -jar DMC-0.7.0.jar" command. Make sure you use 
the Java from SUN. The openjdk seems to work fine by some time now, but it 
seems to run DRBD MC much slower than the original Java.

Rasto Levrinc

Here is the changelog:
* Removing of DRBD resources was fixed.
* VNC viewer menu in the cluster view was fixed.
* stonith-timeout and priority stonith attributes were added.
* stonith_ prefix for stonith devices in their ids is used.
* When group is stopped, it is indicated in the cluster view.
* "master" and "slave" target-roles for master slave resources were added.
* All missing meta-attributes for groups and clones were added.
* Advisory values from status, meta-data and validate-all operations are not 
used anymore.
* Some global CRM parameters, that didn't have defaults, were fixed.
* Different operating modes were implemented.
* Terminal frame is started as collapsed now.
* Parsing of operation defaults was added.
* Resource defaults were added.
* Metal look-and-feel is forced so that it works on Macs.
* DRBD status after start is not delayed after start-up.
* GUI helper perl script got a version to its file name, so that different 
versions of DRBD-MC can be used at the same time on one cluster.
* Smoother and faster start-up, when there are many resources.

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

