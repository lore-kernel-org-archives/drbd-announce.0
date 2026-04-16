Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D7C71162267
	for <drbd-announce@lists.linbit.com>;
	Thu, 16 Apr 2026 13:07:06 +0200 (CEST)
Received: by mail-wm1-f42.google.com with SMTP id
	5b1f17b1804b1-48896199cbaso81671505e9.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 16 Apr 2026 04:07:06 -0700 (PDT)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214]) by smtp.gmail.com with ESMTPSA id
	5b1f17b1804b1-488f0e9a770sm42504045e9.19.2026.04.16.04.07.04
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 16 Apr 2026 04:07:04 -0700 (PDT)
Message-ID: <ac76994d-5e10-490c-ba1b-b4476c23305d@linbit.com>
Date: Thu, 16 Apr 2026 13:07:02 +0200
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
From: Johannes Khoshnazar-Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.2.9 released
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

WinDRBD 1.2.9 is out and available in the repositories. An evaluation version can
be downloaded from:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/

It fixes several minor issues that have piled up with the switch to the WinDRBD 1.2
branch. Most notably, it fixes a problem with the driver not unloading and therefore
making a reboot neccessary on upgrade.

Another major change is that we now use the clang (instead of gcc) compiler to
build the distribution packages. The advantage is that clang can generate Windows
windbg compatible debug info (*.pdb) files, which eases analyzing a crash dump
a lot. WinDRBD can still be built with gcc manually, only the packages are compiled
with clang.

 From the WHATSNEW.md:

What's new in version 1.2.9
---------------------------

DRBD 9.2.17 / DRBD 9.3.1 support

Support compound pages (used by DRBD 9.3.1)

Fixed several memory leaks

Fixed use after free in drbd_destroy_device / workqueue

Fixed start sector out of range check

Fixed synchronize RCU if called before driver unload

Fixed signal pending on task creation

Compile binary packages with clang

---------------------------------------

If you plan a maintenance window, it is recommended to update WinDRBD
to 1.2.9 (or any later version). Note that there are packages built for
DRBD 9.2 and DRBD 9.3, you can use either DRBD 9.2 (older codebase)
or DRBD 9.3 (performs better in some cases).

Best regards,

- Johannes
