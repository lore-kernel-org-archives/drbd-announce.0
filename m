Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
	[209.85.218.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id C0F024203A9
	for <drbd-announce@lists.linbit.com>;
	Mon, 23 May 2022 21:25:59 +0200 (CEST)
Received: by mail-ej1-f45.google.com with SMTP id rq11so8793897ejc.4
	for <drbd-announce@lists.linbit.com>;
	Mon, 23 May 2022 12:25:59 -0700 (PDT)
Content-Type: multipart/alternative;
	boundary="------------xcF3yfRCpuIpdYG7sqpsC7sE"
Message-ID: <0e43e7cc-f3a1-92b0-18c2-f5ce46f6b427@linbit.com>
Date: Mon, 23 May 2022 21:25:56 +0200
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: [DRBD-announce] WinDRBD 1.1.0-rc1 released
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
--------------xcF3yfRCpuIpdYG7sqpsC7sE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear WinDRBD users,

This is the first release canidate for the new windrbd 1.1 branch. The major
change in 1.1 is that the driver is signed directly by Microsoft which should
make it run with SecureBoot enabled. To get a driver signed by Microsoft,
certain tests (hardware lab kit - HLK) must be passed so we fixed the driver
so that the required tests pass. This also should make the driver more stable
when interacting with the NT kernel using the plug and play (PnP) protocol.

As always a signed (this time from Microsoft) driver installer can be downloaded
from the Linbit homepage:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows

This is a release canidate - do not use on production systems.

This is a release canidate - please help testing it.

We are in particular interested if the driver loads on all SecureBoot environments
(it loads on our test VM with SecureBoot enabled). In addition we would like to
know if upgrading from a 1.0 release to 1.1 works (without rebooting).

Thank you for contributing to WinDRBD development by testing this release
canidate.

Best regards,

- Johannes
--------------xcF3yfRCpuIpdYG7sqpsC7sE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear WinDRBD users,<br>
    <br>
    This is the first release canidate for the new windrbd 1.1 branch.
    The major<br>
    change in 1.1 is that the driver is signed directly by Microsoft
    which should<br>
    make it run with SecureBoot enabled. To get a driver signed by
    Microsoft,<br>
    certain tests (hardware lab kit - HLK) must be passed so we fixed
    the driver<br>
    so that the required tests pass. This also should make the driver
    more stable<br>
    when interacting with the NT kernel using the plug and play (PnP)
    protocol.<br>
    <br>
    As always a signed (this time from Microsoft) driver installer can
    be downloaded<br>
    from the Linbit homepage: <br>
    <br>
<a class="moz-txt-link-freetext" href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows</a><br>
    <br>
    This is a release canidate - do not use on production systems.<br>
    <br>
    This is a release canidate - please help testing it. <br>
    <br>
    We are in particular interested if the driver loads on all
    SecureBoot environments<br>
    (it loads on our test VM with SecureBoot enabled). In addition we
    would like to<br>
    know if upgrading from a 1.0 release to 1.1 works (without
    rebooting).<br>
    <br>
    Thank you for contributing to WinDRBD development by testing this
    release<br>
    canidate.<br>
    <br>
    Best regards,<br>
    <br>
    - Johannes<br>
  </body>
</html>

--------------xcF3yfRCpuIpdYG7sqpsC7sE--
