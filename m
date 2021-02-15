Return-Path: <philipp.reisner@linbit.com>
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com
	[209.85.166.169])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 07D5B4201EF
	for <drbd-announce@lists.linbit.com>;
	Mon, 15 Feb 2021 15:58:35 +0100 (CET)
Received: by mail-il1-f169.google.com with SMTP id a16so5692224ilq.5
	for <drbd-announce@lists.linbit.com>;
	Mon, 15 Feb 2021 06:58:35 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 15 Feb 2021 15:58:23 +0100
Message-ID: <CADGDV=XdVDEP1SsBbCYB05+gDNKPb6NEQ_YB+sDkAaEY_C9itA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.0-rc.1
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

In May 2018, I started to work on a changeset that should reduce
contention on split-locks in the IO-submit code path of DRBD. That is
the code path that is most critical for DRBD's IO performance. It
needed a rework to reflect CPUs that have an increasing number of CPU
cores and to address NVMe drives that deliver more performance if
IO-requests are submitted from many CPUs in parallel. Work progressed
slowly we had to fix many issues in drbd-9.0.z. In August 2019 we did
a first alpha release of it, called DRBD-10.0.0a1 back then. It turned
out that it bugs that can cause IO to stuck.

We have kept the branch up-to-date all the time since then.

Compared to DRBD-9.0.x the changes are:
  * Remove support for RHEL6 kernels. Remove support for everything
    older than RHEL7's Linux-3.10 kernel.
  * Improved locking in IO-submission and other code-paths. That
    can improve performance considerably.

It is a drop-in replacement for drbd-9.0.x. Same config. Same
userspace utilities. Same wire protocol. That is the reason are going
to release it as drbd-9.1.0 in a few days. It does not deserve to be
"10" since it does not change any fundamental concepts.

At the same time, we start to follow Semantic Versioning as close as
it makes sense for DRBD. See https://semver.org/ . The usual releases
the follow the 2-3 month cadence, will increase the middle
number. (The same way drbd-utils is doing it)

We continue to maintain drbd-9.0.z until the end of the Year 2021. All
drbd-9.y.0 (where y > 0) will be released on the same day as a
drbd-9.0.z release. Until the end of the Year, all bug-fixes will go
into both branches.

We have more ideas to further reduce contention on spin-locks as well
as how to reduce contention between application IO and resyncs. These
patches go only into the drbd-9.y.0 branch.

Please help testing! This is a release candidate.

https://www.linbit.com/downloads/drbd/9/drbd-9.1.0-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/0ae52f7b8958b1361d097c18309d0c3d0f860383
