Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 03 Dec 2012 11:50:40 +0100
Message-ID: <7684794.SfV0PgDVb4@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.0pre1.tar.gz
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

After 18 month of work we are happy that we finished the groundwork
for the next generation of DRBD.

In this development effort we moved all connection related attributes 
from the resource object to a dedicated connection object.
A resource can have multiple connections from now on. The advantages
of multiple connections over stacking are:
 * IO is tracked by one activity log (with stacking two ALs)
 * scales to 31 peers (with stacking to two peers)
 * Improved handling

The (optional) automatic promote feature opens new ways to integrate
DRBD with other cluster managers than pacemaker. It is also
useful to keep the dual-primary time short for live-migrations of
virtual machines in pacemaker clusters.

Last not least the improvements in the activity log code allow unseen 
number of IOPS for DRBD replicated storage if the storage is larger 
than the area covered by the AL.

Please keep in mind that this is the first pre-release, it will be
easy to find and trigger bugs. We are aware of that and will release
improved follow releases regularly. -- Please do not send bug reports for
this pre1 release.

9.0.0pre1 (api:genl1/proto:86-110)
--------
 * Support for multiple connections in a single resource; this feature
   obsoletes device stacking; new configuration keywords: connection,
   host, node-id, connection-mesh, hosts.
 * Automatic promote; if a process opens a drbd device for r/w, drbd
   tries to promotes that resource to primary; it the last process
   closes the device drbd demotes that resource to secondary; opens
   fails if promotion fails. This feature obsoletes become-primary-on
 * Activity log striping; Besides the striping this allows AL
   sizes of up to 65536.
 * Non blocking queuing of AL-updates; This change significantly
   improves the number of IOPs in case the workload does not fit into
   the configured AL size.
 * Resync extents are now 128MiByte instead of 16MiBytes

Documentation:
http://www.drbd.org/users-guide-9.0/

Code:
http://oss.linbit.com/drbd/9.0/drbd-9.0.0pre1.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-9.0.git;a=tag;h=refs/tags/drbd-9.0.0pre1

Best,
 Phil

