Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id D37B01057FE6
	for <drbd-announce@lists.linbit.com>;
	Fri,  2 Jun 2017 15:22:39 +0200 (CEST)
Received: by mail-wm0-f53.google.com with SMTP id 123so12178337wmg.1
	for <drbd-announce@lists.linbit.com>;
	Fri, 02 Jun 2017 06:22:39 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 02 Jun 2017 15:22:37 +0200
Message-ID: <3073471.FuDfIKagtf@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.8rc1 & drbd-utils-9.0.0 & drbdmanage-0.99.5
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

We have the release of drbd-utils-9.0.0. We bumped from 8.9.11 to
9.0.0 not for a technical reason, but to use the 3 part version
number a little different in the future.
We will increase the 2nd part if there are new features (and reset the
third part to 0). We will increase the third digit if it contains only
fixes.

  drbd-utils-9.0.0 still support drbd-8.4.x !


On the side of DRBD9, the 9.0.8 release brings a number of important
fixes. So every drbd-9.0.x user is asked to upgrade to this release
as soon as we tag the final 9.0.8. As of now please bring the rc1 of
it to you testing and staging systems, and report any issues!


On the side of drbd-manage I need to point out that cluster initialization
works now a _lot_ more reliable than before. (using drbd-9.0.8(rc1))


drbd
9.0.8rc1-1 (api:genl2/proto:86-112/transport:14)
--------
 * fix an issue wiith current-uuid not getting written for 5 seconds. When a
   resources was down'd/up'd or the node rebooted, you got split brain
   afterwards
 * fix an issue with diskless nodes adopting wrong current UUIDs
 * fix a distributed deadlock when doing a discard/write-same burst
 * fix wrongly rejected two-phase-state transactions; this issue was a
   cause for drbdmanage init failing for 3 nodes
 * fix a race that caused DRBD to go StandAlone instead of Connecting
   after loosing a connection
 * fix initial resync, triggered by "--force primary"; this is a fix
   for a regression introduced in 9.0.7
 * new configuration option that allows to report back IO errors instead
   of freezing IO in case a partition looses quorum
 * merged changes from 8.4.10 and with that compatibility with Linux-4.12

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.8rc1-1.tar.gz
http://git.drbd.org/drbd-9.0.git/tag/refs/tags/drbd-9.0.8rc1

drbd-utils
9.0.0
--------
 * drbd udev: fix inconsistent inheritance of implicit volumes
   To keep previous udev /dev/drbd/by-resource/... behavior,
   you may need to set or unset/comment "global { udev-always-use-vnr; }",
   see the shipped example global_common.conf
 * Fix regressions of the out-of-the-box DRBD 8.4 experience
   with our pacemaker DRBD Resource Agent and shipped example config files
 * debian: don't "stop" drbd on upgrade of utils package
 * DrbdMon: can now focus on "problem" resources by filtering-out "ok" ones
 * v9: support new option on_no_quorum
 * drbdadm: fix segfaults, improve error reporting
 * adjust: fix deleting unrelated peer(s) on "adjust resource:specific-peer"
 * drbdmeta create-md/convert: fix check for existing external meta-data

https://www.linbit.com/downloads/drbd/utils/drbd-utils-9.0.0.tar.gz
http://git.drbd.org/drbd-utils.git/tag/refs/tags/v9.0.0

drbdmanage (0.99.5-1)
  * client: fix bug in inline comments for ConfigParser
  * implement external nodes
  * wipefs: do not use "-q"
  * server: reset grace period on create_node
  * avoid shutting down satellites immediately
  * make cluster initialization more reliable

https://www.linbit.com/downloads/drbdmanage/drbdmanage-0.99.5.tar.gz
http://git.drbd.org/drbdmanage.git/shortlog/refs/tags/v0.99.5


...and packages of it are here...
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

cheers,
 Phil
