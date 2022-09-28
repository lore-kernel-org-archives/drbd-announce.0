Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
	[209.85.218.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 655074201BD
	for <drbd-announce@lists.linbit.com>;
	Wed, 28 Sep 2022 17:02:32 +0200 (CEST)
Received: by mail-ej1-f41.google.com with SMTP id sb3so27697065ejb.9
	for <drbd-announce@lists.linbit.com>;
	Wed, 28 Sep 2022 08:02:32 -0700 (PDT)
Content-Type: multipart/alternative;
	boundary="------------70Fw1nlIcUI4X06xEH0TX0Ec"
Message-ID: <24984f62-8f89-82d1-b6b0-7a056a9d4d9d@linbit.com>
Date: Wed, 28 Sep 2022 17:02:28 +0200
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: [DRBD-announce] WinDRBD 1.1.0-rc4 released
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
--------------70Fw1nlIcUI4X06xEH0TX0Ec
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear DRBD and WinDRBD users,

This is another release canidate for the WinDRBD 1.1 branch. It
fixes a rare BSOD where there is still I/O in flight when drbdadm
secondary / drbdadm down is run. This bug was discovered by
a user from India and shows how important your feedback about
WinDRBD usage is.

Other than that, starting with this release running drbdsetup
(including drbdsetup events2) processes are terminated by
the installer (this required a driver change, so you won't see
that feature until you install the next release). This makes
install failures less common.

As far as I am concerned this is the last release canidate
before the final 1.1.0 release. In tradition to Phil's request
to the community for DRBD ("This is a release canidate,
please help testing it") I would kindly ask to test this
version and report errors if you find some. If there is
no show-stopper within a week found I will tag and
release 1.1.0 next week.

As always, you can download the installer from:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows

 From the WHATSNEW.md file:

Quit drbdsetup events2 processes on upgrading.

Fixed a BSOD on I/O while removing the Windows Disk device.
(there was an issue with remove locks).

Best regards,

- Johannes
--------------70Fw1nlIcUI4X06xEH0TX0Ec
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear DRBD and WinDRBD users,<br>
    <br>
    This is another release canidate for the WinDRBD 1.1 branch. It<br>
    fixes a rare BSOD where there is still I/O in flight when drbdadm<br>
    secondary / drbdadm down is run. This bug was discovered by<br>
    a user from India and shows how important your feedback about<br>
    WinDRBD usage is.<br>
    <br>
    Other than that, starting with this release running drbdsetup<br>
    (including drbdsetup events2) processes are terminated by<br>
    the installer (this required a driver change, so you won't see<br>
    that feature until you install the next release). This makes<br>
    install failures less common.<br>
    <br>
    As far as I am concerned this is the last release canidate<br>
    before the final 1.1.0 release. In tradition to Phil's request<br>
    to the community for DRBD ("This is a release canidate,<br>
    please help testing it") I would kindly ask to test this<br>
    version and report errors if you find some. If there is<br>
    no show-stopper within a week found I will tag and<br>
    release 1.1.0 next week.<br>
    <br>
    As always, you can download the installer from:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows</a><br>
    <br>
    From the WHATSNEW.md file:<br>
    <font face="monospace"><br>
      Quit drbdsetup events2 processes on upgrading.<br>
      <br>
      Fixed a BSOD on I/O while removing the Windows Disk device.<br>
      (there was an issue with remove locks).<br>
    </font><br>
    Best regards,<br>
    <br>
    - Johannes<font face="monospace"><br>
    </font>
  </body>
</html>

--------------70Fw1nlIcUI4X06xEH0TX0Ec--
