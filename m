Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B077A421742
	for <drbd-announce@lists.linbit.com>;
	Fri, 21 Oct 2022 12:19:51 +0200 (CEST)
Received: by mail-wm1-f51.google.com with SMTP id
	186-20020a1c02c3000000b003c6c154d528so4650696wmc.4
	for <drbd-announce@lists.linbit.com>;
	Fri, 21 Oct 2022 03:19:51 -0700 (PDT)
Message-ID: <37bd4408-3c3f-2f9c-2ac6-d5b56af3a665@linbit.com>
Date: Fri, 21 Oct 2022 12:19:48 +0200
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [DRBD-announce] WinDRBD 1.1.0-rc5
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

Dear DRBD and WinDRBD users,

This is another release canidate which fixes two minor issues: from the WHATSNEW.md:

Fixed drbdadm adjust: Don't always detach / attach

Fixed drbdsetup hang: there is a timeout in stable_state_change now

Again, please help testing this release canidate, you can download it from:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/

Best regards,

- Johannes

