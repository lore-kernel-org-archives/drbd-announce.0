Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
	[209.85.208.179])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 75EB5160876
	for <drbd-announce@lists.linbit.com>;
	Tue, 10 Mar 2026 14:05:27 +0100 (CET)
Received: by mail-lj1-f179.google.com with SMTP id
	38308e7fff4ca-38a40273544so31907861fa.2
	for <drbd-announce@lists.linbit.com>;
	Tue, 10 Mar 2026 06:05:27 -0700 (PDT)
Date: Tue, 10 Mar 2026 14:05:25 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-utils v9.34.0-rc.1
Message-ID: <abAXFb1M62JyRcvA@arm64>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

Dear DRBD users,

this is the first RC of the upcoming version 9.34.0. It contains
improvements and fixes all over the place. The main reason for this
release is the release of DRBD kernel module 9.3.1 which introduced two
new parameters, namely "discard-granularity" and "tie-breaker".

Please test, if we don't find any issues the final release will be about
a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/696ee0fafa437f3b33b1e437cfc2741bf93604b2
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.34.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
9.34.0-rc.1
-----------
 * drbdadm: fix adjust for a v8 config with a v9 drbd kernel driver
 * drbdadm: fix segfault if we don't know about peer devices
 * drbdsetup,v9: suspend-io: add --bdev-freeze option
 * drbdadm,adjust: split disk-options into early/late stage
   based on bitmap direction
 * drbdadm,adjust: fix segfault on _unknown options
 * drbdmeta: create-md: add --initialize-bitmap=set-all
 * drbd: add per-peer_device tiebreaker config flag for quorum
 * drbd-utils: add discard-granularity device option
