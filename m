Return-Path: <rasto.levrinc@linbit.com>
Message-ID: <60195.62.178.141.196.1255077191.squirrel@mail.linbit.com>
Date: Fri, 9 Oct 2009 10:33:11 +0200 (CEST)
From: "Rasto Levrinc" <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com
MIME-Version: 1.0
Content-Type: text/plain;charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Cc: drbd-announce@lists.linbit.com
Subject: [DRBD-announce] DRBD Management Console 0.4.0
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

This is the next DRBD-MC beta release 0.4.0.

Many people have asked about master/slave support, so here it is. Now you
can configure and use Linbit:DRBD Resource Agent and other master/slave or
clone resources.

As a matter of fact with the gui it is so easy to setup a master/slave
DRBD resource agent, that it will hopefully stop all this
you-can-do-everything-with-crm-tool crowd. While they can setup everything
as well, it will take them 10 times as long and will make 7 typos in
important places and configure everything upside down. Yes, all this is a
bit of exaggeration, but I saw something like that happening. :)

You should be using the new Linbit:DRBD RA only if you have one of the
latest DRBDs installed >= 8.3.3 and Pacemaker or get at least the newest
Linbit:DRBD RA. You can set it up also for ancient Heartbeats 2.1.4 and
2.1.3, if there are such things, but it may work funny.

If you are upgrading, do not get alarmed, I have changed some colors in
order to make the graphical representation a bit less confusing, so it may
confuse you a bit at first.

In this release there are many bugs fixed, but this being a .0 release,
there may be some new rough edges and it can be actually less stable than
the previous release.

Here is the complete changelog:
* master / slave support was added
* operation combo boxes were fixed
* Fedora11 Openais + Pacemaker repository was added
* new madkiss Debian Lenny repository was added (it does not work out of
the box at the moment)
* support for device minor X syntax in drbd.conf was added
* host scores were reworked
* /dev/mapper... devices in drbd.conf are allowed now
* colors of hosts were changed
* graphical representation of resources, groups and hosts was improved
* tooltips for DRBD 8.3.3 were fixed
* action menu was fixed
* and countless small things

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/drbd-mc-0.4.0.tar.gz
http://oss.linbit.com/drbd-mc/DMC-0.4.0.jar

Rasto Levrinc
-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

