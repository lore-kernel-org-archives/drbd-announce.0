Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
	[209.85.218.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 73BE242030C
	for <drbd-announce@lists.linbit.com>;
	Fri, 26 Jul 2024 10:20:47 +0200 (CEST)
Received: by mail-ej1-f43.google.com with SMTP id
	a640c23a62f3a-a7ac469e4c4so249200466b.0
	for <drbd-announce@lists.linbit.com>;
	Fri, 26 Jul 2024 01:20:47 -0700 (PDT)
Message-ID: <a1cd7e47-ded9-4c0d-b7f5-17f71aae76e9@linbit.com>
Date: Fri, 26 Jul 2024 10:20:44 +0200
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.1.18 released
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

I just release another WinDRBD release. This release contains a
fix in the cygwin DLL library that should fix the hanging drbdadm
processes that can happen when they are executed from a
Windows service and a normal session in paralell. Unless you
are affected by this bug there is no urgent need to upgrade.

As always an eval installer is available from the linbit website.
Please be sure to put your Windows machine into testmode by
running

bcdedit /SET TESTSIGNING ON

and reboot the machine.

Happy hacking :)

  - Johannes
