Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 17 Mar 2009 12:56:39 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200903171256.40314.rasto.levrinc@linbit.com>
Cc: drbd-mc@lists.linbit.com
Subject: [DRBD-announce] DRBD Management Console 0.1.2
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

This is the next DRBD-MC beta release 0.1.2 . The most important new 
features are support for Heartbeat 2.1.4 and 2.99.3 with Pacemaker.

It is possible to use the gui with Pacemaker and OpenAis as well, if the
OpenAis is installed and configured by hand.

The release contains many bug fixes, here is the complete changelog:

* Fixed bug that prevented the drbd-gui-helper to run on server with    
language other than English
* Adding Ubuntu Jaunty support
* Fixing/Adding RHEL4 and RHEL5 support
* Fixing SLES10 support
* udev detection fix, that prevented the gui to run for example on
  Ubuntu Jaunty.
* Adding skip button for some dialogs, enabling to use the gui
  without DRBD. Skip buttons can be also used to run Pacemaker with OpenAis.
* Heartbeat 2.1.4 fixes
* Adding Pacemaker with Heartbeat 2.99.2 support
* Fix for Debian Lenny to find the debian-lenny directory on LINBIT download 
page automatically.
* Some components were further renamed from drbd-gui to drbd-mc
* Fixing plenty of gui issues
* Various Heartbeat interaction bug fixes
* Fixed bug with drbddisk that was sometimes initialized without a   
resource name  
* Various small visual fixes

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/drbd-mc-0.1.2.tar.gz
http://oss.linbit.com/drbd-mc/DMC-0.1.2.jar

Rasto Levrinc

--

: Dipl-Ing Rasto Levrinc
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-58, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

