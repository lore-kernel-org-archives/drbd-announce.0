Return-Path: <christoph.boehmwalder@linbit.com>
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
	[209.85.208.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 3A7E54202FA
	for <drbd-announce@lists.linbit.com>;
	Tue, 28 Feb 2023 18:30:43 +0100 (CET)
Received: by mail-ed1-f48.google.com with SMTP id i34so43154335eda.7
	for <drbd-announce@lists.linbit.com>;
	Tue, 28 Feb 2023 09:30:43 -0800 (PST)
Message-ID: <b50c6fa5-2594-36db-755a-2a585ac32e76@linbit.com>
Date: Tue, 28 Feb 2023 18:30:42 +0100
MIME-Version: 1.0
Content-Language: en-US
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
From: =?UTF-8?Q?Christoph_B=c3=b6hmwalder?= <christoph.boehmwalder@linbit.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [DRBD-announce] linstor-gateway v1.1.0
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

Hi all,

a new version of LINSTOR Gateway, v1.1.0, has just been released.

https://github.com/LINBIT/linstor-gateway/releases/tag/v1.1.0

The most interesting change is that the health check now verifies that
an NFS server is actually installed.

As always, we would appreciate it if you could test this new version and
report bugs and feedback via GitHub or here on this mailing list.

Thanks.

-- 
Christoph Böhmwalder
LINBIT | Keeping the Digital World Running
DRBD HA —  Disaster Recovery — Software defined Storage
