Return-Path: <johannes@johannesthoma.com>
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes@johannesthoma.com>
Message-ID: <985b4081-44ec-0c88-b989-b0d9f568fdd6@johannesthoma.com>
Date: Mon, 9 Nov 2020 15:32:08 +0100
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="------------3A628FA723598011A9A2181B"
Subject: [DRBD-announce] WinDRBD 1.0.0-rc8 released
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
--------------3A628FA723598011A9A2181B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear WinDRBD and DRBD users,

We've just released WinDRBD 1.0.0-rc8 with a few bug fixes in the Emulation layer. Especially these fixed system hangs at various places (such as hang in invalidate-remote loop), please see the closed issues on github for details. Also device sizes > 2 TB are now working (better) this was due a bug in the backing device driver of WinDRBD.

As always the WinDRBD install packages can be downloaded from:

https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#windrbd

Please report bugs in the github issue tracker:

https://github.com/LINBIT/windrbd/issues

Thanks for using WinDRBD,

- Johannes

--------------3A628FA723598011A9A2181B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear WinDRBD and DRBD users,<br>
    <br>
    We've just released WinDRBD 1.0.0-rc8 with a few bug fixes in the
    Emulation layer. Especially these fixed system hangs at various
    places (such as hang in invalidate-remote loop), please see the
    closed issues on github for details. Also device sizes &gt; 2 TB are
    now working (better) this was due a bug in the backing device driver
    of WinDRBD.<br>
    <br>
    As always the WinDRBD install packages can be downloaded from:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#windrbd">https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#windrbd</a><br>
    <br>
    Please report bugs in the github issue tracker:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://github.com/LINBIT/windrbd/issues">https://github.com/LINBIT/windrbd/issues</a><br>
    <br>
    Thanks for using WinDRBD,<br>
    <br>
    - Johannes<br>
  </body>
</html>

--------------3A628FA723598011A9A2181B--
