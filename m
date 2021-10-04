Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 59CE84203DB
	for <drbd-announce@lists.linbit.com>;
	Mon,  4 Oct 2021 19:07:22 +0200 (CEST)
Received: by mail-wr1-f52.google.com with SMTP id k7so31863203wrd.13
	for <drbd-announce@lists.linbit.com>;
	Mon, 04 Oct 2021 10:07:22 -0700 (PDT)
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Message-ID: <92af9edf-b2a5-158a-04ae-4e4a9a6f891e@linbit.com>
Date: Mon, 4 Oct 2021 19:07:18 +0200
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="------------C37C5E07D56E597678A6A641"
Subject: [DRBD-announce] WinDRBD 1.0.0-rc16 released
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
--------------C37C5E07D56E597678A6A641
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear WinDRBD and DRBD community,

We just released WinDRBD release canidate 1.0.0-rc16 which is
mainly a bug fix release. It fixes an issue on the SCSI disk
interface which caused backing devices between 1 and 2 TB
in size not to work properly. If you plan to use WinDRBD with
backing devices of about 1 or 2 TB you should upgrade.

Please help testing this release canidate: you can download the installer
from the Linbit homepage at:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows

Thanks a lot and happy hacking,

Best regards,

- Johannes

PS: Please note that my eMail Address has changed (from johannes@johannesthoma.com
to johannes.thoma@linbit.com) I still read eMails on both accounts but would prefer
to receive WinDRBD related eMails at the johannes.thoma@linbit.com address.

--------------C37C5E07D56E597678A6A641
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode"> Dear WinDRBD and DRBD
      community,<br>
      <br>
      We just released WinDRBD release canidate 1.0.0-rc16 which is<br>
      mainly a bug fix release. It fixes an issue on the SCSI disk<br>
      interface which caused backing devices between 1 and 2 TB<br>
      in size not to work properly. If you plan to use WinDRBD with<br>
      backing devices of about 1 or 2 TB you should upgrade.<br>
      <br>
      Please help testing this release canidate: you can download the
      installer<br>
      from the Linbit homepage at:<br>
      <br>
      <a class="moz-txt-link-freetext"
href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows</a><br>
      <br>
      Thanks a lot and happy hacking,<br>
      <br>
      Best regards,<br>
      <br>
      - Johannes<br>
      <br>
      PS: Please note that my eMail Address has changed (from <a
        class="moz-txt-link-abbreviated"
        href="mailto:johannes@johannesthoma.com">johannes@johannesthoma.com</a><br>
      to <a class="moz-txt-link-abbreviated"
        href="mailto:johannes.thoma@linbit.com">johannes.thoma@linbit.com</a>)
      I still read eMails on both accounts but would prefer<br>
      to receive WinDRBD related eMails at the <a
        class="moz-txt-link-abbreviated"
        href="mailto:johannes.thoma@linbit.com">johannes.thoma@linbit.com</a>
      address.<br>
    </div>
  </body>
</html>

--------------C37C5E07D56E597678A6A641--
