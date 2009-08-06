Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com,
 drbd-announce@lists.linbit.com
Date: Thu, 6 Aug 2009 11:23:46 +0200
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200908061123.46985.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD Management Console 0.3.0
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

This is the next DRBD-MC beta release 0.3.0. In this release support for 
Openais + Pacemaker was improved, not that you must use it right away or 
even worse, change all your working Heartbeat systems to Openais.

Anyway you can now choose if you want Heartbeat or Openais cluster 
communication stack, download, install and configure either one of them. The 
Openais + Pacemaker installation usually contains the whole Heartbeat, this 
is OK, but you may start only one of them at a time.

The packages provided for Openais + Pacemaker work for some distributions 
but for some they do not, so you may have to bug the package "developers", 
if you want to make it work.

Here is the complete changelog:

* much faster response to CIB events was implemented
* OCF scripts from all providers are now detected and can be used (still no
 clone and master slave support)
* indicating of used disk space in the graphical overviews was implemented
* removed or added block devices appear and disappear in the GUI on the fly
* fedora 10 and 11 bugs were fixed
* bugs when adding a DRBD device were fixed
* Openais installation options for all supported distributions were added
* Openais configuration wizard was added
* code was cleaned up, various bugs and visual problems were fixed

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/drbd-mc-0.3.0.tar.gz
http://oss.linbit.com/drbd-mc/DMC-0.3.0.jar

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

