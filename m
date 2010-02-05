Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
Date: Fri, 5 Feb 2010 08:26:05 +0100
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <201002050826.06449.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD Management Console 0.5.2
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

This is the next DRBD-MC beta release 0.5.2. DRBD-MC is a Java GUI that 
helps to configure DRBD/Pacemaker/Corosync/Openais/Heartbeat clusters.

In this minor release one major bug is fixed, where in some circumstances the 
whole GUI starts to acquire large amounts of memory and hangs indefinitely 
during the initial start. This was introduced in 0.5.1 and it is not a 
normal behavior even for a Java program.

You can get DRBD-MC here:

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/drbd-mc-0.5.2.tar.gz
http://oss.linbit.com/drbd-mc/DMC-0.5.2.jar

You can start it with help of Java Web-Start or you can download it and 
start it with "java -Xmx512m -jar DMC-0.5.2.jar" command.

Here is the almost complete changelog:
* LVM devices are now recognized by Debian
* a warning is shown, if heartbeat:drbd resource agent is used
* adding order to the existing colocation was fixed
* if cibadmin -Q output is not available, cib.xml is used
* deadlock while loading the cluster was fixed
* rc.d check on Debian was fixed
* authkey file for Corosync and Openais installation was added
* split-brain notification script to the pull down menu was added
* crypto modules pull down menus to every option that needs it was added
* online verification was implemented
* if dopd is is selected, the permissions of DRBD user tool are changed
* Totally wrong "Heartbeat is unmaintained" text was removed
* theoretical remaining time for sync is shown in tooltip
* default for on-io-error was changed to detach
* cloned groups were fixed
* wizards were moved to their own subdirectories
* combo box tool tips were fixed and enhanced

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

