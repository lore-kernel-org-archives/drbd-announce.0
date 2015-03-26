Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 26 Mar 2015 11:08:27 +0100
Message-ID: <2052558.FXNHCM5iJK@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.4.6rc1.tar.gz AND drbd-utils-8.9.2rc4.tar.gz
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

It really got time to push an drbd-8.4 release out. Over the course
over the last 9 month (yes, 8.4.5 is already nine month old), no
major issues where discovered.

The major driving force in this time period are customers that want
to see more performance on their latest generation SSDs.

The final release is scheduled in one week from now.

Please help testing the release candidate.

drbd
8.4.6rc1 (api:genl1/proto:86-101)
-------
 * fix failing of user space helpers since kernel 3.13. This bug is known as
   'out of mem, failed to invoke fence-peer helper'
 * fix connection timeouts for resources with multiple volumes
 * fix an issue with DRBD on linux software raid by properly remapping
   bi_bdev
 * fix a (hard to trigger) race condition between promoting to primary an
   connection handshake. In case the bug was hit the Primary got stuck in
   WFBitmapS connection state
 * Fix a NULL deref when resuming IO on a diskless primary
 * Fix compile issues with uncommon architectures
 * improvements to asender performance. With high end backing storage and
   networking equipment you may see IOPS improvements between 25% to 50%.
   Highest number on a single drbd seen by LINBIT so far: 160000 IOPS
 * backport of events2 and status commands from drbd9. This allows to be
   DRBD9 compatible starting with this release, and to get used to DRBD9
   compatible status reporting

http://oss.linbit.com/drbd/8.4/drbd-8.4.6rc1.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-8.4.git;a=tag;h=refs/tags/drbd-8.4.6rc1

drbd-utils
8.9.2rc4
--------
  * change systemd unit file: basically just call the init script
  * make some previously hardcoded timeouts configurable
  * drbdadm: New command peer-device-options
  * drbd 9: Move max_buffers to net_conf
  * drbd 9: Log errors to syslog if stderr is not available
  * init script: fixes for stacked resources
  * fix regression corner cases in bitmap size calculation
  * allow create-md to initialize peer-max-bio-size to 1M
  * drbd 9: make transport selectable
  * fix aggregating drbdsetup / drbdmeta exit statii
  * some documentation fixes (content and build)
  * added direct-connect command
  * incompatible drbd-9 metadata format change. use: node_id as index for
    peer_md instead of the bitmap_index
  * drbdadm/meta/usage_cnt: ensure output is visible
  * drbdsetup: fix arguments for all commands expecting a peer_device
  * exit codes: redefine E_USAGE to 1 (not 3)
  * some build changes
  * init script: on start, first try to load the module
  * drbdsetup events2: Improve how timestamps are assigned
  * udev rules (symlinks in /dev/by-res and by-disk) got fixed
  * Fixed upper limit for drbd-8.4 activity log entries
  * many fixes to drbdadm adjust and proxy commands for drbd-9
  * rhcs_fence: Do not invoke fence agents in parallel, rewrite in bash
  * drbdsetup events2 is now also available in drbd-8.4 (backported from
    drbd-9)
  * reorganized the repository have common code for drbd-9, drbd-8.4
    and drbd-8.3 only once
  * Fix drbd.ocf for resources without volume 0

http://oss.linbit.com/drbd/drbd-utils-8.9.2rc4.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-utils.git;a=tag;h=refs/tags/v8.9.2rc4

 phil
