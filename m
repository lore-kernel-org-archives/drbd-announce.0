Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
	[209.85.218.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 9C8D44203C5
	for <drbd-announce@lists.linbit.com>;
	Tue, 25 Oct 2022 15:57:13 +0200 (CEST)
Received: by mail-ej1-f42.google.com with SMTP id k2so12743190ejr.2
	for <drbd-announce@lists.linbit.com>;
	Tue, 25 Oct 2022 06:57:13 -0700 (PDT)
Message-ID: <568b4d56-83b9-a57e-0ebb-d617bcba6c8c@linbit.com>
Date: Tue, 25 Oct 2022 15:57:08 +0200
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [DRBD-announce] WinDRBD 1.1.0 released
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

Dear DRBD and WinDRBD user community,

We proudly announce the first version of the new 1.1 stable branch,
WinDRBD 1.1.0. The main new feature is support for SecureBoot systems,
by doing so we had to fix many smaller issues discovered by the
Microsoft Driver Verifier, various static code analyzer tools and
the Hardware Lab Kit tests. Since we are working behind the scenes
on LINSTOR For Windows we also fixed many issues that we found
while working with LINSTOR (which makes it far more easy to create
WinDRBD resources, therefore uncovering more issues than manual
tests).

As always an installer can be downloaded from the LINBIT website:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/

Unless you are targeting SecureBoot systems there is no urgent need
to upgrade from 1.0.X but you should consider this in the near future.
Just like DRBD a WinDRBD cluster can be upgraded without service
interruption. Also note that a reboot should not be neccessary.

We would love to hear your feedback via the mailing list or directly
at the LINBIT site.

Best regards,

- Johannes Thoma


