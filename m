Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 3EBF5160905
	for <drbd-announce@lists.linbit.com>;
	Tue,  1 Jul 2025 14:02:00 +0200 (CEST)
Received: by mail-wm1-f44.google.com with SMTP id
	5b1f17b1804b1-4537fdec39fso10002245e9.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 01 Jul 2025 05:02:00 -0700 (PDT)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214]) by smtp.gmail.com with ESMTPSA id
	ffacd0b85a97d-3a88c7e6f74sm13048436f8f.3.2025.07.01.05.01.56
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 01 Jul 2025 05:01:57 -0700 (PDT)
Message-ID: <177a63d9-ba4f-4b8f-8148-14555a552ede@linbit.com>
Date: Tue, 1 Jul 2025 14:01:54 +0200
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.2.1 released
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

I just released WinDRBD 1.2.1. The main difference to the 1.2.0 version
is that the workqueue implementation has been rewritten in order to
allow multi-threaded workqueues. This fixes a hang in Disconnecting
when resources are disconnected on different nodes in parallel. Also
the new workqueue implementation is based solely on (existing) Linux
primitives (threads, spinlocks, wait queues and lists) and could compile
and work (in theory, I haven't tested that) also in a recent Linux kernel.

Unless you are affected by resources hanging in Disconnected there
is no urgent need to upgrade.

Best regards,

- Johannes
