Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 15 Apr 2013 19:05:15 +0200
Message-ID: <19516871.gXK25SjXY9@phil-dell-xps>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.0pre2.tar.gz
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

We want to share our progress with the world. This is not yet
a release candidate, but it is a considerably step further than
the pre1 release.

Resync decisions should work by now for the multiple connection
world of drbd9.

The configuration file got the new keyword "connection-mesh"
for convenience.

Enjoy exploring the drbd9 world!

9.0.0pre2 (api:genl1/proto:86-110)
--------
 * Introduced two phase commits that span include all (direct
   and indirectly) connected nodes. This new type of transactions
   is used when a node becomes primary, or when a new connection
   is established.
 * Introduce a new state flag "weak"; if it is set, the node has
   no direct connection to a primary node, but a primary node is
   present in the cluster.
 * Reworked resync decisions for multiple connections, and weakly
   connected nodes.


http://oss.linbit.com/drbd/9.0/drbd-9.0.0pre2.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-9.0.git;a=tag;h=refs/tags/drbd-9.0.0pre2

Best,
 Phil

