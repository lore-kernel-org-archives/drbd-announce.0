Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D901D160983
	for <drbd-announce@lists.linbit.com>;
	Fri, 20 Jun 2025 11:25:18 +0200 (CEST)
Received: by mail-wm1-f53.google.com with SMTP id
	5b1f17b1804b1-450cb2ddd46so9459475e9.2
	for <drbd-announce@lists.linbit.com>;
	Fri, 20 Jun 2025 02:25:18 -0700 (PDT)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214]) by smtp.gmail.com with ESMTPSA id
	5b1f17b1804b1-4535e97ac4asm52391935e9.3.2025.06.20.02.25.16
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 20 Jun 2025 02:25:17 -0700 (PDT)
Message-ID: <dd287a50-d801-4ebc-90f0-ebd280963f49@linbit.com>
Date: Fri, 20 Jun 2025 11:25:15 +0200
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.2.0 released
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

# WinDRBD 1.2.0 Released

The LINBIT&reg; team and I are proud to announce the general availability of WinDRBD 1.2.0, which is the first stable version of the WinDRBD 1.2 branch.

Notable changes from the latest version (1.1.20) of the WinDRBD 1.1 branch are:

* WinDRBD 1.2.x uses the latest DRBD&reg; engines which are, at the time of this
   writing, DRBD 9.2.14 and DRBD 9.3.0. The LINBIT team will release WinDRBD
   versions based on a 9.2 and a 9.3 DRBD engine in parallel.
* Building WinDRBD 1.2.x is easier than building previous WinDRBD versions. You
   can build WinDRBD 1.2.x entirely on a Linux system, compared to needing a
   mixed setup (Windows and Linux) to build WinDRBD 1.1.
* WinDRBD 1.2.x uses a different compiler than previous versions to build the
   DRBD engine and the WinDRBD cross kernel compatibility layer. You can now
   compile WinDRBD 1.2 with the GNU compiler collection (`gcc`) and debug WinDRBD
   with GNU debugging tools (`gdb`). Because DRBD is a Linux kernel driver that
   uses many `gcc`-specific extensions to the C language, compiling with `gcc` (in
   contrast to compiling with Microsoft Visual C) requires significantly fewer
   patches to the DRBD engine source code.
* At build time, you can select the DRBD engine branch you want to use. This
   works for DRBD 9.0, 9.1, 9.2 and 9.3 [^1].
* Many subsystems of the WinDRBD compatibility layer have been re-enginieered.
   This makes for better performing software and a smoother user experience.
* WinDRBD 1.2 is integrated in the DRBD 9 test suite. This means that every
   (pushed) commit is tested for software regressions (new defects not present
   in a previous commit) and overall stability.
* Patches to DRBD originating from WinDRBD development are now maintained in the DRBD repository itself. This happens on separate branches in the DRBD repository, where the branch naming follows this convention: `win/windrbd-1.2-drbd-9.2.14`. There are also two Coccinelle (spatch) generated patches remaining. These are applied when WinDRBD is built.
* ReactOS (www.reactos.org) was added to the list of supported target platforms. This is interesting because it allows us to debug WinDRBD (and the ReactOS kernel) with GNU compatible tools such as `gdb`.

LINBIT provides [pre-compiled installer packages](https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/) for modern 64-bit Windows versions on its website. To load the WinDRBD driver, you need to put the target Windows system into Test Mode.

LINBIT customers can access officially signed driver packages. You can install
these driver packages without having to put the target system into Test Mode.
For customer evaluation access, [contact the LINBIT team](https://linbit.com/contact-us).

If you are still running WinDRBD 1.1, there is no urgent need to upgrade to a WinDRBD 1.2 version. If you have a new deployment, you should use WinDRBD 1.2.

Thanks,

Johannes Khoshnazar-Thoma

LINBIT WinDRBD Lead Developer

[^1]: Support for building WinDRBD based on DRBD 9.0 or DRBD 9.1 engines will likely drop, in favor of later versions, because the DRBD developers no longer maintain these older versions.

