Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
	[209.85.218.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id F289942019F
	for <drbd-announce@lists.linbit.com>;
	Thu, 29 Jun 2023 14:30:07 +0200 (CEST)
Received: by mail-ej1-f54.google.com with SMTP id
	a640c23a62f3a-98df69cacd1so65069066b.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 29 Jun 2023 05:30:07 -0700 (PDT)
Message-ID: <813cb3af-e45a-7707-6199-e8a15bd5e69a@linbit.com>
Date: Thu, 29 Jun 2023 14:30:04 +0200
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [DRBD-announce] WinDRBD 1.1.7 released
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

WinDRBD release 1.1.7 is out, the main new features are:

.) A blue screen that might trigger when memory allocation fail at
    a specific code path was fixed.

.) A performance bug introduced in WinDRBD 1.0.0-rc11 was fixed.
    Reason was that the TCP/IP nodelay option was not set which causes
    TCP/IP data stream sends being delayed by 20ms. Therefore performance
    with single threaded synchronious I/O was bad.

.) Some changes to make future releases of DRBD reactor for Windows
    work.

If you are affected by the blue screen an update to this version is highly
recommended.

You can download an installer with a signed driver from this location:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/

Best regards,

- Johannes
