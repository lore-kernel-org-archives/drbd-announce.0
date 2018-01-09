Return-Path: <lars.ellenberg@linbit.com>
Received: from mail-wr0-f173.google.com (mail-wr0-f173.google.com
	[209.85.128.173])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 6B3A91057582
	for <drbd-announce@lists.linbit.com>;
	Tue,  9 Jan 2018 16:25:16 +0100 (CET)
Received: by mail-wr0-f173.google.com with SMTP id n9so4625610wrg.2
	for <drbd-announce@lists.linbit.com>;
	Tue, 09 Jan 2018 07:25:16 -0800 (PST)
Date: Tue, 9 Jan 2018 16:17:46 +0100
From: Lars Ellenberg <lars.ellenberg@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20180109151746.GE24078@soda.linbit>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [DRBD-announce] [DRBD-user] drbd-9.0.11 & drbd-8.4.11
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

DRBD 9.0.11 (and DRBD 8.4.11 soon, yet to be tagged) are out.

Changelog against 9.0.10 contains only this one fix:

9.0.11-1 (api:genl2/proto:86-112/transport:14)
--------
 * Fix bug in compat code: Without this fix large bios are not split.
   The user visible behavior is then a hanging DRBD.

We try to keep our sources compatible with a wide range of both upstream
and vendor kernel versions. One recent compat fix contained a typo in
some ifdef identifier.

Sometimes DRBD is handed a bio that is too large to handle directly,
so it is supposed to be split early, before DRBD starts to actually
process (a smaller initial piece of) it.

The mentioned typo resulted in that bio split to be defined away,
the split never happened, and we get potentially blocking IO in
some circumstances on a variety of kernel versions.
Typical reproducers involve larger discards/write-same/write-zeroes.

Becase we received no other complaints about 9.0.10,
and this is the only code change,
we skip the "rc" phase for the 9.0.11 release.

8.4.11 was still in "release candidate" phase,
we don't need an other version bump there.

-- 
: Lars Ellenberg
: LINBIT | Keeping the Digital World Running
: DRBD -- Heartbeat -- Corosync -- Pacemaker

DRBD® and LINBIT® are registered trademarks of LINBIT
__
please don't Cc me, but send to list -- I'm subscribed
