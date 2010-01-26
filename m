Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
Date: Tue, 26 Jan 2010 11:11:35 +0100
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <201001261111.35863.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD Management Console 0.5.1
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

This is the next DRBD-MC beta release 0.5.1. DRBD-MC is a Java GUI that 
helps to configure DRBD/Pacemaker/Corosync/Openais/Heartbeat clusters.

In this minor release many annoying bugs were fixed and some long missing
features were implemented. For example you can now remove cluster from the 
GUI without actually editing the XML config file. Finally, in this release 
stonith devices can be configured and used in the GUI as any other service.

For some advanced folks out there, id-refs for meta-attributes and 
operations are now parsed and used in the GUI and location constraints can 
use "ne" operation and not only "eq".

You can get DRBD-MC here:

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/drbd-mc-0.5.1.tar.gz
http://oss.linbit.com/drbd-mc/DMC-0.5.1.jar

You can start it with help of Java Web-Start or you can download it and 
start it with "java -jar DMC-0.5.1.jar" command.

See some new features in the screenshot:

http://oss.linbit.com/drbd-mc/img/drbd-mc-0.5.1.png

Here is the almost complete changelog:

* config is saved now just before the DRBD-MC exits
* leading / is now not required for mount point
* using other operations than "eq" in location constraints was implemented
* meta-disk on-mouse-over text was fixed
* combo boxes all around the application were fixed and improved
* DRBD 8.3.7 installation was fixed
* id-refs for operations and meta-attributes were implemented
* stonith devices were added
* host reconnecting was improved
* adding-and-removing-of-clusters feature was completed
* "Remove Marked Clusters" button was implemented
* drbd.conf parsing was fixed

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

