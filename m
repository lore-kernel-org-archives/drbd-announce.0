Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com,
 drbd-announce@lists.linbit.com
Date: Thu, 4 Jun 2009 10:27:23 +0200
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200906041027.25559.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD Management Console 0.2.3
Reply-To: drbd-user@lists.linbit.com
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

This is the next DRBD-MC beta release 0.2.3. In this release different
methods to install DRBD in different Linux distribution were added, including
the one from source. An important bug, where colocations were created in
different order as anybody would expect, was fixed as well.

Here is the complete changelog:

* fedora 10's OCF locations were fixed

* rcS scripts in the HB/Pacemaker installation were added, so that 
HB/Pacemaker starts after a reboot

* distribution detection was improved

* support for opensuse 11 was added

* different DRBD installation methods including installation from source were 
added

* initial colocation direction, so that it matches the order constraint was 
fixed

* "I am new here" button with help text for people to get started, was 
added.

* detection of disconnection of a host or hosts was fixed

* a bug where exiting of the DMC could hang was fixed.

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/drbd-mc-0.2.3.tar.gz
http://oss.linbit.com/drbd-mc/DMC-0.2.3.jar

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: http://www.drbd.org/mc/management-console/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

