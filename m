Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
	[209.85.218.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 05B68161233
	for <drbd-announce@lists.linbit.com>;
	Tue,  2 Sep 2025 14:38:02 +0200 (CEST)
Received: by mail-ej1-f42.google.com with SMTP id
	a640c23a62f3a-b03fa5c5a89so422336166b.2
	for <drbd-announce@lists.linbit.com>;
	Tue, 02 Sep 2025 05:38:02 -0700 (PDT)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214]) by smtp.gmail.com with ESMTPSA id
	a640c23a62f3a-afefcbd9090sm1098418766b.69.2025.09.02.05.38.00
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 02 Sep 2025 05:38:01 -0700 (PDT)
Message-ID: <77de7730-9ad9-4875-b59b-f6a6a0fecff7@linbit.com>
Date: Tue, 2 Sep 2025 14:37:59 +0200
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.1.22 released
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

There is a new release of the WinDRBD 1.1 branch. The change is that
upon installing the WinDRBD driver the changes to the Windows registry
are flushed explicitly (namely in the windrbd install-bus-device/remove-bus-device
commands). This fixes some issues where the WinDRBD driver was reported
as not being installed, which could happen if the machine was reset shortly
after the WinDRBD installer has finished.

Note that since updates on Windows in general are not atomic you should
make sure that, while a WinDRBD installer (as also any other installer) is
running the machine, is not reset.

If you are not affected by the not installed after reset issue there is no
need to upgrade. Also the kernel module itself hasn't been changed
(except for the reported version number).

Best regards,

- Johannes
