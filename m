Return-Path: <rasto.levrinc@linbit.com>
Date: Mon, 24 Jan 2011 19:21:11 +0100
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
Message-ID: <20110124182111.GA21296@barkeeper1-xen.linbit>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] DRBD MC 0.8.12 / Pacemaker GUI
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

This is the next DRBD MC release 0.8.12. DRBD MC is DRBD, Pacemaker and
Virtual Manager GUI.

This is a minor release that focuses on fixing bugs and doing what is
expected, but don't worry, it's not self-aware yet.

To keep people from command line longer, there's now start/stop Heartbeat
option in host popup menus, or start/stop Corosync if this is what you have. 

To do what is right, migrating away a DRBD master/slave resource now works
so that DRBD is not stopped but stays slave.

To make more and more options available, the group attributes "collocated"
and "ordered" were added. On the other hand these options are an abomination 
according to Beekhof, and shouldn't be used, so they are hidden in the
abomination section, I mean advanced section.

You can get DRBD MC here:

http://oss.linbit.com/drbd-mc/
http://oss.linbit.com/drbd-mc/DMC-0.8.12.jar
http://oss.linbit.com/drbd-mc/drbd-mc-0.8.12.tar.gz

1. You don't need Java on the cluster servers only on your desktop. 
2. Download the DMC-0.8.12.jar file.
3. Make sure you use SUN Java not the OpenJDK 1.6.
4. Start it: java -jar DMC-0.8.12.jar
5. It connects to the cluster via SSH.
6. If you use it without DRBD, you have to click "Skip" button on couple of
   places.

DRBD MC is compatible with Heartbeat 2.1.3 to the Pacemaker 1.1.4 with
Corosync or Heartbeat and DRBD 8.

The most important changes:
0.8.12
* add "ordered" and "collocated" group meta attributes
* migrate only role=Master in master slave resources
* start heartbeat/corosync menu items
* fix status view in the graph
* fix updating of action menu
* allow using openais init script if available
0.8.10
* fix lvm resizing
* improve startup
* disable VM menu items that are used by CRM
* install make before compiling DRBD on rhel6
* don't use reload to start the heartbeat
* fix back buttons in cluster wizard
* don't migrate group services if migrating everything
* add rhel6 support file
* fix offline, online node status
* fix sudo, allow "require tty" again
* make the DRBD options work on gentoo
* enable known hosts file for all osses except of windows
* fix migrate all resources
* fix stonith info

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD MC http://oss.linbit.com/drbd-mc/
: DRBD MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
