Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com,
 drbd-announce@lists.linbit.com
Date: Fri, 22 May 2009 11:56:54 +0200
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200905221156.55325.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD Management Console 0.2.2
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

This is the next DRBD-MC beta release 0.2.2. In this release the focus was 
on improved usability and DRBD-MC code was further stabilized.

Here is the complete changelog:

* fixed bug with user entered ids
* made terminal window to recognize control characters, thus making the  
output nicer
* username and password to the Linbit download area are now saved to the XML   
file
* a backup is made of config files that are overwritten
* udev check that is not necessary anymore, was removed
* fixed cluster wizard, that was started from already configured cluster
* saving and loading of positions of services in the graph was fixed
* fixed create hb config dialog bug, when it was reentered from the next
  dialog
* showing only really failed services as failed
* allowing clean-up only of failed services
* changing default installation method for Ubuntu Hardy to point to the
   opensuse repository. It may still not work for 32 bit Hardy.

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/drbd-mc-0.2.2.tar.gz
http://oss.linbit.com/drbd-mc/DMC-0.2.2.jar

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: http://www.drbd.org/mc/management-console/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
