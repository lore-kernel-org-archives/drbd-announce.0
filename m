Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id BD845420638
	for <drbd-announce@lists.linbit.com>;
	Wed, 26 Jan 2022 16:27:17 +0100 (CET)
Received: by mail-wr1-f48.google.com with SMTP id s18so26391107wrv.7
	for <drbd-announce@lists.linbit.com>;
	Wed, 26 Jan 2022 07:27:17 -0800 (PST)
Content-Type: multipart/alternative;
	boundary="------------alGz0wOpKYSlofyrZEwbKYJG"
Message-ID: <685cb75e-0e4f-b6d5-4399-3036ed8ef17b@linbit.com>
Date: Wed, 26 Jan 2022 16:27:14 +0100
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: [DRBD-announce] WinDRBD 1.0.0-rc20 released
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
--------------alGz0wOpKYSlofyrZEwbKYJG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear WinDRBD users,

This is a new release of WinDRBD which contains 2 minor fixes as
well as an upgrade to the newest upstream DRBD version 9.0.32.

 From the WHATSNEW.md file:

---

Fixed a bug that triggered invalid page chain assertion and lead to
         connection abort at the beginning of sync. This also fixed
         a hang when changing the role (primary / secondary) while
         sync was going on.

Fixed several memory leaks.

Upgrade to DRBD 9.0.32

---

This release canidate is so far as I am concerned quite close to 1.0.0
and hence 'almost' production ready. As always unless somebody finds
a showstopper bug (BSOD or similar).

The installer - as always - can be downloaded from the Linbit webpage:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows

Also as always please help WinDRBD development by testing this release
canidate - thanks a lot in advance.

Best regards,

- Johannes

--------------alGz0wOpKYSlofyrZEwbKYJG
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear WinDRBD users,<br>
    <br>
    This is a new release of WinDRBD which contains 2 minor fixes as<br>
    well as an upgrade to the newest upstream DRBD version 9.0.32.<br>
    <br>
    From the WHATSNEW.md file:<br>
    <br>
    ---<br>
    <br>
    Fixed a bug that triggered invalid page chain assertion and lead to<br>
            connection abort at the beginning of sync. This also fixed<br>
            a hang when changing the role (primary / secondary) while<br>
            sync was going on.<br>
    <br>
    Fixed several memory leaks.<br>
    <br>
    Upgrade to DRBD 9.0.32<br>
    <br>
    ---<br>
    <br>
    This release canidate is so far as I am concerned quite close to
    1.0.0<br>
    and hence 'almost' production ready. As always unless somebody finds<br>
    a showstopper bug (BSOD or similar).<br>
    <br>
    The installer - as always - can be downloaded from the Linbit
    webpage:<br>
    <br>
    <a class="moz-txt-link-freetext"
href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows</a><br>
    <br>
    Also as always please help WinDRBD development by testing this
    release<br>
    canidate - thanks a lot in advance.<br>
    <br>
    Best regards,<br>
    <br>
    - Johannes<br>
    <br>
  </body>
</html>

--------------alGz0wOpKYSlofyrZEwbKYJG--
