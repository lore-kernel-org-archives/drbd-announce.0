Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 022FC1011C03
	for <drbd-announce@lists.linbit.com>;
	Fri, 24 May 2019 13:57:15 +0200 (CEST)
Received: by mail-wm1-f65.google.com with SMTP id 198so9094135wme.3
	for <drbd-announce@lists.linbit.com>;
	Fri, 24 May 2019 04:57:15 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 24 May 2019 13:57:13 +0200
Message-ID: <91710510.pKxfDnB87f@nuc>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.18-1
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

As usual this release brings a number of bug fixes, that alone is
reason enough to recommend the upgrade to every user.

Exciting are the two new features:

Quorum tie breaker
  So far enabling quorum only made sense if you have a three way
  redundant data set. With the new quorum tie breaker feature
  it works with 2 way redundnt data, but needs a 3rd, diskless node
  in the DRBD resource.

optimized meta-data access if meta-data is on PMEM
  PMEM (or NVDIMMs) is an exciting revolutionary change in computing.
  It is a new storage tier that is connected as memory to the system.
  One consequence of that is that software not gets the ability to
  access/change/update data on the storage is smaller units than whole
  sectors (512 bytes). We can not modify it in units of 64 bytes.
  That gives us a DRBD developers new possibilities in optimizing
  updates of our on-storage meta-data data structures.
  We created a new PMEM optimized layout for the activity log, and
  access the bitmap directly in place, as PMEM is memory mapped. As
  a side consequence this reduces DRBD's memory consumption.
  Depending on the workload you might get a 2x improvement in 
  write IOPs and a 4x improvement in throughput.



9.0.18-1 (api:genl2/proto:86-115/transport:14)
--------
 * Fix an IO deadlock under memory pressure
 * Fix disconnect timing in case the network connection suddenly
   drops all packets
 * Fix some misbehavior that surfaced with Ahead/Behind
 * Fix potential spinlock deadlock in IRQ
 * Minor fixes: forget-peer, _rcu iterators
 * Quickly stop resync during AHEAD/BEHIND by introducing new
   packet for that purpose.
 * The quorum feature can now use the connectivity to
   the majority of Diskless nodes as tiebreaker
 * Access meta-data using DAX if it is on persistent memory
   (NVDIMM or PMEM); For write intense workloads this is a x2 to x4 speedup!

http://www.linbit.com/downloads/drbd/9.0/drbd-9.0.18-1.tar.gz
https://github.com/LINBIT/drbd-9.0/tree/drbd-9.0.18-1

best regards,
 Phil


