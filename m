Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 20 Jan 2015 13:29:11 +0100
Message-ID: <2066153.j5FZ22asyV@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.0rc1.tar.gz & drbd-utils-8.9.2rc2.tar.gz
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

In the last months the focus on the kernel side was to get
it into shape to form a usable base for drbdmanage and
the OpenStack cinder driver for drbd.

It is time to share the results of this work with a wider
audience. 

We are testing here mainly on CentOS 6 VMs. Mirroring
between up to 8 nodes works usually. Usually no kernel crashes,
no refcount errors (module unload works), no protocol errors,
resyncs run in the right direction and do the right blocks.

Known issues:
 * It breaks a lot on pre-empt kernels. (Usual distros not affected)
 * Concurrent drbdadm down seems to trigger issued
 * Still possible to deadlock in the write path on a SyncTarget/Primary
   node. Though does not happen frequently.
 
The fitting drbdmanage will be announced in a few hours
today.

Please note that drbd-utils-8.9.2rc2 has to be used with the
drbd-9.0.0rc1 kernel driver. Meta data format for 9.0 was changed
again. I.e. meta-data created by older tools are not compatible
with the 9.0.0rc1 kernel driver.


drbd
9.0.0rc1 (api:genl1/proto:86-110)
--------
 * some work on drbd-9.0 to drbd-8.4 compatibility
 * many bug fixes to all areas of the new code; especially the
   the resync procedure, which is a lot more complex than it's
   8.4 ancestor
 * a transport abstraction layer that will allow for alternative
   transports besides TCP. Planed are RDMA/Infiniband and SCTP

http://oss.linbit.com/drbd/9.0/drbd-9.0.0rc1.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-9.0.git;a=tag;h=refs/tags/drbd-9.0.0rc1


drbd-utils 
8.9.2rc2
--------
  * drbdadm 9: Log errors to syslog if stderr is not available
  * init script: fixes for stacked resources
  * fix regression corner cases in bitmap size calculation
  * allow create-md to initialize peer-max-bio-size to 1M
  * make transport selectable
  * fix aggregating drbdsetup / drbdmeta exit statii
  * some documentation fixes (content and build)
  * added direct-connect command
  * incompatible drbd-9 metadata format changeuse: node_id as index for
    peer_md instead of the bitmap_index
  * drbdadm/meta/usage_cnt: ensure output is visible
  * drbdsetup: fix arguments for all commands expecting a peer_device
  * exit codes: redefine E_USAGE to 1 (not 3)
  * some build changes
  * init script: on start, first try to load the module
  * drbdsetup events2: Improve how timestamps are assigned

8.9.2rc1
--------
  * udev rules (symlinks in /dev/by-res and by-disk) got fixed
  * Fixed upper limit for drbd-8.4 activity log entries
  * many fixes to drbdadm adjust and proxy commands for drbd-9
  * rhcs_fence: Do not invoke fence agents in parallel, rewrite in bash
  * drbdsetup events2 is now also available in drbd-8.4 (backported from drbd-9)
  * reorganized the repository have common code for drbd-9, drbd-8.4
    and drbd-8.3 only once
  * Fix drbd.ocf for resources without volume 0

http://oss.linbit.com/drbd/drbd-utils-8.9.2rc2.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-utils.git;a=tag;h=refs/tags/v8.9.2rc2

Best regards,
 phil

