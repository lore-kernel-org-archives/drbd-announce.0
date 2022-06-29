Return-Path: <christoph.boehmwalder@linbit.com>
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 8967E42066B
	for <drbd-announce@lists.linbit.com>;
	Wed, 29 Jun 2022 12:32:50 +0200 (CEST)
Received: by mail-wr1-f45.google.com with SMTP id n1so21724702wrg.12
	for <drbd-announce@lists.linbit.com>;
	Wed, 29 Jun 2022 03:32:50 -0700 (PDT)
Message-ID: <7fde55a7-66b4-8c77-8fd7-547b12286160@linbit.com>
Date: Wed, 29 Jun 2022 12:32:48 +0200
MIME-Version: 1.0
Content-Language: en-US
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
From: =?UTF-8?Q?Christoph_B=c3=b6hmwalder?= <christoph.boehmwalder@linbit.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [DRBD-announce] linstor-gateway v0.13.0
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

Hello,

a new version of LINSTOR Gateway has just been released.


https://github.com/LINBIT/linstor-gateway/releases/v0.13.0


The main reason for this release is the new `--gross` flag, which
changes the behavior of the size argument so that it specifies the
actual amount of space that will be used on disk, rather than the usable
net size.

Please try it out and report any issues here or via GitHub.

Thank you!

-- 
Christoph Böhmwalder
LINBIT | Keeping the Digital World Running
DRBD HA —  Disaster Recovery — Software defined Storage
