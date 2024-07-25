Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
	[209.85.208.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B1DE84202C2
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Jul 2024 14:28:19 +0200 (CEST)
Received: by mail-ed1-f48.google.com with SMTP id
	4fb4d7f45d1cf-5a108354819so1170951a12.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Jul 2024 05:28:19 -0700 (PDT)
Message-ID: <8b1f9b48-b23c-4854-a722-c6990722c8c8@linbit.com>
Date: Thu, 25 Jul 2024 14:28:16 +0200
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.1.17 released
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

Dear WinDRBD community,

We just released WinDRBD 1.1.17. It contains a refactored implementation of
how WinDRBD handles disk timeouts. In this version WinDRBD has its own timer
and if that timer elapses it compiletes all I/O requests pending with an error
status. To DRBD it looks just like the disk has failed, so DRBD will detach the
disk. An automation or cluster manager should react to that event, repair
the disk and attach it again.

If you are using disk timeouts then please upgrade to this version. If not
there is no urgent need to upgrade. An evaluation copy can be downloaded
from:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/

To run this version on your system you have to put it into test mode by:

bcdedit /set TESTSIGNING ON

and reboot the Windows machine.

Best regards,

- Johannes
