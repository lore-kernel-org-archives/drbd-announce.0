Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 19 Sep 2014 22:04:22 +0200
Message-ID: <1465123.TPbvGT4quk@phil-dell-xps.local>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.0pre10.tar.gz & drbd-utils-8.9.2rc1.tar.gz
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

in drbd-utils a number of fixes got queued up, so it is time
to start a new release cycle of it.
Last not least is has a number of important fixes in the
drbd-9 user-space parts.

On the kernel driver side, it is more than 6 month ago, since
the last pre release. A lot was done in the meantime. The most
time consuming part was probably the complete merge of the
drbd-8.4 branch into the drbd-9 branch.
A lot of progress was made on the stability of the driver.
Kernel crashes are no longer an issue we are confronted in
out day to day work on the code. As long as you do not dig
into our test suite drbd-9 behaves mostly reasonable these 
days.

Please let us know if you find issues.

This are a release candidates. Do not use in production.



drbd-utils 8.9.2rc1
--------
  * udev rules (symlinks in /dev/by-res and by-disk) got fixed
  * Fixed upper limit for drbd-8.4 activity log entries
  * many fixes to drbdadm adjust and proxy commands for drbd-9
  * rhcs_fence: Do not invoke fence agents in parallel, rewrite in bash
  * drbdsetup events2 is now also available in drbd-8.4 (backported from
    drbd-9)
  * reorganized the repository have common code for drbd-9, drbd-8.4
    and drbd-8.3 only once
  * Fix drbd.ocf for resources without volume 0

http://oss.linbit.com/drbd/drbd-utils-8.9.2rc1.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-utils.git;a=tag;h=refs/tags/v8.9.2rc1


drbd 9.0.0pre10 (api:genl1/proto:86-110)
--------
 * completed the merge from the 8.4 branch (including debugfs)
 * final fixes on the reference counts
 * many fixes to the state engine to express the drbd9 semantics
 * nodes not directly connected to a newly promoted primary
   now outdate themselves in the two-phase commit operation
 * fix disallowing of detach in case the device is opened
   read only
 * fixed resync: When a node is SyncSource to multiple targets
   make sure that all targets get informed about blocks set
   in sync on the other nodes (Last of those packets was
   not sent previously)
 * fixed resync: Sometimes froze due to a forgotten act
   log entry on secondary nodes
 * fixes and improvements to the UUID modifications for resync
   decissions
 * fixed resync: No longer wake more than one paused resync
   operations
 * fixed role changes on resources without volumes

http://oss.linbit.com/drbd/9.0/drbd-9.0.0pre10.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-9.0.git;a=tag;h=refs/tags/drbd-9.0.0pre10

