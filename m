Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com,
 drbd-announce@lists.linbit.com
Date: Mon, 20 Apr 2009 13:51:38 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200904201351.39652.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD Management Console 0.2.0
Reply-To: drbd-user@lists.linbit.com, drbd-mc@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Hi,

This is the next DRBD-MC beta release 0.2.0. In this release there are not 
many user-visible changes, but much have changed under the hood: The DRBD-MC 
does not use mgmtd anymore but talks to the cib directly through the 
sockets, so there is no need for hb/pacemaker gui/client packages, mgmtd 
etc. packages on the servers anymore.

Here is the complete changelog:

* removed dependency on mgmtd
* fixed error in the configure DRBD device dialog box
* adding more information about services in the graph
* adding Lenny 5.0.1 version

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/drbd-mc-0.2.0.tar.gz
http://oss.linbit.com/drbd-mc/DMC-0.2.0.jar

Rasto Levrinc
-- 
: Dipl-Ing Rastislav Levrinc
: http://www.drbd.org/mc/management-console/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

