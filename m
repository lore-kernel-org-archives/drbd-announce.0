Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
	[209.85.218.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 581094202BA
	for <drbd-announce@lists.linbit.com>;
	Fri, 28 Jun 2024 15:18:49 +0200 (CEST)
Received: by mail-ej1-f49.google.com with SMTP id
	a640c23a62f3a-a72517e6225so77184766b.0
	for <drbd-announce@lists.linbit.com>;
	Fri, 28 Jun 2024 06:18:49 -0700 (PDT)
Message-ID: <c926a32e-d22b-470f-8d9c-0dc242fea5d0@linbit.com>
Date: Fri, 28 Jun 2024 15:18:47 +0200
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.1.16 released
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

Dear WinDRBD users,

We just released WinDRBD 1.1.16 which fixes a reason for a BSOD
(system crash) when there are 4 billion I/O requests submitted to
WinDRBD. While this seems to be a large number it has already
been triggered by an installation in the field. The fix corrects both
the counter of the pending I/O requests and the missing  list
initialization that lead to the system crash.

Updating WinDRBD to 1.1.16 is recommended.

A precompiled evaluation copy can be downloaded from the LINBIT
homepage, customers will receive their access key in a separate
mail.

Best regards and my apologies for this stupid defect,

- Johannes
