Return-Path: <lars.ellenberg@linbit.com>
Received: from mail-wr0-f177.google.com (mail-wr0-f177.google.com
	[209.85.128.177])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 48E591057322
	for <drbd-announce@lists.linbit.com>;
	Thu, 26 Apr 2018 13:16:57 +0200 (CEST)
Received: by mail-wr0-f177.google.com with SMTP id v60-v6so56352242wrc.7
	for <drbd-announce@lists.linbit.com>;
	Thu, 26 Apr 2018 04:16:57 -0700 (PDT)
Date: Thu, 26 Apr 2018 13:10:01 +0200
From: Lars Ellenberg <lars.ellenberg@linbit.com>
To: drbd-announce@lists.linbit.com
Message-ID: <20180426111001.GA8000@soda.linbit>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.4.11 released
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

This has been pending for way too long.

From the ChangeLog:

For even more detail, visit https://github.com/LINBIT/drbd-8.4/commits/master

8.4.11-1 (api:genl1/proto:86-101)
-------
 * New efficient ZEROES command on the wire,
   to clearly distinguish zero-out from trim/discard/unmap.
 * compatibility with Linux kernels up to 4.17 (and RHEL up to 7.5)
 * runtime sanity check for silent RHEL 7.5 kABI breakage 
 * Fix bug in compat code: Without this fix large bios are not split.
   The user visible behavior is then a hanging DRBD.

[ NOTE: ^^ that was a regression in 8.4.11 rc1, so 8.4.10 was NOT affected ]

 * skip spurious timeout (ping-timeo) when failing promote
 * don't retry connection if peers do not agree on "authentication" settings
 * avoid spurious self-outdating with concurrent disconnect / down
 * do not block when adjusting "disk-options" while IO is frozen
 * fix various corner cases when recovering from multiple failure cases

https://www.linbit.com/downloads/drbd/8.4/drbd-8.4.11-1.tar.gz
https://github.com/LINBIT/drbd-8.4/tree/drbd-8.4.11

-- 
: Lars Ellenberg
: LINBIT | Keeping the Digital World Running
: DRBD -- Heartbeat -- Corosync -- Pacemaker
: R&D, Integration, Ops, Consulting, Support

DRBD® and LINBIT® are registered trademarks of LINBIT
