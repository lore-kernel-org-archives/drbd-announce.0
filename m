Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
Date: Wed, 28 Oct 2009 11:04:35 +0100
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200910281104.35794.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD Management Console 0.4.1
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

This is the next DRBD-MC beta release 0.4.1. DRBD-MC is a Java GUI that 
helps to configure DRBD/Pacemaker/Corosync/Openais/Heartbeat clusters. With 
DRBD-MC it is surprisingly easy to configure a subset of Pacemaker that is 
needed for DRBD, but it also may be useful for Pacemaker clusters without 
DRBD. You can connect with DRBD-MC to your existing clusters via SSH and see 
it for yourself, or you can start from scratch and DRBD-MC will install and 
configure everything for you.

In this release there is not any new great feature like last time, but there 
are some incremental improvements. The performance of loading and adding of 
services was improved, so now if you can run gta4 on your system, you should 
not have any problem to run this, even at the same time!

Host, resources etc. action menus were cleaned up. Yes, you can actually 
right-click on stuff in the graphs and do stuff there! In Pacemaker graph it 
is now possible to see immediately, if resource was migrated, unmanaged, 
host is in standby or other stuff you have done and may have forgotten. See 
all this in one screenshot:

http://oss.linbit.com/drbd-mc/img/drbd-mc-0.4.1.png

At the moment we live through unhappy times of transition from Heartbeat to 
Pacemaker with or without Heartbeat or Openais and from Openais to Corosync 
with or without Openais, on top of that some of the components do not work 
with some versions but work with other, in short you may experience problems 
installing the beast. The DRBD-MC helps to install recent binary packages on 
following distributions:

Fedora 11, Fedora 10, RHEL 5, RHEL 4, Centos 5, SLES 10, SLES 11,
Opensuse 11.1, Ubuntu Hardy and Ubuntu Karmic.

The following distributions work with DRBD-MC but contain only old not
recommended Heartbeat binary packages:

Debian Lenny (but new packages are underway), Ubuntu Intrepid, Ubuntu Jaunty
and Openfiler.

You can get DRBD-MC here:

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/drbd-mc-0.4.1.tar.gz
http://oss.linbit.com/drbd-mc/DMC-0.4.1.jar

Here is the almost complete changelog:
* menu items to create a kernel panic or reboot for cluster testing were 
added ("are you sure" dialog will come in the next release)
* cleanup is called automatically before applying changes to a failed 
service (making life even easier)
* support for Ubuntu Karmic was added (they  keep renaming the distro)
* support for Openfiler was added (because it was there)
* check for DRBD-MC available upgrade was added (calling home)
* filename were the saving is done is shown during saving (so you know where 
is this file from)
* "always" and "never" keywords for host scores were added (infinity
and -infinity were too mathematical for a GUI)
* "after" option for drbd.conf was fixed
* --auto option for automatic GUI testing was added (now I can lay back and 
test it at the same time)
* Pacemaker installation on some distributions was fixed (I actually tested 
it this time)
* apply button not being enabled for new services was fixed

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

