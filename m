Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 3CCC94202E4
	for <drbd-announce@lists.linbit.com>;
	Fri, 22 Oct 2021 15:57:07 +0200 (CEST)
Received: by mail-wr1-f42.google.com with SMTP id d13so425741wrf.11
	for <drbd-announce@lists.linbit.com>;
	Fri, 22 Oct 2021 06:57:07 -0700 (PDT)
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Message-ID: <4889f45e-9534-0c9d-00ea-ebd01df1d397@linbit.com>
Date: Fri, 22 Oct 2021 15:57:04 +0200
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="------------83212AEAB973C72517D38210"
Subject: [DRBD-announce] WinDRBD 1.0.0-rc17 released
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
--------------83212AEAB973C72517D38210
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear DRBD and WinDRBD users,

We are proud to release WinDRBD 1.0.0-rc17 with many new features: most
notably no reboots on upgrading are required any more (when upgrading
from 1.0.0-rc17 to an upcoming newer version).

As far as I am concerned this rc is feature complete for the stable 1.0.0
version. Unless there are showstopper bugs coming up in the next 2
weeks we will release the stable 1.0.0 version in 2 weeks for now.

Please help by testing this release canidate.

As always an installable EXE signed by Linbit can be downloaded from:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows

Here is the complete list of new features (see also the WHATSNEW.md file
in the repo at https://github.com/LINBIT/windrbd):

Driver unloading: No reboot on Upgrade/Uninstall: Future versions are able to remove
the WinDRBD driver without reboot (you just need to take down the DRBD resources).

Upgrade to 9.0.31: DRBD was upgraded to the latest version as of October 22 2021.

Userland services (umhelper, log) are started on boot: Finally also the userland
services that come with WinDRBD are started automatically.

/VERYSILENT install: Upgrade can be done without GUI interaction (you have to affirm
the Linbit key the first time)

Setup logging: You can find a log file in the %TEMP% (C:\Windows\Temp) after installation.

Online resize works: Resizing (both enlarge and shrinking) a DRBD resource while it is in
use is working now.

Dynamic disks as backing devices work: Partitions on Dynamic Disks can be used as Backing
devices for WinDRBD resources.

Fix for install userland errors message box: This was introduced in WinDRBD 1.0.0-rc15 and
should be fixed now.

Thank you for contributing to WinDRBD development by using it.

Best regards and happy hacking,

- Johannes

--------------83212AEAB973C72517D38210
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear DRBD and WinDRBD users,<br>
    <br>
    We are proud to release WinDRBD 1.0.0-rc17 with many new features:
    most<br>
    notably no reboots on upgrading are required any more (when
    upgrading<br>
    from 1.0.0-rc17 to an upcoming newer version). <br>
    <br>
    As far as I am concerned this rc is feature complete for the stable
    1.0.0<br>
    version. Unless there are showstopper bugs coming up in the next 2<br>
    weeks we will release the stable 1.0.0 version in 2 weeks for now.<br>
    <br>
    Please help by testing this release canidate.<br>
    <br>
    As always an installable EXE signed by Linbit can be downloaded
    from:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows</a><br>
    <br>
    Here is the complete list of new features (see also the WHATSNEW.md
    file<br>
    in the repo at <a class="moz-txt-link-freetext" href="https://github.com/LINBIT/windrbd">https://github.com/LINBIT/windrbd</a>):<br>
    <br>
    Driver unloading: No reboot on Upgrade/Uninstall: Future versions
    are able to remove<br>
    the WinDRBD driver without reboot (you just need to take down the
    DRBD resources). <br>
    <br>
    Upgrade to 9.0.31: DRBD was upgraded to the latest version as of
    October 22 2021.<br>
    <br>
    Userland services (umhelper, log) are started on boot: Finally also
    the userland<br>
    services that come with WinDRBD are started automatically. <br>
    <br>
    /VERYSILENT install: Upgrade can be done without GUI interaction
    (you have to affirm<br>
    the Linbit key the first time)<br>
    <br>
    Setup logging: You can find a log file in the %TEMP%
    (C:\Windows\Temp) after installation.<br>
    <br>
    Online resize works: Resizing (both enlarge and shrinking) a DRBD
    resource while it is in<br>
    use is working now.<br>
    <br>
    Dynamic disks as backing devices work: Partitions on Dynamic Disks
    can be used as Backing<br>
    devices for WinDRBD resources.<br>
    <br>
    Fix for install userland errors message box: This was introduced in
    WinDRBD 1.0.0-rc15 and<br>
    should be fixed now. <br>
    <br>
    Thank you for contributing to WinDRBD development by using it.<br>
    <br>
    Best regards and happy hacking,<br>
    <br>
    - Johannes<br>
  </body>
</html>

--------------83212AEAB973C72517D38210--
