Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
	[209.85.218.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 06C9F420170
	for <drbd-announce@lists.linbit.com>;
	Mon, 14 Nov 2022 14:58:42 +0100 (CET)
Received: by mail-ej1-f49.google.com with SMTP id f27so28558188eje.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 14 Nov 2022 05:58:42 -0800 (PST)
Message-ID: <fe44aae1-fd1c-7919-4443-bf60557cebaf@linbit.com>
Date: Mon, 14 Nov 2022 14:58:39 +0100
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [DRBD-announce] WinDRBD 1.1.3 released
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

This is another point release for WinDRBD. It fixes a rare BSOD which
happens when the WinDRBD installer fails to upgrade WinDRBD. Usually
this succeeds so there is no urgent need to upgrade now. In addition
the logger service is stopped later so we also get the driver unload
messages into the kernel log file. Again no urgent need to upgrade.

As always, the installer can be downloaded from:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver

Thank you for using WinDRBD.

Best regards,

- Johannes
