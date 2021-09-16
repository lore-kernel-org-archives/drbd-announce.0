Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 8CD984205DC
	for <drbd-announce@lists.linbit.com>;
	Thu, 16 Sep 2021 14:31:06 +0200 (CEST)
Received: by mail-wr1-f48.google.com with SMTP id i23so9248302wrb.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 16 Sep 2021 05:31:06 -0700 (PDT)
Received: from johannes-air.local ([2001:858:107:1:98f:d5b5:b413:d80c])
	by smtp.gmail.com with ESMTPSA id
	g13sm2914196wmh.20.2021.09.16.05.31.04
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 16 Sep 2021 05:31:05 -0700 (PDT)
To: drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Message-ID: <dc3b5c9b-9b1f-e58b-2b7e-8e0119e46fe6@linbit.com>
Date: Thu, 16 Sep 2021 14:31:04 +0200
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="------------31922AD4DC4C65C933AE6DF1"
Subject: [DRBD-announce] WinDRBD 1.0.0-rc14 released
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
--------------31922AD4DC4C65C933AE6DF1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear WinDRBD and DRBD users,

This is a small update of WinDRBD. It now supports writing to the Windows
Event Log (see the windrbd utility's help text). Also more parts of CygWin
come along with the EXE installer (sed, simple bash, ..) so that running
truck based replication should be possible now without having to install
a whole cygwin installaion. This also makes the installer a little bit larger
(still just about 3.4 MB).

As always, a downloadable EXE can be downloaded from the Linbit download
site:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/

Best regards,

- Johannes

--------------31922AD4DC4C65C933AE6DF1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode"> Dear WinDRBD and DRBD
      users,<br>
      <br>
      This is a small update of WinDRBD. It now supports writing to the
      Windows<br>
      Event Log (see the windrbd utility's help text). Also more parts
      of CygWin<br>
      come along with the EXE installer (sed, simple bash, ..) so that
      running<br>
      truck based replication should be possible now without having to
      install<br>
      a whole cygwin installaion. This also makes the installer a little
      bit larger<br>
      (still just about 3.4 MB).<br>
      <br>
      As always, a downloadable EXE can be downloaded from the Linbit
      download<br>
      site:<br>
      <br>
      <a class="moz-txt-link-freetext"
href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/</a><br>
      <br>
      Best regards,<br>
      <br>
      - Johannes<br>
    </div>
  </body>
</html>

--------------31922AD4DC4C65C933AE6DF1--
