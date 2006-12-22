Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (unknown [86.59.100.100])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 2F4742CFF5DB
	for <drbd-announce@lists.linbit.com>;
	Fri, 22 Dec 2006 16:49:16 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 22 Dec 2006 16:49:16 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200612221649.17070.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0rc1.tar.gz
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

This is Release Candidate 1 of DRBD-8.0 . It survived a lot of testing
in various testing environments and pre production installations.

8.0rc1 (api:86/proto:85)
--------
 * The drbd-peer-outdater got updated to work in multi node heartbeat
   clusters. (But we still not suceeded to get this into Heartbeat's 
   repository accepted.)
 * Fixed resync decission after a crash in a pri-pri cluster.
 * Implemented the ping-timeout option for "sub-second" failover clusters.
 * Implemented all the "violently" options in the reconnect handling.
 * Updated man pages of drbd.conf and drbdsetup.
 * Removed the "self-claiming" on secondary nodes.
 * Fixed an uncountable number of bugs.

http://oss.linbit.com/drbd/8.0/drbd-8.0rc1.tar.gz
http://svn.drbd.org/drbd/tags/drbd-8.0rc1/

Happy Xmas and happy early adopting.

-philipp
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
