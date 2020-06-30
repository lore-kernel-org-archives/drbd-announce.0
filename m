Return-Path: <philipp.reisner@linbit.com>
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id AF4CB42032F
	for <drbd-announce@lists.linbit.com>;
	Tue, 30 Jun 2020 10:23:18 +0200 (CEST)
Received: by mail-io1-f43.google.com with SMTP id i4so20045016iov.11
	for <drbd-announce@lists.linbit.com>;
	Tue, 30 Jun 2020 01:23:18 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Tue, 30 Jun 2020 10:23:06 +0200
Message-ID: <CADGDV=XSpE2yTBiSTVnNfB+y_RbL5Eon5-m2P6AvWQxK2Lq5Lg@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.24
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

The second DRBD release in June 2020. The reason is _not_
a regression in 9.0.23 but separating the bug-fix only .23
release form the bigger code change that the .24 release
introduces.

So far with all DRBD-9 releases, if you have two nodes primary
and they try to reconnect the abort establishing the connection
at the moment they find out that both are primary, and retry in
10 seconds.  DRBD-8.4 was a bit more elegant in such a
situation. It detected the split-brain first and the two go into
StandAlone and stop trying endlessly. That allows users to hook
special handling into the split-brain handler(s).  This release
restores this capability of drbd-8.4. With that comes a new
protocol version.

The other fix is relevant for LINSTOR users where workload might
run on diskless-primary nodes. The particular corner-case bug
triggered when:

- in a cluster of two storage nodes and one diskless node
- one storage node is primary gets hard rebooted
- the workload is moved to the diskless node while
  the storage node is down (primary role moves)
- the new primary does not issue any writes
- the rebooted storage node connects to the other storage node
  first, before it connects to the diskless node
then it stays "Inconsistent" after the resync.

A workaround applicable to all drbd9 versions before 9.0.24 is to
do a drbdadm disconnect / connect between the two storage nodes.

Changelog:

9.0.24-1 (api:genl2/proto:86-117/transport:14)
--------
 * fix deadlock when connecting drbd-9 to drbd-8.4 and the drbd-9
   side becomes sync-source
 * fix an issue with 3 (or more) node configurations; with a diskless node
   and two storage nodes; if one of the storage nodes was hard rebooted
   and came back and the diskless got primary and did not issue write
   requests and the returning storage node established a connection with
   the surviving storage node first, DRBD failed to upgrade the disk
   state to UpToDate after the resync
 * detect split-brain situations also when both nodes are primary;
   this is how it was in drbd-8.4; up to now drbd-9 did not realize
   the split-brain since it complains about the not allowed dual
   primary first; for this change a new protocol version was necessary
 * verified it compiles with Linux 5.7

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.24-1.tar.gz
https://github.com/LINBIT/drbd/commit/6e91f89e4016d01512db171d98b3424204d254dc
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

best regards,
 Phil
