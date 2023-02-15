Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
	[209.85.218.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 359FE421039
	for <drbd-announce@lists.linbit.com>;
	Wed, 15 Feb 2023 14:11:28 +0100 (CET)
Received: by mail-ej1-f54.google.com with SMTP id mc25so10699143ejb.13
	for <drbd-announce@lists.linbit.com>;
	Wed, 15 Feb 2023 05:11:28 -0800 (PST)
Content-Type: multipart/alternative;
	boundary="------------8OVT7Um4st2BuSbJhT06ZKR1"
Message-ID: <787fd448-91f5-c08d-80ab-594d9f8e0f11@linbit.com>
Date: Wed, 15 Feb 2023 14:11:25 +0100
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: [DRBD-announce] WinDRBD 1.1.6 released
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
--------------8OVT7Um4st2BuSbJhT06ZKR1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear WinDRBD Users,

I just released a new minor version of WinDRBD. In particular,
ReFS as a file system upon a WinDRBD device was fixed (broken
since 1.1.0). There is no urgent need to upgrade WinDRBD unless
you need some of the features/fixes below.

 From the WHATSNEW.md file:

What's new in version 1.1.6
---------------------------

Updated cygwin DLL and binaries (Feb 3 2023)

Add PATH component to programs run by installer. This
enables running the installer from a background service.

Fixed ReFS support (was broken since 1.1.0, works in 1.0.2)

Add ReFS support for existing data partitions (virtual
partition table).

As always, a signed installer can be downloaded from the
LINBIT website:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver

Best regards,

- Johannes
--------------8OVT7Um4st2BuSbJhT06ZKR1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear WinDRBD Users,<br>
    <br>
    I just released a new minor version of WinDRBD. In particular,<br>
    ReFS as a file system upon a WinDRBD device was fixed (broken<br>
    since 1.1.0). There is no urgent need to upgrade WinDRBD unless<br>
    you need some of the features/fixes below.<br>
    <br>
    From the WHATSNEW.md file:<br>
    <br>
    <font face="monospace">What's new in version 1.1.6<br>
      ---------------------------<br>
      <br>
      Updated cygwin DLL and binaries (Feb 3 2023)<br>
      <br>
      Add PATH component to programs run by installer. This<br>
      enables running the installer from a background service.<br>
      <br>
      Fixed ReFS support (was broken since 1.1.0, works in 1.0.2)<br>
      <br>
      Add ReFS support for existing data partitions (virtual<br>
      partition table).<br>
      <br>
    </font>As always, a signed installer can be downloaded from the<br>
    LINBIT website:<br>
    <pre><a href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver" class="moz-txt-link-freetext">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver</a>

</pre>
    Best regards,<br>
    <br>
    - Johannes<br>
  </body>
</html>

--------------8OVT7Um4st2BuSbJhT06ZKR1--
