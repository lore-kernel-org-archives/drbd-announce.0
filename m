Return-Path: <philipp.reisner@linbit.com>
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id C18294203B5
	for <drbd-announce@lists.linbit.com>;
	Wed, 28 Apr 2021 17:42:47 +0200 (CEST)
Received: by mail-io1-f53.google.com with SMTP id v123so12079536ioe.10
	for <drbd-announce@lists.linbit.com>;
	Wed, 28 Apr 2021 08:42:47 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Wed, 28 Apr 2021 17:42:35 +0200
Message-ID: <CADGDV=VztH2D4MJE7TF-tk2GmKg09yk76Fd-c-EcRAJWKWSZgQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.29-0rc1 & drbd-9.1.2-rc.1
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

here is the next release candidate for both of our branches. I promise to write
a bit more text for the final release, which will happen in one week if no show
stoppers are found.

This is a release candidate, please help testing it.

9.0.29-0rc1 (api:genl2/proto:86-120/transport:14)
--------
 * fix data corruption when DRBD's backing disk is a degraded Linux software
   raid (MD)
 * add correct thawing of IO requests after IO was frozen due to loss of quorum
 * fix timeout detection after idle periods and for configs with ko-count
   when a disk on an a secondary stops delivering IO-completion events
 * fixed an issue where UUIDs where not shifted in the history slots; that
   caused false "unrelated data" events
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

https://linbit.com/downloads/drbd/9/drbd-9.1.2-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/8bf23d4e30fdbc907395fb9ec84cb585d82d97c6

https://linbit.com/downloads/drbd/9.0/drbd-9.0.29-0rc1.tar.gz
https://github.com/LINBIT/drbd/commit/be52fd979504061bfa9a899e266e314f0aee4cac
