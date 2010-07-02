Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
Date: Fri, 2 Jul 2010 09:40:35 +0200
MIME-Version: 1.0
Message-Id: <201007020940.35903.rasto.levrinc@linbit.com>
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Subject: [DRBD-announce] DRBD MC 0.7.5 / Pacemaker GUI
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

This is the next DRBD MC release 0.7.5. DRBD MC, is a Java application  that 
helps to configure DRBD and Pacemaker. You can start DRBD MC on your  
workstation and connect via SSH to the cluster. DRBD MC is compatible with  
Heartbeat 2.1.3 to the Pacemaker 1.0.9 with Corosync or Heartbeat and DRBD  
8.

In this release it is possible to use resource sets without lot of crazy 
parenthesis with somewhat natural graphical representation, using 
placeholders. You can for example configure resources to start in parallel 
before and after a placeholder. There are also some other uses of resource 
sets, maybe some of them not entirely thought through yet.
See how it looks like:

http://oss.linbit.com/drbd-mc/img/drbd-mc-0.7.5.png

To test the GUI, a test suite was implemented, making the GUI much more 
smoother and stable in the process. If you wonder how to test a GUI, it is 
possible to automate it, but it is much more laborious than to test all 
these command line programs. There is a robot class in Java, that moves the 
mouse and clicks, writes characters into combo boxes and so on. This way the 
GUI can be used with no hands! On the other hand any small change in the 
conditions during tests creates a butterfly effect and a whole test ends up 
in chaos. In fact a butterfly can wiggle the mouse in the evening, making 
the whole subsequent night of testing meaningless. Anyway the automatic GUI 
testing is well worth it.

It turned out, that there is a class of people that tried DRBD MC when it 
came out, it didn't work for them for some reason or another and never 
looked back. There was a reason why I wanted to cal it alpha then. Now it is 
beta and it will most likely just work.

You can get DRBD MC here:

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/DMC-0.7.5.jar
http://oss.linbit.com/drbd-mc/drbd-mc-0.7.5.tar.gz

You can start it with help of Java Web-Start or you can download it and 
start it with "java -Xmx512m -jar DMC-0.7.5.jar" command. Make sure you use 
the Java from SUN. The openjdk seems to work fine for some time now, but it 
seems to run DRBD MC much slower than the original Java.

Here are the most important changes:
* improved stability
* --version option
* test suite implementation
* don't remove dc-version etc, when storing global options
* reenable VM's
* fix sorting of block devices consisting of digits
* implement resource sets
* fix online/offline indicator
* enable the "type to search" in long lists
* fixes for hostnames with capital letters

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
