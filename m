Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 05B6D4202BF
	for <drbd-announce@lists.linbit.com>;
	Wed,  7 Aug 2024 18:46:38 +0200 (CEST)
Received: by mail-ed1-f43.google.com with SMTP id
	4fb4d7f45d1cf-5b8c2a611adso2809654a12.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 07 Aug 2024 09:46:38 -0700 (PDT)
Message-ID: <2ea9dd1d-89df-4a09-b993-561d6e145a59@linbit.com>
Date: Wed, 7 Aug 2024 18:46:35 +0200
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.1.19 released
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

We just released a new version of WinDRBD: 1.1.19. The only difference
to 1.1.18 is that an optimization that was implemented in 1.1.8 (speeding
up initial bitmap read on attach) was patched out since it caused troubles
on certain setups with storage backend throtteling. If you are not affected
by this (one symptom being drbdadm status hanging for several minutes)
there is no urgent need to upgrade.

As always the self-signed WinDRBD installer can be downloaded from
the linbit.com website. For these eval versions you have to put Windows
into test mode (bcdedit /set TESTSIGNING ON and reboot).

Best regards,

- Johannes
