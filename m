Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 3B79C420342
	for <drbd-announce@lists.linbit.com>;
	Mon,  4 Oct 2021 08:37:36 +0200 (CEST)
Received: by mail-wm1-f46.google.com with SMTP id v127so12572700wme.5
	for <drbd-announce@lists.linbit.com>;
	Sun, 03 Oct 2021 23:37:36 -0700 (PDT)
Date: Mon, 4 Oct 2021 08:37:35 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20211004063735.GS1368@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.19.0
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

this is release v9.19.0 of drbd-utils. This contains all the fixes since
the 9.18.0 release plus some other changes. 9.18.2 broke the wait-for
family of commands, therefor users should upgrade.

GIT: https://github.com/LINBIT/drbd-utils/commit/9f2aa37c2e0438bc3e6336eb8f697cfc6c0b8243
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.19.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/+packages

Regards, rck

Changelog:

9.19.0
-----------
 * v9,events2: show changes of peer-client
 * v9: rr-conflict strategy auto-discard for protocol A
 * windrbd: various fixes including setting the systemd root
 * containers: switch to UBI8
 * v9,wait-*: fix segfault

9.18.2
-----------
 * systemd: fix SELinux for drbd-promote@.service
 * drbdadm: allow 4096 chars for concatenated host names
 * drbdadm: enforce max length of fields for drbdsetup
 * build: fix redefinition of __swab{16,32,64}

9.18.1
-----------
 * systemd: drbd@.service: pull in network-online.target
 * systemd: fix SELinux for recent systemd templates
 * doc: updated Japanese translation
