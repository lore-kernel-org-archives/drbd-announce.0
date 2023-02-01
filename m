Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E7B794210CC
	for <drbd-announce@lists.linbit.com>;
	Wed,  1 Feb 2023 14:59:21 +0100 (CET)
Received: by mail-ed1-f54.google.com with SMTP id v13so17734083eda.11
	for <drbd-announce@lists.linbit.com>;
	Wed, 01 Feb 2023 05:59:21 -0800 (PST)
Message-ID: <e6b2cd0d-012f-e4fe-849f-11f6154964cc@linbit.com>
Date: Wed, 1 Feb 2023 14:59:18 +0100
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [DRBD-announce] WinDRBD 1.1.5 released
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

This is a hotfix release for a bug that was introduced in 1.1.4. If one has
disks larger than about 2TB accessing them might not work. If you are
using WinDRBD 1.1.4 please upgrade now.

The signed installer can be downloaded from the LINBIT website:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver

Best regards,

- Johannes
