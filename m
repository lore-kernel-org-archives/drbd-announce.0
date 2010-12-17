Return-Path: <rasto.levrinc@linbit.com>
Message-ID: <62313.62.178.141.198.1292613101.squirrel@mail.linbit.com>
Date: Fri, 17 Dec 2010 20:11:41 +0100 (CET)
From: "Rasto Levrinc" <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
MIME-Version: 1.0
Content-Type: text/plain;charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Subject: [DRBD-announce] DRBD MC 0.8.6 / Pacemaker GUI
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

This is the next DRBD MC release 0.8.6. DRBD MC is DRBD, Pacemaker and
Virtual Manager GUI. There can be only one. :)

In 0.8.4 were many improvements, but because of a bug in version detection
it stopped working on old Heartbeats <= 2.1.4. It simply used Pacemaker
features for this ancient Heartbeat versions, I don't even want to think
what it was doing to them.

You can get DRBD MC here:

http://oss.linbit.com/drbd-mc/
http://oss.linbit.com/drbd-mc/DMC-0.8.6.jar
http://oss.linbit.com/drbd-mc/drbd-mc-0.8.6.tar.gz


1. You don't need Java on the cluster servers only on your desktop.
2. Download the DMC-0.8.6.jar file.
3. Make sure you use SUN Java not the OpenJDK 1.6.
4. Start it: java -jar DMC-0.8.6.jar
5. It connects to the cluster via SSH.
6. If you use it without DRBD, you have to click "Skip" button on couple of
   places.

DRBD MC is compatible with Heartbeat 2.1.3 (from now on) to the Pacemaker
1.1.3 with Corosync or Heartbeat and DRBD 8.

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD MC http://oss.linbit.com/drbd-mc/
: DRBD MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.


