Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 220C4105633D
	for <drbd-announce@lists.linbit.com>;
	Thu, 31 Aug 2017 15:44:57 +0200 (CEST)
Received: by mail-wm0-f45.google.com with SMTP id u26so4827074wma.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 31 Aug 2017 06:44:57 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 31 Aug 2017 15:44:54 +0200
Message-ID: <6130033.TSK9DS0yrj@nuc>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.9 AND drbd-utils-9.1.0
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

in short, this is a _must_ upgrade for every use that uses DRBD in
the SDS use-case. I.e. with diskless primaries. Two bugs where
identified that can cause DRBD to return wrong data to read
requests on the diskless primary node.

drbd
9.0.9-1 (api:genl2/proto:86-112/transport:14)
--------
 * fix occasionally forgotten resyncs in installations where
   diskless primaries are present. The bug tigers when a storage
   node is re-integrated, and it happens to connect to the diskless
   primary first; This bug is severe, since it might cause inconsistent
   data read back on the diskless primary!
 * fix an issue that causes unexpected split-brain situations upon
   connect. This issue triggers only when one of the node has a
   node_id bigger than 3
 * in a cluster with a diskless primary, when a server goes away,
   and is not outdated, outdate it upon reconnect. This gets done
   when it's current UUID does not match the diskless primaries
   exposed data UUID; with this bug present it can lead to
   inconsistent data presented on the diskless primary node to
   readers
 * fix update of exposed data UUID on diskless primaries. It could
   lead to false reject of further diskfull secondaries that
   want to join
 * fix a possible OOPS when in a debug message regarding bitmap
   locking
 * fix discard bigger than 1MiB; The bug causes disconnect with
   bigger discard requests
 * fix left over bits in bitmap on SyncSource after resync; the
   issue was triggered by write requests that come in while the
   resync starts
 * fix peers becoming unexpectedly displayed as D_OUTDATED at the
   end of a resync; While the disk state on the node stays D_UP_TO_DATE
 * fix a race between auto promote and auto demote of multiple volumes
   in a single resource; The symptom was that the a process opening
   the /dev/drbdX for read-write gets an -EROFS errno
 * Speed up down of many resources by using call_rcu() instead
   of synchronize_rcu()
 * Make it compatible with the soon to be released 4.13 kernel

http://www.linbit.com/downloads/drbd/9.0/drbd-9.0.9-1.tar.gz
https://git.linbit.com/drbd-9.0.git/tag/refs/tags/drbd-9.0.9

drbd-utils
9.1.0
--------
 * allow events2 --now polling
 * fix ambiguous inheritance for peer-device-options
 * fixup fallback path for BLKZEROOUT for older kernels
 * fix v9 proxy support
 * modernized XEN scripts
 * reproducible builds support
 * create-md --force for v8.4 (for compat to v9)
 * fix cstate output
 * resize: give resize more time (same as attach)
 * drbdmon: peer-device status, version info, node name
 * "drbdadm status" for v8.4
 * set peer-device-options only once

http://www.linbit.com/downloads/drbd/utils/drbd-utils-9.1.0.tar.gz
https://git.linbit.com/drbd-utils.git/tag/refs/tags/v9.1.0

