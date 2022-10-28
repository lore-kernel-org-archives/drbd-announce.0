Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
	[209.85.218.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B31F7420671
	for <drbd-announce@lists.linbit.com>;
	Fri, 28 Oct 2022 16:30:21 +0200 (CEST)
Received: by mail-ej1-f49.google.com with SMTP id q9so13454896ejd.0
	for <drbd-announce@lists.linbit.com>;
	Fri, 28 Oct 2022 07:30:21 -0700 (PDT)
Message-ID: <ecd31373-b902-c821-8884-02abf5a3085a@linbit.com>
Date: Fri, 28 Oct 2022 16:30:16 +0200
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [DRBD-announce] WinDRBD 1.1.0 installer issue
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

We became aware of an issue in the installer install-windrbd-1.1.0.exe,
published on Oct 25. It won't install unless you have testsigning enabled
(which you should not enable).

We updated the installer on the WebSite (it should show October 28 as date)
as a hotfix and will publish a 1.1.1 version soon. The reason for the hotfix
is that even we just change the version number we have to run all HLK tests
once more which takes a whole day.

If you installed the 1.1.0 from Oct 25 already you have to:

.) uninstall WinDRBD
.) delete the WinDRBD Virtual Bus Device manually (and check delete driver)
    from Control Panel / Hardware / Device Manager.

Alternatively you wait until Monday when we will release 1.1.1.

I would like to apologize for the inconvenience I tested the installer but with
machines that we use for development with test signing on. Therefore we
didn't see the issue before.

If you have any questions or need help to upgrade, please let me know via
EMail.

Best regards,

- Johannes
