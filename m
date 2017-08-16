Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr0-f179.google.com (mail-wr0-f179.google.com
	[209.85.128.179])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 6527F105647D
	for <drbd-announce@lists.linbit.com>;
	Wed, 16 Aug 2017 10:00:43 +0200 (CEST)
Received: by mail-wr0-f179.google.com with SMTP id y96so6710264wrc.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 16 Aug 2017 01:00:43 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 16 Aug 2017 09:54:42 +0200
Message-ID: <1640326.JPjj4xiAQC@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.9rc2
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

due to a number of regressions with the rc1 tag, and more "old" bugs,
we decided to do one more rc before this becomes a final release.

  This release will be very important for users that have diskless,
  primary nodes in their setups.

9.0.9rc2-1 (api:genl2/proto:86-112/transport:14)
--------
 * in a cluster with a diskless primary, when a server goes away,
   and is not outdated, outdate it upon reconnect. This gets done
   when it's current UUID does not match the diskless primaries
   exposed data UUID; with this bug present it can lead to
   inconsistent data presented on the diskless primary node to
   readers
 * fix update of exposed data UUID on diskless primaries. It could
   lead to false reject of futher diskfull secondaries that
   want to join

9.0.9rc1-1 (api:genl2/proto:86-112/transport:14)
--------
 * fix occasionally forgotten resyncs in installations where
   diskless primaries are present. The bug tigers when a storage
   node is re-integrated, and it happens to connect to the diskless
   primary first; This bug is severe, since it might cause inconsistent
   data read back on the diskless primary!
 * fix a possible OOPS when in a debug message regarding bitmap
   locking
 * fix discard bigger than 1MiB; The bug causes disconnect with
   bigger discard requests
 * fix an issue that causes unexpected split-brain situations upon
   connect. This issue triggers only when one of the node has a
   node_id bigger than 3.
 * fix left over bits in bitmap on SyncSource after resync; the
   issue was triggered by write requests that come in while the
   resync starts
 * fix peers becoming unexpectedly displayed as D_OUTDATED at the
   end of a resync; While the disk state on the node stays D_UP_TO_DATE
 * fix a race between auto promote and auto demote of multiple volumes
   in a single resource; The symptom was that the a process opening
   the /dev/drbdX for read-write gets an -EROFS errno

http://www.linbit.com/downloads/drbd/9.0/drbd-9.0.9rc2-1.tar.gz
http://git.drbd.org/drbd-9.0.git/tag/refs/tags/drbd-9.0.9rc2

cheers,
 Phil

