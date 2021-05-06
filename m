Return-Path: <philipp.reisner@linbit.com>
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com
	[209.85.166.173])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 9148042032D
	for <drbd-announce@lists.linbit.com>;
	Thu,  6 May 2021 15:53:36 +0200 (CEST)
Received: by mail-il1-f173.google.com with SMTP id a9so4800131ilh.9
	for <drbd-announce@lists.linbit.com>;
	Thu, 06 May 2021 06:53:36 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Thu, 6 May 2021 15:53:24 +0200
Message-ID: <CADGDV=VjyrCYaRugdQ3rkJe+YCfH4Ru9GkaVgPb-Mg2ORS2qtA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.29-1 & drbd-9.1.2
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

Hello,

I have the honor to announce new DRBD releases.

We got a report about data corruption on DRBD volumes if the backing device is
a degraded Linux software raid 5 (or raid 6). Affected are kernels >=4.3. I.e.
the distros: RHEL8/CentOS8/AlmaLinux8/RockyLinux8, Xenial and newer etc.
Not affected: RHEL7 and all distros with kernels before 4.3
For explaining what was going on, let me explain what a 'read ahead' request
is. When a user-space application reads some file via the file-system some
(regular) read requests might get submitted to a block device. The page-cache
often appends a few 'read ahead' requests to that to already pre-load the data
that the application might want to see soon.
These 'read ahead' requests are special in the way that a block device might
decide 'out of convenience' to fail them. Here comes the relation to a
degraded software raid 5/6. A degraded software raid is not in a convenient
position, it's stripe cache is under pressure because it needs to restore data
blocks by doing reverse parity calculations in the stripe cache. So, it is not
unusual that read-ahead requests get failed by the md-driver while it misses
one of its backing disks.
The bug that we had in DRBD is, that when DRBD has to split a big IO request
into smaller parts, and only some of the parts are failed by DRBD's backing
disk it failed to correctly combine the return codes of the individual
parts. So, it happened that it returns a large read-ahead request to the page
cache as successfully read-ahead, although some parts of it were not filled
with data from the storage.
The result is not only that the application might get corrupt data, if one of
those pages is partially touched by user-space it might also be written back
to storage.
This is fixed in DRBD now. It is also an interesting story how this bug
happened. It is closely connected in how upstream Linux evolved, and we
suspect that there are some other places in the kernel broken in the same way.
We are looking into that.

In other news, after introducing quorum to DRBD the first adopters used it
with the on-no-quorum=io-error. That is the preferable setting for HA
clusters, where you want to terminate your application in case a primary node
loses quorum.
The other possibility is on-no-quorum=suspend-io. That was neglected in the
past and had a few bugs in it. With this relase, this mode works nicely and
you can recover a primary without quorum by either adding nodes to or by
changing the quorum setting. The frozen applications will either unfreeze or
get IO errors.

The last thing I want to mention is that the `invalidate` and
`invalidate-remote` commands got a new option `--reset-bitmap=no`. That allows
you to resync differences found by using online verify.

If you are not on software raid and not using quorum with
on-no-quorum=suspend-io this release still brings several minor bug fixes.
Still, I recommend upgrading to this release.


9.0.29-1 (api:genl2/proto:86-120/transport:14)
--------
 * fix data corruption when DRBD's backing disk is a degraded Linux software
   raid (MD)
 * add correct thawing of IO requests after IO was frozen due to loss of quorum
 * fix timeout detection after idle periods and for configs with ko-count
   when a disk on an a secondary stops delivering IO-completion events
 * fixed an issue where UUIDs where not shifted in the history slots; that
   caused false "unrelated data" events
 * fix switching resync sources by letting resync requests drain before
   issuing resync requests to the new source; before the fix, it could happen
   that the resync does not terminate since a late reply from the previous
   caused a out-of-sync bit set after the "scan point"
 * fix a temporal deadlock you could trigger when you exercise promotion races
   and mix some read-only openers into the test case
 * fix for bitmap-copy operation in a very specific and unlikely case where
   two nodes do a bitmap-based resync due to disk-states
 * fix size negotiation when combining nodes of different CPU architectures
   that have different page sizes
 * fix a very rare race where DRBD reported wrong magic in a header
   packet right after reconnecting
 * fix a case where DRBD ends up reporting unrelated data; it affected
   thinly allocated resources with a diskless node in a recreate from day0
   event
 * speedup open() of drbd devices if promote has not chance to go through
 * new option "--reset-bitmap=no" for the invalidate and invalidate-remote
   commands; this allows to do a resync after online verify found differences
 * changes to socket buffer sizes get applied to established connections
   immediately; before it was applied after a re-connect
 * add exists events for path objects
 * forbid keyed hash algorithms for online verify, csyms and HMAC base alg
 * following upstream changes to DRBD up to Linux 5.12 and updated compat
   rules to support up to Linux 5.12

9.1.2 (api:genl2/proto:110-120/transport:17)
--------
 * merged all fixes from drbd-9.0.29; other than that no changes in this branch

https://linbit.com/downloads/drbd/9.0/drbd-9.0.29-1.tar.gz
https://github.com/LINBIT/drbd/commit/9a7bc817880ab1ac800f4c53f2b832ddd5da87c5

https://linbit.com/downloads/drbd/9/drbd-9.1.2.tar.gz
https://github.com/LINBIT/drbd/commit/a60cffa380085d75c5f62b6bcb500c5b43ca801e
