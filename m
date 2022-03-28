Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4F4F24201DC
	for <drbd-announce@lists.linbit.com>;
	Mon, 28 Mar 2022 16:06:08 +0200 (CEST)
Received: by mail-wr1-f44.google.com with SMTP id a1so20550670wrh.10
	for <drbd-announce@lists.linbit.com>;
	Mon, 28 Mar 2022 07:06:08 -0700 (PDT)
Content-Type: multipart/alternative;
	boundary="------------I0hprnTLmeFG2NgiN8JxrBpu"
Message-ID: <eaf6a168-01c2-28fd-33a8-1562bd1d32de@linbit.com>
Date: Mon, 28 Mar 2022 16:06:05 +0200
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: [DRBD-announce] WinDRBD 1.0.2 released
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
--------------I0hprnTLmeFG2NgiN8JxrBpu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear DRBD and WinDRBD users,

This is a minor release of WinDRBD in which logging to the kernel logfile when
drbdadm status is run is removed. We had a user that ran drbdadm status every
5 seconds which ended up in a 70 GB logfile with mostly useless information.
Unless you are running drbdadm status in a loop you don't need to upgrade.

Please note that probably using drbdsetup events2 is a better wait to monitor
WinDRBD resources.

As always the installer is available from the Linbit website at:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/

Thank you for using WinDRBD, please also join our community meeting next
Thursday March 31 (more info on the Linbit homepage).

Best regards,

- Johannes
--------------I0hprnTLmeFG2NgiN8JxrBpu
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear DRBD and WinDRBD users,<br>
    <br>
    This is a minor release of WinDRBD in which logging to the kernel
    logfile when<br>
    drbdadm status is run is removed. We had a user that ran drbdadm
    status every<br>
    5 seconds which ended up in a 70 GB logfile with mostly useless
    information.<br>
    Unless you are running drbdadm status in a loop you don't need to
    upgrade.<br>
    <br>
    Please note that probably using drbdsetup events2 is a better wait
    to monitor<br>
    WinDRBD resources.<br>
    <br>
    As always the installer is available from the Linbit website at:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/</a><br>
    <br>
    Thank you for using WinDRBD, please also join our community meeting
    next<br>
    Thursday March 31 (more info on the Linbit homepage).<br>
    <br>
    Best regards,<br>
    <br>
    - Johannes<br>
  </body>
</html>

--------------I0hprnTLmeFG2NgiN8JxrBpu--
