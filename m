Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 50FCA42062A
	for <drbd-announce@lists.linbit.com>;
	Thu, 19 Nov 2020 11:58:41 +0100 (CET)
Received: by mail-wm1-f41.google.com with SMTP id s13so6322843wmh.4
	for <drbd-announce@lists.linbit.com>;
	Thu, 19 Nov 2020 02:58:41 -0800 (PST)
Date: Thu, 19 Nov 2020 11:58:39 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20201119105839.GA7609@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox-5.1.4
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

Dear PVE-users,

This should be a rather boring release. The main reason is that upstream
PVE bumped their APIVERSION twice, which is now reflected in this
release. It also removes some code that waited till a resource is really
ready to use, as this got implemented in LINSTOR a long time ago
already.

If you can live with these "your plugin is outdated" messages in the GUI (it just works
fine), then there is no urgent need to upgrade.

https://www.linbit.com/downloads/connectors/linstor-proxmox-5.1.4.tar.gz
https://github.com/LINBIT/linstor-proxmox/commit/5dc7944365dc0a67240a67742646b8e2d057fb6b

Regards, rck
