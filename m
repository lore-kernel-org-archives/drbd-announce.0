Return-Path: <johannes.thoma@linbit.com>
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
	[209.85.208.176])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 595A8420202
	for <drbd-announce@lists.linbit.com>;
	Fri,  8 Mar 2024 15:05:16 +0100 (CET)
Received: by mail-lj1-f176.google.com with SMTP id
	38308e7fff4ca-2d228a132acso26185881fa.0
	for <drbd-announce@lists.linbit.com>;
	Fri, 08 Mar 2024 06:05:16 -0800 (PST)
Message-ID: <b3d6e608-7b87-40f0-9835-933ed34a1746@linbit.com>
Date: Fri, 8 Mar 2024 15:05:14 +0100
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.1.10 released
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

Dear WinDRBD users,

In this release of WinDRBD where we put lots of efforts to make
WinDRBD behave more stable under memory pressure. The older
WinDRBD releases gave up without retrying when (for example)
kmalloc() could not allocate memory. The new version contains
a retry loop in the memory allocation code which is also the behaviour
of the Linux kernel. So (for example) resources suddenly becoming
Diskless on memory pressure should not happen any more.

Also a drbdadm hang on becoming Primary introduced with 1.1.8
has been fixed.

I also updated the stable branch of WinDRBD with this release so
for new deployments please use this 1.1.10 release. Old deployments
should be upgraded if you are affected by memory pressure issues
but otherwise there is no urgent need to upgrade now.

For more details (as always) see:

https://github.com/LINBIT/windrbd/blob/windrbd-1.1/WHATSNEW.md

An evaluation installer (self signed driver) can be downloaded from
the LINBIT Website: to use this driver you have to put your Windows
machine into test mode (bcdedit /set TESTSIGNING YES and reboot).
It can be downloaded from:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/

Best regards,

- Johannes
