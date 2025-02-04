Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 566B1160644
	for <drbd-announce@lists.linbit.com>;
	Tue,  4 Feb 2025 13:33:33 +0100 (CET)
Received: by mail-wm1-f41.google.com with SMTP id
	5b1f17b1804b1-43621d27adeso37816115e9.2
	for <drbd-announce@lists.linbit.com>;
	Tue, 04 Feb 2025 04:33:33 -0800 (PST)
Message-ID: <37f628a7-8fc3-48fd-8f4b-a75398d30f6d@linbit.com>
Date: Tue, 4 Feb 2025 13:33:30 +0100
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.2.0-rc7 released
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

Dear WinDRBD community,

We are proud to announce the first public testing version of the new brightly
shining 1.2 branch of WinDRBD. Under the hood a lot has been changed
in this branch. The most notable changes are:

  * WinDRBD 1.2 supports DRBD 9.1, DRBD 9.2 and future DRBD branches
as HA block storage backends.

  * WinDRBD 1.2 can be built solely on Linux.

  * You can specify the DRBD engine to build against at build time.

  * There is a docker container containing all the build dependencies (still
     you can also create the container yourself or install the build dependencies
     on your host system).

  * WinDRBD 1.2 builds with MinGW instead of MS VC. This means that there
    are far less patches to DRBD necessary (less than 1% of DRBD is patched).

  * The patching system for DRBD has been completely reworked. Now manual
     patches reside on branches inside the DRBD repository. For example
     for DRBD 9.2 the current branch is win/windrbd-1.2-drbd-9.2.12. In
     addition there are 2 cocci patches which are applied by the build system.

   * And more code cleanups, bug fixes, ... more to follow.

There are downloadable installers at the Linbit website
(https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/)
built against DRBD 9.0, 9.1 and 9.2.

In addition, it is very easy to compile an installer yourself, to get started go to:

https://github.com/LINBIT/windrbd/tree/windrbd-1.2

and follow the First things First instructions of the README.md.

I would love to hear about your experiences with WinDRBD 1.2,

Thanks a lot,

- Johannes

PS: Last but not least, WinDRBD 1.2 supports ReactOS (32 bit) as target system.
This is very handy because the MinGW gcc (the compiler we use to build the
driver) cannot output debug information for Microsoft Windows windbg but
only for the GNU debugger (gdb). So we use gdb to debug WinDRBD on ReactOS
which works suprisingly well. If you want to try WinDRBD on ReactOS, try
running make help for build instructions. I'd also be more than happy to
help out getting WinDRBD running on ReactOS, just drop me an eMail.
