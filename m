Return-Path: <rasto.levrinc@linbit.com>
Message-ID: <61609.62.178.141.198.1272186312.squirrel@mail.linbit.com>
Date: Sun, 25 Apr 2010 11:05:12 +0200 (CEST)
From: "Rasto Levrinc" <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
MIME-Version: 1.0
Content-Type: text/plain;charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Subject: [DRBD-announce] DRBD MC / Pacemaker GUI 0.7.2
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

This is the next DRBD MC beta release 0.7.2. DRBD MC, is a Java
application that helps to configure DRBD and Pacemaker. If you are
confused about the name you can call the Pacemaker a DRBD Cluster Manager.
:) DRBD MC is compatible with Heartbeat 2.1.3 to the Pacemaker 1.0.8 with
Corosync or Heartbeat messaging layer and DRBD 8.

Picture with some of the new features in this release:

http://oss.linbit.com/drbd-mc/img/drbd-mc-0.7.2.png

In this release you will notice a big graphical overhaul, making the whole
application more visually consistent and prettier. Well, maybe you will
not notice it and it's not that important, but there were also some
functionality improvements.

Have you ever wondered, how some people seem to find quickly what's wrong
with a hopelessly broken cluster and it seems like a magic to you? Now you
can be that person! Log viewers were improved to show the right log files
in the right context, intertwining the logs from all the hosts where
appropriate, parsing and filtering the right information for you.

In the CIB department, the handling of order and colocation constraints
was fixed and improved, so that now all possible negative, positive,
multiple with mixed infinities, minus infinities, opposite directions or
any other nonsensical abuse of constraints is visible in the GUI. Group
resource constraints are supported now as well. It is now also easier to
enter order without a colocation or vice versa. (Resource sets are still
not supported).

You can get DRBD MC here:

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/DMC-0.7.2.jar
http://oss.linbit.com/drbd-mc/drbd-mc-0.7.2.tar.gz

You can start it with help of Java Web-Start or you can download it and
start it with "java -Xmx512m -jar DMC-0.7.2.jar" command. Make sure you
use the Java from SUN. The openjdk seems to work fine for some time now,
but it seems to run DRBD MC much slower than the original Java.

Here are the most important changes:
* make constraints with group services possible
* fix constraints
* make popups translucent during tests
* do not save negative graph positions
* workaround for tooltips hiding menu items
* make colocation-only and order-only menus
* using rsc, with-rsc, first, then for constraint descriptions
* add arrows indicating a direction of colocation
* some cleanup in installation files
* degr-wfc-timeout defaults to 0
* fix DRBD status blinking
* enhanced log file viewers
* preparing GUI test suite
* fix log files for distributions that don't use kern.log
* removed clone meta attrs from rsc_defaults
* rename "load" buttons to "connect" buttons
* graphical overhaul
* add -f option for update-rc.d remove commands
* add remote file browser for VMs, (does not work on Windows, and I tried)
* Ubuntu Lucid support file
* better ignoring of resource sets
* faster popups

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.


