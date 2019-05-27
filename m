Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 167DB1028A65
	for <drbd-announce@lists.linbit.com>;
	Mon, 27 May 2019 16:00:37 +0200 (CEST)
Received: by mail-wm1-f43.google.com with SMTP id 7so15956933wmo.2
	for <drbd-announce@lists.linbit.com>;
	Mon, 27 May 2019 07:00:37 -0700 (PDT)
Date: Mon, 27 May 2019 15:54:13 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20190527135412.nicxyeluzotvzkzn@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils-9.9.0
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

Hi DRBD users,

Today we release drbd-utils version 9.9.0. All in all this fixes a
limited number of corner cases like stacked DRBD9 setups. User visible
changes are limited to PMEM (see drbd-9.0.18 release notes), and the
introduction of container builds (Dockerfile). Note that we do not
publish these container images (not even for customers), as
containerized drbd-utils on its own are of minor use, but we use this
container image as base for the linstor-satellite containers.
Additionally, there are the usual documentation improvements.

All in all you do not need to update immediately, we just make visible
what happened since the last release.

As always we provide tarballs, a git repo, and a PPA.

9.9.0
--------
 * drbdadm,v9: do not ignore stacked/upper implicit paths.
 * docker: provide initial integration.
 * doc,v9: document transport keyword
 * drbdmeta,v9: support for PMEM activity log format
 * drbdadm: allow faking of drbdsetup show output
 * drbdmeta,v9: fix forget-peer

https://www.linbit.com/downloads/drbd/utils/drbd-utils-9.9.0.tar.gz
https://github.com/LINBIT/drbd-utils/tree/v9.9.0
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Regards, rck
