Return-Path: <rasto.levrinc@linbit.com>
Message-ID: <62189.62.178.141.198.1298410800.squirrel@mail.linbit.com>
Date: Tue, 22 Feb 2011 22:40:00 +0100 (CET)
From: "Rasto Levrinc" <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
MIME-Version: 1.0
Content-Type: text/plain;charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Subject: [DRBD-announce] DRBD MC 0.9.0 / Pacemaker GUI
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

This is the next DRBD MC release 0.9.0. DRBD MC is DRBD, Pacemaker and
Virtual Manager GUI.

There are couple of new features in this release: The Heartbeat config
form has now all the important options, virtual manager works with Xen,
Pacemaker init script is used, if mcp is used, zooming and scrolling is
improved, DRBD MC generates now drbd.d/ style config, DRBD common section
is generated now as well, Debian Squeeze is supported, Pacemaker 1.1.5 is
supported and the whole application has been translated to Japanese, phew!

You may be surprised to hear it, but I actually didn't translate it to
Japanese all alone, but Takashi Takizawa helped me a little. Well,
actually he did the whole thing, what I assume to be a Japanese
translation. ^_^

You can get DRBD MC here:
http://oss.linbit.com/drbd-mc/
http://oss.linbit.com/drbd-mc/DMC-0.9.0.jar
http://oss.linbit.com/drbd-mc/drbd-mc-0.9.0.tar.gz

1. You don't need Java on the cluster servers only on your desktop.
2. Download the DMC-0.9.0.jar file.
3. Make sure you use SUN Java not the OpenJDK 1.6.
4. Start it: java -jar DMC-0.9.0.jar
5. It connects to the cluster via SSH.
6. If you use it without DRBD, you have to click "Skip" button on couple of
   places.

DRBD MC is compatible with Heartbeat 2.1.3 to the Pacemaker 1.1.5 with
Corosync or Heartbeat and DRBD 8.

The most important changes:
*  fix performance problem with new services
*  change Corosync/Pacemaker repo for sles11sp1
*  show less errors in the output
*  disable menu blinking
*  fix status in a clone, if clone's target-role is set
*  fix skip button in installation disk dialog
*  make it work with debian squeeze
*  allow canceling of the ssh connection
*  improve scrolling and zooming behavior of graphs
*  add common section to the DRBD view
*  add --big-drbd-conf option to use old style configs
*  make drbd.d style DRBD config
*  make overwriting of config files atomic
*  assume root user, if none is specified in more hops
*  make it work with Pacemaker 1.1.5
*  don't choke on unknown DRBD options
*  Japanese translation
*  vm gui for Xen
*  use Pacemaker init script if appropriate
*  improve parsing of corosync.conf
*  add more Heartbeat options in hb config dialog
*  refresh right panel, when hosts are going online
*  add all important ha.cf configuration options

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD MC http://oss.linbit.com/drbd-mc/
: DRBD MC http://www.drbd.org/mc/management-console/


