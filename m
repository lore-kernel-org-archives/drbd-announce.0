Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 626184201FB
	for <drbd-announce@lists.linbit.com>;
	Mon,  8 Nov 2021 15:52:15 +0100 (CET)
Received: by mail-wr1-f49.google.com with SMTP id u18so27329524wrg.5
	for <drbd-announce@lists.linbit.com>;
	Mon, 08 Nov 2021 06:52:15 -0800 (PST)
Content-Type: multipart/alternative;
	boundary="------------GTZlAoOBuOBT88aMR8bLwET1"
Message-ID: <5d08bd44-7660-763e-7734-ae51a2ed083f@linbit.com>
Date: Mon, 8 Nov 2021 15:52:13 +0100
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: [DRBD-announce] WinDRBD 1.0.0-rc18 released
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

This is a multi-part message in MIME format.
--------------GTZlAoOBuOBT88aMR8bLwET1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear WinDRBD users,

1.0.0-rc17 contains a bug introduced in 1.0.0-rc14 which is now
fixed there is this 1.0.0-rc18 release. It was a bluescreen which
happens sometimes when syncing larger amounts of data.
Also upgrading without reboot now should run more smooth and
the user mode services (windrbdlog and windrbdumhelper) are
always started by the installer (in particular on a fresh install).

Please help testing this release canidate (the bug was found by an
external tester so your testing is very valueable for increasing the
stability of WinDRBD).

As always an installable EXE signed by Linbit can be downloaded from:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows

Here is the complete list of new features (see also the WHATSNEW.md file
in the repo at https://github.com/LINBIT/windrbd):

Fixed a BSOD bug in writing to event log introduced in 1.0.0-rc14

Installer: no reboot on upgrade should work now also in corner cases.

Installer: Always start user mode services (windrbdlog, windrbdumhelper)

Thank you for your contribution,

Best regards,

- Johannes
--------------GTZlAoOBuOBT88aMR8bLwET1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear WinDRBD users,<br>
    <br>
    1.0.0-rc17 contains a bug introduced in 1.0.0-rc14 which is now<br>
    fixed there is this 1.0.0-rc18 release. It was a bluescreen which<br>
    happens sometimes when syncing larger amounts of data.<br>
    Also upgrading without reboot now should run more smooth and<br>
    the user mode services (windrbdlog and windrbdumhelper) are<br>
    always started by the installer (in particular on a fresh install).<br>
    <br>
    Please help testing this release canidate (the bug was found by an<br>
    external tester so your testing is very valueable for increasing the<br>
    stability of WinDRBD).<br>
    <br>
    As always an installable EXE signed by Linbit can be downloaded
    from:<br>
    <br>
    <a class="moz-txt-link-freetext"
href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows</a><br>
    <br>
    Here is the complete list of new features (see also the WHATSNEW.md
    file<br>
    in the repo at <a class="moz-txt-link-freetext"
      href="https://github.com/LINBIT/windrbd">https://github.com/LINBIT/windrbd</a>):<br>
    <br>
    Fixed a BSOD bug in writing to event log introduced in 1.0.0-rc14<br>
    <br>
    Installer: no reboot on upgrade should work now also in corner
    cases.<br>
    <br>
    Installer: Always start user mode services (windrbdlog,
    windrbdumhelper)<br>
    <br>
    Thank you for your contribution,<br>
    <br>
    Best regards,<br>
    <br>
    - Johannes<br>
  </body>
</html>
--------------GTZlAoOBuOBT88aMR8bLwET1--

