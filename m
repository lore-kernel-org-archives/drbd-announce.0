Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
	[209.85.218.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 898324204BE
	for <drbd-announce@lists.linbit.com>;
	Wed, 18 Jan 2023 16:03:48 +0100 (CET)
Received: by mail-ej1-f51.google.com with SMTP id vm8so83885777ejc.2
	for <drbd-announce@lists.linbit.com>;
	Wed, 18 Jan 2023 07:03:48 -0800 (PST)
Message-ID: <60f95e78-ffaa-0508-3f55-5e9855f6d8e9@linbit.com>
Date: Wed, 18 Jan 2023 16:03:44 +0100
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [DRBD-announce] WinDRBD 1.1.4-rc1 released: Virtual partition tables
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

Dear WinDRBD users,

This is a WinDRBD release with a new feature that was requested by
several users in the community: proper reuse of data on existing
(NTFS-) file systems.

Since proper Windows "block" devices are Disks for the Windows
system and Disks are expected to be partitioned, we emulate a
virtual GPT partition table at the "upper" interface (where the
SCSI requests are handled). This causes Windows to stack
the PARTMGR and DISK drivers (and probably others) over the
disks such that applications such as MS SQL server run without
issues.

Since there are some, lets say, hairy changes in the interface I
decided to insert a release canidate with the request to the community
to test it before I release the final 1.1.4 release.

As always an installer with a signed driver can be downloaded from:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows

Best regards and happy new year :)

- Johannes
