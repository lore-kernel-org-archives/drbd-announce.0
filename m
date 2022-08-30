Return-Path: <philipp.reisner@linbit.com>
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com
	[209.85.160.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 1D6E44206B5
	for <drbd-announce@lists.linbit.com>;
	Tue, 30 Aug 2022 18:01:05 +0200 (CEST)
Received: by mail-oa1-f47.google.com with SMTP id
	586e51a60fabf-11f4e634072so3509955fac.13
	for <drbd-announce@lists.linbit.com>;
	Tue, 30 Aug 2022 09:01:05 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Tue, 30 Aug 2022 17:59:53 +0200
Message-ID: <CADGDV=WGEfD7vomdcbMuDdGr=VXhCmFtV9RZwPCVMfzEWx7vtA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.2.0-rc.7
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

we think that we fixed all known issues in the drbd-9.2 branch. (With the
exception of the RDMA transport, which still has known issues)

This time it comes with a new feature: Support for network namespaces

That means that a drbd path (the part of a drbd connection that has IP
addresses), will live in the network namespace, from which it was created.

You might ask, what is this good for?

This is very useful when it is used with Kubernetes. Up to now Piraeus
Data-Store could only use the host networking namespace. Not the networking
namespace that is available to the containers. In various managed Kubernetes
environments this "host networking" might be constrained, shielded from
the internet, etc...
With that new feature, Piraeus Data-Store can place the DRBD traffic into the
other network. I would call it the "overlay network" (though I am not sure if
Kubernetes people use that expression).

A short reminder, the other advantages of drbd-9.2 over 9.1 are:
 * lower latency for mirrored write requests
 * lower contention between application IO and resync IO
 * much better resync performance on thinly provisioned backends
 * support for network namespaces
 * a RDMA transport (still has known issues)

Please help test this pre-release.

9.2.0-rc.7 (api:genl2/proto:110-121/transport:18)
--------
 * support for network namespaces
 * multiple fixes to the merge-discards-during-resync functionality
 * fix reference counting in AL with drbd-8.4 peers
 * stricter limit for the set of characters allowed in resource names
 * merge changes from the drbd 9.1.9 release

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.0-rc.7.tar.gz
https://github.com/LINBIT/drbd/commit/61c4a219d2bba3241c60ea6d69bab70e93d1de84
