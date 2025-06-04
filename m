Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id C22E11609AF
	for <drbd-announce@lists.linbit.com>;
	Wed,  4 Jun 2025 16:43:54 +0200 (CEST)
Received: by mail-wm1-f49.google.com with SMTP id
	5b1f17b1804b1-441d437cfaaso48544125e9.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 04 Jun 2025 07:43:54 -0700 (PDT)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214]) by smtp.gmail.com with ESMTPSA id
	ffacd0b85a97d-3a4efe73eebsm21681327f8f.44.2025.06.04.07.43.52
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 04 Jun 2025 07:43:52 -0700 (PDT)
Message-ID: <67691b36-8d34-4cfb-aa91-119da87e4354@linbit.com>
Date: Wed, 4 Jun 2025 16:43:51 +0200
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.2.0-rc15 released
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

A new version of WinDRBD 1.2 is out: WinDRBD 1.2.0-rc15

The main reason for this release is that there is a new DRBD
version: 9.2.14 (with DRBD 9.3.0 soon to follow). Other than
that there are a few fixes in the networking and user mode
helper code of the WinDRBD kernel compatibility layer.

You can compile WinDRBD 1.2.0-rc15 either by yourself
(see the README.md at

     https://github.com/LINBIT/windrbd/tree/windrbd-1.2

) or download an evaluation version from the Linbit website:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/

To use it on 64-bit Microsoft Windows you will have to put
your machine into Test mode: do (from an elevated cmd prompt):

     bcdedit /set TESTSIGNING ON

and reboot Windows.

Thank you for contributing to WinDRBD development by using it
(and report any findings),

Best regards,

- Johannes
