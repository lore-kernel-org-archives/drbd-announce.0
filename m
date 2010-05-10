Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
Date: Mon, 10 May 2010 10:14:58 +0200
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <201005101014.58972.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD MC / Pacemaker GUI 0.7.3
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

This is the next DRBD MC beta release 0.7.3. DRBD MC, is a Java application 
that helps to configure DRBD and Pacemaker.  DRBD MC is compatible with 
Heartbeat 2.1.3 to the Pacemaker 1.0.8 with Corosync or Heartbeat and DRBD 
8.

In this release many minor uninteresting bugs were fixed. Other than that, 
now it is possible to log in with user account and use sudo to execute all 
the commands.

Picture: http://oss.linbit.com/drbd-mc/img/drbd-mc-0.7.3.png

You can get DRBD MC here:

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/DMC-0.7.3.jar
http://oss.linbit.com/drbd-mc/drbd-mc-0.7.3.tar.gz

You can start it with help of Java Web-Start or you can download it and 
start it with "java -Xmx512m -jar DMC-0.7.3.jar" command. Make sure you use 
the Java from SUN. The openjdk seems to work fine for some time now, but it 
seems to run DRBD MC much slower than the original Java.

Here are the most important changes:
* do not show group as migrated if one of its resources is migrated
* show resources as migrated only if they were migrated
* fix constraints with not committed services
* update ssh library
* use different timeouts for SSH commands
* fix possible null pointer exception in groups
* hide pcmk source and testing installation options
* add installation option from Sles 11 HAE
* show resources that don't have installed RA
* move advanced options hint up
* show dm devices in DRBD view
* fix popup menus
* refresh cluster view if CRM status changed
* expand terminal area in dialogs
* fix usage of old type="after" order constraint
* use "first" and "then" in order action description
* fix on-mouse-over bug when using Heartbeat 2.1.4
* add sudo feature

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

