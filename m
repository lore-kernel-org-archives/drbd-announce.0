Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
	[209.85.218.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 0D0B4421742
	for <drbd-announce@lists.linbit.com>;
	Mon, 31 Oct 2022 15:54:41 +0100 (CET)
Received: by mail-ej1-f43.google.com with SMTP id y14so30043756ejd.9
	for <drbd-announce@lists.linbit.com>;
	Mon, 31 Oct 2022 07:54:41 -0700 (PDT)
Message-ID: <1e97e18a-4834-c22f-cb96-fff00151314e@linbit.com>
Date: Mon, 31 Oct 2022 15:54:37 +0100
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [DRBD-announce] WinDRBD 1.1.1 released
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

We just released WinDRBD 1.1.1 - it is the same source as 1.1.0 but the
version number has changed. It is released as a convenience for those
who installed WinDRBD 1.1.0 before Oct 28 (which had a signature bug).
Upgrading from those 1.1.0 versions to 1.1.1 should work without having
to manually uninstall WinDRBD and manually remove the Virtual Bus Device.

This release can be downloaded at:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows

And again, no need to upgrade unless you installed 1.1.0 before Oct 28 (the
current 1.1.0 on the web site does not have the signature bug and should install
normally).

Best regards,

- Johannes
