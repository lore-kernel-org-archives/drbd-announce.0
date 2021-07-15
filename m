Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 414844202B8
	for <drbd-announce@lists.linbit.com>;
	Thu, 15 Jul 2021 15:00:58 +0200 (CEST)
Received: by mail-wr1-f47.google.com with SMTP id r11so7656471wro.9
	for <drbd-announce@lists.linbit.com>;
	Thu, 15 Jul 2021 06:00:58 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Thu, 15 Jul 2021 15:00:46 +0200
Message-ID: <CADGDV=XT4CFiOPz9r1Z7e9rZnDc3zGN9jRtbW2KGxpBt7MjqZA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.30 & drbd-9.1.3
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <https://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <https://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Hi,

Here is the final of drbd-9.0.30 & drbd-9.1.3. No changes that are
worth mentioning since the rc1.

In general, this is a "small" release. I am happy to see that the
issues in the 9.1 branch get shaken out as it is more tested and used.

For autumn, we will have two changes in the works for the 9.1 branch.
One will reduce the application-IO vs resync-IO lockout, ensuring
smother IO latencies for applications during resync. The other one, if
it works out, will reduce IO latencies for all workloads.

9.0.30-1 (api:genl2/proto:86-120/transport:14)
--------
 * fix a crash when drbd-9 node gets connected to a drbd-8.4 node, the
   regression was introduced between 9.0.25 and 9.0.26
 * A improved approach to serialize rsyncs from multiple sources; the previous
   one could cause wrong accounting for online verify
 * fix a race condition that could cause resync operations to stall when the
   completion of one resync allows another one to proceed
 * fix a race condition that could cause an online verify operation to not
   terminate under specific conditions (corking enabled no other IO)
 * fix locking of drbd_devices idr that caused (very rarely) create/remove
   minor to fail

9.1.3 (api:genl2/proto:110-120/transport:17)
--------
 * merged all fixes from drbd-9.0.30-0rc1
 * fix a corner-case NULL deref in the lockless buffer pages handling; the
   regression was introduced with 9.1.0 (released Feb 2021); To my knowledge
   it took 6 months until someone triggered it for the first time
 * fix sending a P_PEERS_IN_SYNC packet into a fresh connection (before
   handshake packets); this problem was introduced when the drbd-8.x
   compatibility code was removed
 * remove sending a DRBD-barrier packet when processing a REQ_PREFLUSH
   request, that improves IO-depth and improves performance with that


https://pkg.linbit.com/downloads/drbd/9.0/drbd-9.0.30-1.tar.gz
https://github.com/LINBIT/drbd/commit/10bee2d57dcbc48836ac61bad434590b7b82917e

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.3.tar.gz
https://github.com/LINBIT/drbd/commit/bc157732ca77eae4033c99f1985cfdb38e52a355

- Philipp
