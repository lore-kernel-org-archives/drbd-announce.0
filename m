Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id B140F105633D
	for <drbd-announce@lists.linbit.com>;
	Tue,  5 Dec 2017 14:37:49 +0100 (CET)
Received: by mail-wm0-f49.google.com with SMTP id y82so18961724wmg.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 05 Dec 2017 05:37:49 -0800 (PST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 05 Dec 2017 14:29:26 +0100
Message-ID: <1562908.5jIV4bIDBg@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.10rc1 & drbd-utils-9.2.0rc1
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

In this development cycle we could look at a bug that was known
for some time but needed a few calm weeks to be understood and
fixed. So, no more resyncs that stuck near the end (~95%)

On the side of new features: The quorum feature got advanced a
lot and is not usable with pacemaker. It is very nice way how
data-divergence (aka split-brain) can be completely avoided without
building proper fencing infrastructure!!
It is only applicable if you have the DRBD resource on at least 3 nodes.

Last not least, with Linux-4.11 upstream introduced a bio operation 
that escaped our attention. The result is drbd-9.0.x (x <= 9) OOPSes
on kernel 4.x (x >= 11). That is cured with drbd-9.0.10.

Please help testing the release candidate. We intend to release the
final in 7 days from now.


drbd
9.0.10rc1-1 (api:genl2/proto:86-112/transport:14)
--------
 * Fix resync of two secondary nodes in the presence of a 3rd node that is
   primary (maybe with disk or diskless); Fixed the race condition that
   caused the resync to sometimes not terminate
 * Improve connection behavior with autopromote enable one node Primary and
   udev present. The problem was that if udev opens the device on the
   Secondary side "in the right moment" the connection attempt was
   aborted. Fixed that by waiting until udev closes the device
   again. Improves connect speed!
 * Fix in memory alignment of DRBD's struct bio. Got offseted by one due to a
   buggy compat code. Only affects architectures that choke on unaligned
   word accesses. I.e. Power and ARM not x86_64.
 * Improve the quorum implementation, so that is works nicely with for the
   purpose of replacing fencing with quorum in a Pacemaker setup. Quorum
   lost affects the completion status of writes in flight; Quorum state is
   visible to user-space; a new meta-data flags quorum-lost to handle a
   corner case
 * Ensure compatibility with upstream Linux kernel 4.14

http://www.linbit.com/downloads/drbd/9.0/drbd-9.0.10rc1-1.tar.gz
https://github.com/LINBIT/drbd-9.0/tree/drbd-9.0.10rc1


drbd-utils
9.2.0rc1
--------
 * initial vertias cluster agent support
 * quorum integration (including agents)
 * improve drbd9 (mesh)/drbd-proxy integration
 * pull fixups from 9.1.1 branch
 * switch to github
 * drbdmon: page naviagation
 * debian: add mount as dependency

http://www.linbit.com/downloads/drbd/utils/drbd-utils-9.2.0rc1.tar.gz
https://github.com/LINBIT/drbd-utils/tree/207759755a9182


best regards,
 phil
