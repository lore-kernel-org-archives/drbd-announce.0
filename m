Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 56BA116087D
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Apr 2026 15:31:45 +0200 (CEST)
Received: by mail-wm1-f44.google.com with SMTP id
	5b1f17b1804b1-488a29e6110so60979275e9.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Apr 2026 06:31:45 -0700 (PDT)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214]) by smtp.gmail.com with ESMTPSA id
	5b1f17b1804b1-488ede1e826sm106310545e9.6.2026.04.14.06.31.42
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 14 Apr 2026 06:31:42 -0700 (PDT)
Message-ID: <33ca9b9f-f822-4f55-8a82-6e5ee98a3fdd@linbit.com>
Date: Tue, 14 Apr 2026 15:31:41 +0200
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
From: Johannes Khoshnazar-Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.1.23 released
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

We just released a patch release of the WinDRBD 1.1 branch: it fixes a
possible BSOD that can happen when a device driver sends a SCSI I/O
request with the start sector larger than the block device. This normally
cannot happen because upper layer drivers already check the value,
so at least from user space it is not possible to trigger that BSOD.

There is no urgent need to upgrade, only if you think you are affected
by this missing range check.

Other than that, the rest of the WinDRBD (and DRBD) source code was
not touched.

Best regards,

- Johannes
