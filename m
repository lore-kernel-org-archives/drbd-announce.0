Return-Path: <christoph.boehmwalder@linbit.com>
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 7D96D4202E7
	for <drbd-announce@lists.linbit.com>;
	Thu,  4 Jul 2024 11:34:19 +0200 (CEST)
Received: by mail-ed1-f49.google.com with SMTP id
	4fb4d7f45d1cf-58b0dddab8cso716935a12.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 04 Jul 2024 02:34:19 -0700 (PDT)
Message-ID: <df398ead-bbda-4329-9f6e-b28a384c5345@linbit.com>
Date: Thu, 4 Jul 2024 11:34:16 +0200
MIME-Version: 1.0
Content-Language: en-US
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
From: =?UTF-8?Q?Christoph_B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>
Subject: linstor-gateway v1.6.0-rc.1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

Hello,

there is a new release candidate of LINSTOR Gateway: v1.6.0-rc.1.

https://github.com/LINBIT/linstor-gateway/releases/tag/v1.6.0-rc.1

The most interesting user-visible change in this version will be that it 
is now possible to create NFS exports with XFS file systems.
Note that this requires a LINSTOR version of 1.22.0 or above.

For the full Changelog, check out the release notes on Github.

Please help us by testing this release candidate and reporting any 
issues you may find via Github.

Thanks,
Christoph
