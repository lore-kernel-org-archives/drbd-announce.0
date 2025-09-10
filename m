Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
	[209.85.218.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id DF57D160959
	for <drbd-announce@lists.linbit.com>;
	Wed, 10 Sep 2025 18:24:06 +0200 (CEST)
Received: by mail-ej1-f49.google.com with SMTP id
	a640c23a62f3a-b04b55d5a2cso850295566b.2
	for <drbd-announce@lists.linbit.com>;
	Wed, 10 Sep 2025 09:24:06 -0700 (PDT)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214]) by smtp.gmail.com with ESMTPSA id
	a640c23a62f3a-b07853d6590sm176354466b.45.2025.09.10.09.24.04
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 10 Sep 2025 09:24:05 -0700 (PDT)
Message-ID: <15383521-3ab8-46ba-b877-d4faadb17cfe@linbit.com>
Date: Wed, 10 Sep 2025 18:24:03 +0200
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.2.2 released
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

Dear WinDRBD community,

We just released WinDRBD 1.2.2 which fixes some minor bugs, namely:

  * When using RLE there were sometimes error messages (with a fall back
     to a full bitmap exchange, note that this is not a full sync, only the bitmap
     was transfered).
  * Sometimes there were FIXME false positives in the log. This has been silenced.

There were also some changes in the installer, for example the UM helper
daemon is stopped later in the installation process which should speed up
installation when there are many resources to take down.

Unless you are affected by the above (minor) issues, you don't need to
(urgently) upgrade.

PS: don't confuse this with WinDRBD 1.1.22 which also was released recently :)

Best regards,

- Johannes
