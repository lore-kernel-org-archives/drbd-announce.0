Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 07D9742062B
	for <drbd-announce@lists.linbit.com>;
	Thu, 23 Sep 2021 16:30:46 +0200 (CEST)
Received: by mail-wr1-f46.google.com with SMTP id d21so17676691wra.12
	for <drbd-announce@lists.linbit.com>;
	Thu, 23 Sep 2021 07:30:46 -0700 (PDT)
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Message-ID: <dd064340-7eba-f573-90de-0d51fd0b26c3@linbit.com>
Date: Thu, 23 Sep 2021 16:30:42 +0200
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="------------29B60A7BEC9B0FECE368189B"
Subject: [DRBD-announce] WinDRBD 1.0.0-rc15 released
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
--------------29B60A7BEC9B0FECE368189B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear WinDRBD and DRBD community,

We are happy to announce another -rc: 1.0.0-rc15. In this release a
thread leak is fixed that caused a thread being started and never terminated
on each connection attempt. If you face system unstableness when a
resource is in Connecting state you should upgrade to this release.

Other than that the installer has learned to configure WinDRBD for
relocation of the WinDRBD sysroot ("C:\WinDRBD") and application
("C:\Program Files\WinDRBD") directories. This is handy for example
if you use something beside C: as your Windows system root (and
C: is read only for example).

Please help testing this release canidate: you can download the installer
from the Linbit homepage at:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows

Thanks a lot and happy hacking,

Best regards,

- Johannes

PS: Please note that my eMail Address has changed (from johannes@johannesthoma.com
to johannes.thoma@linbit.com) I still read eMails on both accounts but would prefer
to receive WinDRBD related eMails at the johannes.thoma@linbit.com address.

--------------29B60A7BEC9B0FECE368189B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear WinDRBD and DRBD community,<br>
    <br>
    We are happy to announce another -rc: 1.0.0-rc15. In this release a<br>
    thread leak is fixed that caused a thread being started and never
    terminated<br>
    on each connection attempt. If you face system unstableness when a <br>
    resource is in Connecting state you should upgrade to this release.<br>
    <br>
    Other than that the installer has learned to configure WinDRBD for<br>
    relocation of the WinDRBD sysroot ("C:\WinDRBD") and application<br>
    ("C:\Program Files\WinDRBD") directories. This is handy for example
    <br>
    if you use something beside C: as your Windows system root (and<br>
    C: is read only for example).<br>
    <br>
    Please help testing this release canidate: you can download the
    installer<br>
    from the Linbit homepage at:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows</a><br>
    <br>
    Thanks a lot and happy hacking,<br>
    <br>
    Best regards,<br>
    <br>
    - Johannes<br>
    <br>
    PS: Please note that my eMail Address has changed (from
    <a class="moz-txt-link-abbreviated" href="mailto:johannes@johannesthoma.com">johannes@johannesthoma.com</a><br>
    to <a class="moz-txt-link-abbreviated" href="mailto:johannes.thoma@linbit.com">johannes.thoma@linbit.com</a>) I still read eMails on both accounts
    but would prefer<br>
    to receive WinDRBD related eMails at the <a class="moz-txt-link-abbreviated" href="mailto:johannes.thoma@linbit.com">johannes.thoma@linbit.com</a>
    address.<br>
  </body>
</html>

--------------29B60A7BEC9B0FECE368189B--
