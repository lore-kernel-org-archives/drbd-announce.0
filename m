Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
	[209.85.208.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D575042017B
	for <drbd-announce@lists.linbit.com>;
	Thu, 17 Feb 2022 18:03:29 +0100 (CET)
Received: by mail-ed1-f44.google.com with SMTP id s24so4385743edr.5
	for <drbd-announce@lists.linbit.com>;
	Thu, 17 Feb 2022 09:03:29 -0800 (PST)
Content-Type: multipart/alternative;
	boundary="------------ofmtRICiF8TOwY647oCZJ4pp"
Message-ID: <7649893c-ecdd-a924-cfc4-30a36a69f558@linbit.com>
Date: Thu, 17 Feb 2022 18:02:26 +0100
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: [DRBD-announce] WinDRBD 1.0.1 released
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
--------------ofmtRICiF8TOwY647oCZJ4pp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear WinDRBD users,

We are releasing a minor update to WinDRBD 1.0.0 which contains two changes:

The timeout for user mode helper scripts has been dropped from the kernel module.
This allows scripts to run longer than the previously hardcoded 10 seconds. They
now may take as long as they like.

On drbdsetup status --json --verbose --statistics now the reason for a suspend
of a resource is also printed. This is a fix from upstream drbd-utils.

We also fixed the git hash of the drbd-headers WinDRBD is based on so building
WinDRBD from source should be a little bit easier now.

Unless you need the JSON output or user mode helpers that run longer than
10 seconds you don't need to update.

If you update a binary signed installer can be downloaded from (as always):

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows

Best regards,

- Johannes
--------------ofmtRICiF8TOwY647oCZJ4pp
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear WinDRBD users,<br>
    <br>
    We are releasing a minor update to WinDRBD 1.0.0 which contains two
    changes:<br>
    <br>
    The timeout for user mode helper scripts has been dropped from the
    kernel module.<br>
    This allows scripts to run longer than the previously hardcoded 10
    seconds. They<br>
    now may take as long as they like.<br>
    <br>
    On drbdsetup status --json --verbose --statistics now the reason for
    a suspend<br>
    of a resource is also printed. This is a fix from upstream
    drbd-utils.<br>
    <br>
    We also fixed the git hash of the drbd-headers WinDRBD is based on
    so building<br>
    WinDRBD from source should be a little bit easier now. <br>
    <br>
    Unless you need the JSON output or user mode helpers that run longer
    than<br>
    10 seconds you don't need to update.<br>
    <br>
    If you update a binary signed installer can be downloaded from (as
    always):<br>
    <br>
<a class="moz-txt-link-freetext" href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows</a><br>
    <br>
    Best regards,<br>
    <br>
    - Johannes<br>
  </body>
</html>

--------------ofmtRICiF8TOwY647oCZJ4pp--
