Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id DD2721057FF0
	for <drbd-announce@lists.linbit.com>;
	Fri,  4 Aug 2017 23:33:28 +0200 (CEST)
Received: by mail-wm0-f45.google.com with SMTP id t201so29027788wmt.0
	for <drbd-announce@lists.linbit.com>;
	Fri, 04 Aug 2017 14:33:28 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 04 Aug 2017 23:26:30 +0200
Message-ID: <5852518.3AtK2rx97R@nuc>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.9rc1
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

good news for the weekend, the next drbd-9 release will be ready
in one week.
Get your test equipment ready next week, and let us know if you 
find anything suspicious.

  This release will be very important for users that have diskless,
  primary nodes in their setups.


drbd
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

http://git.drbd.org/drbd-9.0.git/tag/refs/tags/drbd-9.0.9rc1
http://www.linbit.com/downloads/drbd/9.0/drbd-9.0.9rc1-1.tar.gz

best regards,
 Phil
