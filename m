Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
	[209.85.218.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 9096C42091A
	for <drbd-announce@lists.linbit.com>;
	Tue, 11 Jun 2024 14:43:03 +0200 (CEST)
Received: by mail-ej1-f53.google.com with SMTP id
	a640c23a62f3a-a6e349c0f2bso512664466b.2
	for <drbd-announce@lists.linbit.com>;
	Tue, 11 Jun 2024 05:43:03 -0700 (PDT)
Message-ID: <f991e2f8-700c-4f7f-8c74-201f9c0afdf5@linbit.com>
Date: Tue, 11 Jun 2024 14:43:00 +0200
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.1.15 released
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

I am announcing a new WinDRBD stable release: 1.1.15. It fixes
a very rare corner case where Windows starts swapping out
kernel mode thread's stacks, which might cause a list corruption
on the events list. The patch to WinDRBD 1.1.15 simply disables
stack paging for WinDRBD threads.

There is no urgent need to upgrade WinDRBD unless you are
affected by this bug.

Best regards,

- Johannes
