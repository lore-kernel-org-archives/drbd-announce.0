Return-Path: <philipp.reisner@linbit.com>
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com
	[209.85.166.169])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D84B74203B9
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Feb 2021 18:13:31 +0100 (CET)
Received: by mail-il1-f169.google.com with SMTP id h18so5572675ils.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Feb 2021 09:13:31 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Thu, 25 Feb 2021 18:13:19 +0100
Message-ID: <CADGDV=Vc4oOENyWA6hz896cBZwXT=TnmdFHTiLCwtk3JKO+1cA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.0
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

Hi,

drbd-9.1.0 is a drop-in replacement for drbd-9.0.x. Same config. Same
userspace utilities. Same wire protocol.
Compared to drbd-9.0.z it contains a changeset that reduces
contention on split-locks in the IO-submit code path of DRBD. That is
the code path that is most critical for DRBD's IO performance. It
needed a rework to reflect CPUs that have an increasing number of CPU
cores and to address NVMe drives that deliver more performance if
IO-requests are submitted from many CPUs in parallel.

9.1.0 (api:genl2/proto:110-119/transport:16)
--------
 * was forked off from drbd 9.0.19
 * has all changes up to 9.0.28-1
 * locking in the IO-submit code path was considerably improved,
   allowing multiple CPU to submit in parallel

https://www.linbit.com/downloads/drbd/9/drbd-9.1.0.tar.gz
https://github.com/LINBIT/drbd/commit/eec3daedd7bd5e518780284841090f95806fd8d9
