Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com,
 drbd-announce@lists.linbit.com
Date: Mon, 30 Mar 2009 15:54:06 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200903301554.07426.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD Management Console 0.1.3
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

This is the next DRBD-MC beta release 0.1.3. Most notably in this release 
the saving and loading of the XML config file and administration of clusters 
was redesigned.

Here is the complete changelog:

* making ssh port configurable, fixing timeouts for ssh as well
* new load system
* fixing behavior: when one node comes after it was down 
* passwords that were entered correctly once, do not have to be entered 
again
* adding buttons for removing, stopping and starting of the clusters, 
removing being still disabled
* Sles11 support, the DRBD part
* fixing package detection for Sles10
* small dialog fixes
* fixed race in progress indicator
* fedora support was added
* added more Redhat/Centos/Rhel 5.1 and 5.2 versions 
* allowing hostnames with domain name
* adding "no hard disc" icon
* slightly changing the color of the second host

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/drbd-mc-0.1.3.tar.gz
http://oss.linbit.com/drbd-mc/DMC-0.1.3.jar

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: http://www.drbd.org/mc/management-console/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

