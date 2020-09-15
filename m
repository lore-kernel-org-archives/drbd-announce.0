Return-Path: <johannes@johannesthoma.com>
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes@johannesthoma.com>
Message-ID: <23e6c1ee-f26c-a574-7082-2dbace65f0f4@johannesthoma.com>
Date: Tue, 15 Sep 2020 16:19:21 +0200
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="------------692094AFB912DA6F31B058A6"
Subject: [DRBD-announce] WinDRBD 1.0.0-rc5 released
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
--------------692094AFB912DA6F31B058A6
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear DRBD and WinDRBD users,

WinDRBD 1.0.0-rc5 has been released.

You can download the installer (signed with SHA256 from now on) from:

https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#windrbd

A lot has happened since the last 1.0.0-rc1 release, mainly patches to
improve system stability.

By serializing calls to drbd_make_request we were able to fix a blue screen
which could be triggered with fio -depth >10, see

     https://github.com/LINBIT/windrbd/issues/2

for details (this is also where -rc2 to -rc4 can be found).

In addition the workqueue code has been reengineered which should
fix a system hang we observed when doing endurance tests (I/O for
3-4 weeks).

Right now I am working on fixing a bug that causes drbdadm down to
hang when syncing several times while I/O is going on (this will then
be -rc6).

Please help with testing WinDRBD so we can find and fix remaining bugs
before we tag 1.0.0,

Thanks a lot,

- Johannes

--------------692094AFB912DA6F31B058A6
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear DRBD and WinDRBD users,<br>
    <br>
    WinDRBD 1.0.0-rc5 has been released.<br>
     <br>
    You can download the installer (signed with SHA256 from now on)
    from:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#windrbd">https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#windrbd</a><br>
    <br>
    A lot has happened since the last 1.0.0-rc1 release, mainly patches
    to<br>
    improve system stability.<br>
    <br>
    By serializing calls to drbd_make_request we were able to fix a blue
    screen<br>
    which could be triggered with fio -depth &gt;10, see <br>
    <br>
        <a class="moz-txt-link-freetext" href="https://github.com/LINBIT/windrbd/issues/2">https://github.com/LINBIT/windrbd/issues/2</a><br>
    <br>
    for details (this is also where -rc2 to -rc4 can be found).<br>
    <br>
    In addition the workqueue code has been reengineered which should<br>
    fix a system hang we observed when doing endurance tests (I/O for<br>
    3-4 weeks).<br>
    <br>
    Right now I am working on fixing a bug that causes drbdadm down to<br>
    hang when syncing several times while I/O is going on (this will
    then<br>
    be -rc6). <br>
    <br>
    Please help with testing WinDRBD so we can find and fix remaining
    bugs<br>
    before we tag 1.0.0,<br>
    <br>
    Thanks a lot,<br>
    <br>
    - Johannes<br>
  </body>
</html>

--------------692094AFB912DA6F31B058A6--
