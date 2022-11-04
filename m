Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
	[209.85.218.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 1A6034201E3
	for <drbd-announce@lists.linbit.com>;
	Fri,  4 Nov 2022 14:16:23 +0100 (CET)
Received: by mail-ej1-f53.google.com with SMTP id kt23so13158579ejc.7
	for <drbd-announce@lists.linbit.com>;
	Fri, 04 Nov 2022 06:16:23 -0700 (PDT)
Message-ID: <ba2d535c-b07a-0240-f459-2bbd354dba5c@linbit.com>
Date: Fri, 4 Nov 2022 14:16:19 +0100
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [DRBD-announce] WinDRBD 1.1.2 released
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

This is a point release that fixes a blue screen of death (BSOD) that
may happen when resources that were Primary are brought down and
immediately brought up again. It is recommended for users who are
already on the 1.1.X branch to upgrade to this 1.1.2 version. You can
do so by first upgrading the Secondary (by running the installer) then
perform a switchover (primary becomes secondary, secondary becomes
primary, you also need to migrate your services such as databases and
so on) and then finally upgrade the former primary. If you wish you can
switch back now, but this is not required.

As always the installer can be downloaded from:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver

Best regards,

- Johannes


