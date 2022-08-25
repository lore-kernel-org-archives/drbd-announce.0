Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 705984201AA
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Aug 2022 19:09:06 +0200 (CEST)
Received: by mail-wr1-f50.google.com with SMTP id b5so21136279wrr.5
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Aug 2022 10:09:06 -0700 (PDT)
Content-Type: multipart/alternative;
	boundary="------------GiSRSeuBtizYUubioHOtmnVr"
Message-ID: <57edf902-be8c-9f6f-fc0a-6424e8fce49c@linbit.com>
Date: Thu, 25 Aug 2022 19:08:03 +0200
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: [DRBD-announce] WinDRBD 1.1.0-rc2 released
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
--------------GiSRSeuBtizYUubioHOtmnVr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear DRBD and WinDRBD users,

I spent a lot of time working on LINSTOR for Windows, which I expect to be
merged into upstream LINSTOR later this year. Therefore the WinDRBD
development was on hold for a time, but now we continue (besides others
making SyncSource much faster).

Working with LINSTOR also revealed hard to trigger WinDRBD / DRBD bugs,
some of which are fixed with this release canidate.

 From the WHATSNEW.md file:

What's new in version 1.1.0-rc2
---------------------------

Can install self-signed WinDRBD driver via ssh

Improve sync speed when sync source

Fixed a WinDRBD stuckness on drbdadm secondary when there was more
than one Volume.

Fixed online resize while connected.

So, if you want to give this release canidate a try, please do!

You can download the installer from:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/

If you wish to build WinDRBD from source, here is the sounrde repo on github:

https://github.com/LINBIT/windrbd

Since for building WinDRBD still a mixed Linux/Windows build setup is necessary
I recommend to use the installer if you just want to use (and not to develop for)
WinDRBD. I am working on making build possible on Linux only (using Wine for
the Windows part).

Best wishes and please let us know about feature requests, bug reports and more
stuff regarding WinDRBD, either on github or by eMail,

- Johannes Thoma


--------------GiSRSeuBtizYUubioHOtmnVr
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear DRBD and WinDRBD users,<br>
    <br>
    I spent a lot of time working on LINSTOR for Windows, which I expect
    to be<br>
    merged into upstream LINSTOR later this year. Therefore the WinDRBD<br>
    development was on hold for a time, but now we continue (besides
    others<br>
    making SyncSource much faster).<br>
    <br>
    Working with LINSTOR also revealed hard to trigger WinDRBD / DRBD
    bugs, <br>
    some of which are fixed with this release canidate.<br>
    <br>
    From the WHATSNEW.md file:<br>
    <br>
    <font face="monospace">What's new in version 1.1.0-rc2<br>
      ---------------------------<br>
      <br>
      Can install self-signed WinDRBD driver via ssh<br>
      <br>
      Improve sync speed when sync source<br>
      <br>
      Fixed a WinDRBD stuckness on drbdadm secondary when there was more<br>
      than one Volume.<br>
      <br>
      Fixed online resize while connected.<br>
      <br>
    </font>So, if you want to give this release canidate a try, please
    do!<br>
    <br>
    You can download the installer from:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/</a><br>
    <br>
    If you wish to build WinDRBD from source, here is the sounrde repo
    on github:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://github.com/LINBIT/windrbd">https://github.com/LINBIT/windrbd</a><br>
    <br>
    Since for building WinDRBD still a mixed Linux/Windows build setup
    is necessary<br>
    I recommend to use the installer if you just want to use (and not to
    develop for)<br>
    WinDRBD. I am working on making build possible on Linux only (using
    Wine for<br>
    the Windows part).<br>
    <br>
    Best wishes and please let us know about feature requests, bug
    reports and more<br>
    stuff regarding WinDRBD, either on github or by eMail, <br>
    <br>
    - Johannes Thoma<br>
    <br>
    <br>
  </body>
</html>

--------------GiSRSeuBtizYUubioHOtmnVr--
