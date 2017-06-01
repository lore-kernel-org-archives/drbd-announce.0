Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 4A0981057FCF
	for <drbd-announce@lists.linbit.com>;
	Thu,  1 Jun 2017 16:52:17 +0200 (CEST)
Received: by mail-wm0-f43.google.com with SMTP id 7so160955142wmo.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 01 Jun 2017 07:52:17 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 01 Jun 2017 16:47:03 +0200
Message-ID: <5674968.PBsNJAh12e@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.4.10
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

It got updated to work withthe most recent upstream kernels; a few fixes to
hard-to-trigger race conditions. No exciting news, which is good for a
"old-stable" branch.

BTW, drbd-utils and drbd9 will follow very soon.


8.4.10-1 (api:genl1/proto:86-101)
-------
 * fix a race condition between attaching and writing meta-data. The impact
   of the bug was destructing an object to early which leads to a crash
 * fix cleanup of debugfs at rmmod time
 * fix potential deadlock when trying to detach during handshake
 * fix race between handshake and admin disconnect/down
 * new config option "disable-write-same". That helps with backing devices
   that claim to support write-same, but fail every write-same request
 * compatibility with Linux kernels up to 4.12


https://www.linbit.com/downloads/drbd/8.4/drbd-8.4.10-1.tar.gz
http://git.drbd.org/drbd-8.4.git/tag/drbd-8.4.10
