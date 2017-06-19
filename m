Return-Path: <philipp.reisner@linbit.com>
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 06EC31057FD4
	for <drbd-announce@lists.linbit.com>;
	Mon, 19 Jun 2017 19:02:21 +0200 (CEST)
Received: by mail-pg0-f49.google.com with SMTP id f185so50725852pgc.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 19 Jun 2017 10:02:21 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 20 Jun 2017 00:32:31 +0800
Message-ID: <3145641.8hBctnJSfS@phil-xps>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.8
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

finally it is there! With two rc's and surprising bug reports coming in late,
the release process has been a bit more challenging than usual. Maybe
the fact that I am doing this release while being in Beijing for the first
LinuxCon in China is also contributing it's share.

Due to the high number of bug-fixes and the severity of some of them,
I recommend every user of drbd-9 to upgrade to this release.

9.0.8-1 (api:genl2/proto:86-112/transport:14)
--------
 * fix a race condition between adding connections and receiving data
   blocks; When you hit it caused an OOPS
 * fix a OOPS on a diskfull node when a request from a diskless
   node causes an error from the back-end device. (This is a regression that
   was introduced with the 9.0.7 release)
 * fix a distributed deadlock when doing a discard/write-same burst
 * fix an issue with diskless nodes adopting wrong current UUIDs
 * fix wrongly rejected two-phase-state transactions; this issue was a
   cause for drbdmanage init failing for 3 nodes
 * fix attach of first disk after resource had no disk at all
 * fix to not clear bitmap content and UUIDs in case we ignored a
   split-brain situation
 * fix a possible OOPS, caused when the sender thread tries to send
   something after the sockets where free()'ed
 * fix ignoring split-brain situations to the rare cases it was
   intended to in the first place
 * fix an issue with current-uuid not getting written for 5 seconds. When a
   resources was down'd/up'd or the node rebooted, you got split brain
   afterwards
 * fix a race that caused DRBD to go StandAlone instead of Connecting
   after loosing a connection
 * Serialize reconciliation resync after the nodes found it if they
   are UpToDate
 * fix initial resync, triggered by "--force primary"; this is a fix
   for a regression introduced in 9.0.7
 * new configuration option that allows to report back IO errors instead
   of freezing IO in case a partition looses quorum
 * Speed-up AL-updates with bio flags REQ_META and REQ_PRIO
 * merged changes from 8.4.10 and with that compatibility with Linux-4.12

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.8-1.tar.gz
http://git.drbd.org/drbd-9.0.git/tag/refs/tags/drbd-9.0.8

cheers,
 Phil
