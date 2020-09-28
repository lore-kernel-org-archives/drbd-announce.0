Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2100F420851
	for <drbd-announce@lists.linbit.com>;
	Mon, 28 Sep 2020 10:59:09 +0200 (CEST)
Received: by mail-wr1-f48.google.com with SMTP id x14so289336wrl.12
	for <drbd-announce@lists.linbit.com>;
	Mon, 28 Sep 2020 01:59:09 -0700 (PDT)
Date: Mon, 28 Sep 2020 10:58:08 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20200928085808.GA1371@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils-9.15.0
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

Hi DRBD users,

this release fixes two minor bugs in the events2 stream (one already
fixed with 9.14.1). Again, most likely one never is in a situation where
this matters.

The reason for this feature release is the addition of the "drbd-attr"
pacemaker resource agent. To quote a part of Lars' commit message:

> Intended usage is a setup with LINSTOR and Pacemaker, where we don't
> want to know which nodes have access to which DRBD resources, and also
> don't want to handle configuration / promotion of DRBD in Pacemaker,
> but use auto-promote.

For more information please see commit 43a766031727fab819c, and
obviously the script itself. There will be further documentation soon.

Regard, rck

9.15.0
--------
 * New drbd-attr Pacemaker RA
 * events2: handle mixed initial state and multicast events
 * events2: fix regression to always print resync done

PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack
TAR: https://www.linbit.com/downloads/drbd/utils/drbd-utils-9.15.0.tar.gz
GIT: https://github.com/LINBIT/drbd-utils/releases/tag/v9.15.0

