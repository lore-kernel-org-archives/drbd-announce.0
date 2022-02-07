Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
	[209.85.218.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 15BF442032B
	for <drbd-announce@lists.linbit.com>;
	Mon,  7 Feb 2022 12:44:07 +0100 (CET)
Received: by mail-ej1-f49.google.com with SMTP id ka4so41101804ejc.11
	for <drbd-announce@lists.linbit.com>;
	Mon, 07 Feb 2022 03:44:07 -0800 (PST)
Content-Type: multipart/alternative;
	boundary="------------nqWphZqGRDBTpJVC9fQH8WIb"
Message-ID: <28ee954c-4129-4f9e-7c55-b3019eb62f1c@linbit.com>
Date: Mon, 7 Feb 2022 12:44:05 +0100
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: [DRBD-announce] WinDRBD 1.0.0 released
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
--------------nqWphZqGRDBTpJVC9fQH8WIb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear DRBD and WinDRBD users,

Finally we are releasing WinDRBD 1.0.0, the first stable production-ready
version of WinDRBD after almost 5 years of development. This is an
important milestone in WinDRBD development. Technically it is
the same as the last rc20 release canidate with a few extra DRBD
patches.

At this point I would like to thank everybody who helped to make
this happen: Philipp Reisner and the DRBD team at Linbit, Sungeun
Kim and the WDRBD team at Mantech and many members of the
WinDRBD and DRBD community for testing and lots of ideas how
to improve WinDRBD.

This release is meant for using Microsoft Windows machines (and
Windows / Linux mixed setups) in an HA environment. The next
upcoming features are Secure Boot (we are already working on
this), using DRBD 9.1 as DRBD engine and last but not least,
LINSTOR support. If there is demand we may also continue our
work on Microsoft cluster manager integration, please let us
know when you need this. Also we can finalize WinDRBD as
root device ("C:") which already works but is complicated to
set up at the moment, again please drop us an eMail if this
feature is on your wishlist.

Since WinDRBD uses the original source code of DRBD internally,
the features of WinDRBD are almost the same as the ones of
DRBD. One noteable exception is auto promote which we don't
support because Windows starts accessing a Disk as soon as
it gets online (so nodes would compete for becoming Primary).
Therefore auto promote does not really make sense on the
Windows platforms.

As always we are providing a self-contained installer EXE for
Windows: unless you want to develop for WinDRBD yourself
it is recommended to use the installer since it also contains a
Linbit (DigiCert) signed driver (note that SecureBoot is not
supported yet):

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows

Also, as always if you plan to use WinDRBD in your production
environment it is highly recommended and appreciated that you
talk to Linbit (www.linbit.com) for support options.

Thank you for using WinDRBD and looking forward to hearing
from you,

Best regards,

- Johannes
--------------nqWphZqGRDBTpJVC9fQH8WIb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear DRBD and WinDRBD users,<br>
    <br>
    Finally we are releasing WinDRBD 1.0.0, the first stable
    production-ready<br>
    version of WinDRBD after almost 5 years of development. This is an<br>
    important milestone in WinDRBD development. Technically it is <br>
    the same as the last rc20 release canidate with a few extra DRBD<br>
    patches.<br>
    <br>
    At this point I would like to thank everybody who helped to make<br>
    this happen: Philipp Reisner and the DRBD team at Linbit, Sungeun<br>
    Kim and the WDRBD team at Mantech and many members of the<br>
    WinDRBD and DRBD community for testing and lots of ideas how<br>
    to improve WinDRBD.<br>
    <br>
    This release is meant for using Microsoft Windows machines (and<br>
    Windows / Linux mixed setups) in an HA environment. The next<br>
    upcoming features are Secure Boot (we are already working on<br>
    this), using DRBD 9.1 as DRBD engine and last but not least,<br>
    LINSTOR support. If there is demand we may also continue our<br>
    work on Microsoft cluster manager integration, please let us<br>
    know when you need this. Also we can finalize WinDRBD as<br>
    root device ("C:") which already works but is complicated to<br>
    set up at the moment, again please drop us an eMail if this<br>
    feature is on your wishlist.<br>
    <br>
    Since WinDRBD uses the original source code of DRBD internally,<br>
    the features of WinDRBD are almost the same as the ones of<br>
    DRBD. One noteable exception is auto promote which we don't<br>
    support because Windows starts accessing a Disk as soon as<br>
    it gets online (so nodes would compete for becoming Primary).<br>
    Therefore auto promote does not really make sense on the<br>
    Windows platforms.<br>
    <br>
    As always we are providing a self-contained installer EXE for<br>
    Windows: unless you want to develop for WinDRBD yourself<br>
    it is recommended to use the installer since it also contains a <br>
    Linbit (DigiCert) signed driver (note that SecureBoot is not<br>
    supported yet):<br>
    <br>
<a class="moz-txt-link-freetext" href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows</a><br>
    <br>
    Also, as always if you plan to use WinDRBD in your production<br>
    environment it is highly recommended and appreciated that you<br>
    talk to Linbit (<a class="moz-txt-link-abbreviated" href="http://www.linbit.com">www.linbit.com</a>) for support options.<br>
    <br>
    Thank you for using WinDRBD and looking forward to hearing<br>
    from you,<br>
    <br>
    Best regards,<br>
    <br>
    - Johannes<br>
  </body>
</html>

--------------nqWphZqGRDBTpJVC9fQH8WIb--
