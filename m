Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4A50C4201D9
	for <drbd-announce@lists.linbit.com>;
	Fri, 16 Sep 2022 13:57:00 +0200 (CEST)
Received: by mail-wr1-f45.google.com with SMTP id g3so14751568wrq.13
	for <drbd-announce@lists.linbit.com>;
	Fri, 16 Sep 2022 04:57:00 -0700 (PDT)
Content-Type: multipart/alternative;
	boundary="------------bhTRkOUl0cKUg0zpcFsFbf3T"
Message-ID: <9c0370cb-29a6-5c8f-8e94-e11c19aac322@linbit.com>
Date: Fri, 16 Sep 2022 13:56:58 +0200
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: [DRBD-announce] WinDRBD 1.1.0-rc3 released
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
--------------bhTRkOUl0cKUg0zpcFsFbf3T
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear DRBD and WinDRBD users,

This is another release canidate for the 1.1 branch of WinDRBD.
It mainly contains bugfixes and the installer already knows
about LINSTOR: it will stop and start again the linstor-satellite
on upgrade (if it exists).

Also we fixed an issue with using existing data. Since this
requires configuration file changes we will publish a
tech guide on the LINBIT website soon explaining how
this can be done. Also c-max-rate setting should
work now, allowing to sync at slower speed.

This is a release canidate please help by testing it.

As always, you can download the installer from:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/

 From the WHATSNEW.md file:

Fix a DRBD issue that causes a resource to be stucked in Negoiating
on attach when there were 3 nodes.

Workaround for a (possible) Windows bug when reusing data of
NTFS partitions larger than 1.3TB. (You will have to specify
a drive letter where to mount the WinDRBD device)

Short timeout of drbdadm defaults to 30 seconds for Windows
systems.

Implemented disk statistics thereby fixing the resync rate
controller (setting c-max-rate had no effect before).

Installer: stop and restart LINSTOR satellite if present

Best regards,

- Johannes
--------------bhTRkOUl0cKUg0zpcFsFbf3T
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear DRBD and WinDRBD users,<br>
    <br>
    This is another release canidate for the 1.1 branch of WinDRBD.<br>
    It mainly contains bugfixes and the installer already knows<br>
    about LINSTOR: it will stop and start again the linstor-satellite<br>
    on upgrade (if it exists).<br>
    <br>
    Also we fixed an issue with using existing data. Since this<br>
    requires configuration file changes we will publish a<br>
    tech guide on the LINBIT website soon explaining how<br>
    this can be done. Also c-max-rate setting should<br>
    work now, allowing to sync at slower speed.<br>
    <br>
    This is a release canidate please help by testing it.<br>
    <br>
    As always, you can download the installer from:<br>
    <br>
    <a class="moz-txt-link-freetext"
href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/</a><br>
    <br>
    From the WHATSNEW.md file:<br>
    <br>
    <font face="monospace">Fix a DRBD issue that causes a resource to be
      stucked in Negoiating<br>
      on attach when there were 3 nodes.<br>
      <br>
      Workaround for a (possible) Windows bug when reusing data of<br>
      NTFS partitions larger than 1.3TB. (You will have to specify<br>
      a drive letter where to mount the WinDRBD device)<br>
      <br>
      Short timeout of drbdadm defaults to 30 seconds for Windows<br>
      systems.<br>
      <br>
      Implemented disk statistics thereby fixing the resync rate<br>
      controller (setting c-max-rate had no effect before).<br>
      <br>
      Installer: stop and restart LINSTOR satellite if present<br>
    </font><br>
    Best regards,<br>
    <br>
    - Johannes<font face="monospace"><br>
    </font>
  </body>
</html>

--------------bhTRkOUl0cKUg0zpcFsFbf3T--
