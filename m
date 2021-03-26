Return-Path: <philipp.reisner@linbit.com>
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 8F22C4203BF
	for <drbd-announce@lists.linbit.com>;
	Fri, 26 Mar 2021 11:12:08 +0100 (CET)
Received: by mail-io1-f52.google.com with SMTP id x16so4841669iob.1
	for <drbd-announce@lists.linbit.com>;
	Fri, 26 Mar 2021 03:12:08 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Fri, 26 Mar 2021 11:11:56 +0100
Message-ID: <CADGDV=UBikNf=gpLP7BHYYGomG+cYJdKPLdywkmRKRwDHCfddg@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.1
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

Debian bullseyes (Debian 11.0) entered 'hard freeze' two weeks ago and we
have customers that want to use DRBD and LINSTOR on that
platform. Unfortunately, I made a stupid mistake a few weeks back and that
broke the kernel compat for kernel 5.10 (which comes with bullseye). So, here
is a release of the drbd-9.1 branch that works on bullseye and also releases
a few fixes we have in the tree.

What fixes?
 Well, did you ever try to build a LINSTOR cluster containing mips64 and
 x86_64 nodes?
 We did, and we found out that it breaks in a small detail in DRBD's size
 negotiation code if the node's architecture has different page
 sizes. Mips64 has a default page size of 16k.
 And some other esoteric things...

Expect the 9.0.29, and another 9.1.x release in about one month from now.


9.1.1 (api:genl2/proto:110-119/transport:17)
--------
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
 * changes to socket buffer sizes get applied to established
connections immediately;
   before it was applied after a re-connect
 * add exists events for path objects
 * fix a merge-mistake that broke compatibility with 5.10 kernels

https://linbit.com/downloads/drbd/9/drbd-9.1.1.tar.gz
https://github.com/LINBIT/drbd/commit/93eb226a33f425ededd08a9cc82e372494475cb8
