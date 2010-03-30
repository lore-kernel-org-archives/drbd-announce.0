Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
Date: Tue, 30 Mar 2010 21:51:42 +0200
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <201003302151.43558.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD MC / Pacemaker GUI 0.7.1
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

This is the next DRBD MC beta release 0.7.1. DRBD MC, that is also a 
Pacemaker GUI, is a Java application that helps to configure 
DRBD/Pacemaker/Corosync/Heartbeat clusters. It is compatible with Heartbeat 
2.1.3 to the Pacemaker 1.0.8 with both available communication layers and 
DRBD 8.

In this release rather an obscure bug was fixed, where a clone-max resource 
default would be set to 2, while changing one of the other global options 
the first 20 seconds after starting the DRBD MC. It would be quite harmless, 
if setting this default parameter would not prevent IPaddr2 resource agent 
to work unless it is a clone. In my opinion it makes this default option 
useless and it should be fixed in Pacemaker, but anyway it shouldn't be set 
by GUI by mistake.

Here is the changelog:
VM disk views were added.
Start, shutdown, destroy, suspend, resume VM actions were implemented.
New icons were added.
Skip button in cluster connect dialog was added.
failure-timeout was changed to time field.
One host cluster is possible now.
Editing of global DRBD config was fixed.

You can get DRBD MC here:

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/DMC-0.7.1.jar
http://oss.linbit.com/drbd-mc/drbd-mc-0.7.1.tar.gz

You can start it with help of Java Web-Start or you can download it and 
start it with "java -Xmx512m -jar DMC-0.7.1.jar" command. Make sure you use 
the Java from SUN. The openjdk seems to work fine for some time now, but it 
still runs DRBD MC much slower than the original Java.

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

