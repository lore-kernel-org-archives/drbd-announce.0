Return-Path: <christoph.boehmwalder@linbit.com>
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id AF0374201C8
	for <drbd-announce@lists.linbit.com>;
	Mon, 16 Oct 2023 15:09:21 +0200 (CEST)
Received: by mail-wm1-f50.google.com with SMTP id
	5b1f17b1804b1-40684f53d11so51601275e9.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 16 Oct 2023 06:09:21 -0700 (PDT)
Message-ID: <5c3bf052-be88-e609-2e85-457d45f1052a@linbit.com>
Date: Mon, 16 Oct 2023 15:09:19 +0200
MIME-Version: 1.0
Content-Language: en-US
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
From: =?UTF-8?Q?Christoph_B=c3=b6hmwalder?= <christoph.boehmwalder@linbit.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [DRBD-announce] linstor-gateway v1.3.0-rc.1
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

Hi everyone,

I am pleased to announce a new release candidate of LINSTOR Gateway,
v1.3.0-rc.1.

https://github.com/LINBIT/linstor-gateway/releases/tag/v1.3.0-rc.1

This release contains a few new features. The most prominent changes are:

* Various quality-of-life improvements to the CLI interface
* Separate health checks for "agent", "server" and "client" nodes
* The ability to choose the underlying target implementation when
creating an iSCSI target

For the full list of changes, see the changelog:
https://github.com/LINBIT/linstor-gateway/blob/v1.3.0-rc.1/CHANGELOG.md

As always, your help in testing this release candidate is much
appreciated. Please report any issues you may encounter via GitHub.

Thanks!

-- 
Christoph Böhmwalder
LINBIT | Keeping the Digital World Running
DRBD HA —  Disaster Recovery — Software defined Storage
