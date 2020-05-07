Return-Path: <johannes@johannesthoma.com>
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes@johannesthoma.com>
Message-ID: <65812d28-7a96-d39d-0be4-c11a30876127@johannesthoma.com>
Date: Thu, 7 May 2020 09:12:45 +0200
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="------------0151464B91E4FC946E1E7C17"
Subject: [DRBD-announce] WinDRBD 0.10.7 released
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
--------------0151464B91E4FC946E1E7C17
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear DRBD and WinDRBD community,

We proudly present WinDRBD 0.10.7: it has a set of new features that improve usability and feature completeness (compared to the Linux version of DRBD). Among the new features are:

Online verify (with crc32c checksum algorithm): Check if both backing devices contain the same data. This will be printed in the kernel log, so you will have to have logging configured.

drbdadm status and drbdsetup events2 as non-Administrator: Finally I got an idea how to implement drbdadm status as non-Administrator. Put shortly the WinDRBD threads (in the Linux emulation layer, struct task_struct) finally learned permissions (admin/no admin). We then added a new device object, just like the root object but permissions world accessible and set the permission to no admin when this object is opened (the drbd-utils try to open admin device object first, then when error is ACCESS_DENIED it tries to open the user object). Finally we check if the command is allowed for non-Admin users (there is a flag in the netlink packet descriptor) and allow netlink packets used for drbdadm status and drbdsetup events2.

The installer has learned to install the bus device needed for disk devices so a manual installation is not needed any more. This feature can cause problems on some systems so there is a checkbox to turn it off. If you have troubles with installing the bus device from the installer please report that.

Also the syslog IP address can finally be changed by a windrbd command (windrbd set-syslog-ip) at any time so one does not need a reboot any more when the syslog IP should be changed.

Please refer to the file WHATSNEW.md (https://github.com/LINBIT/windrbd/blob/master/WHATSNEW.md) for more features we've implemented in WinDRBD 0.10.7

As always an installable image with a signed driver can be downloaded from (attention the URL has changed):

https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/

Thank you for helping WinDRBD development by using it,

Best regards,

- Johannes

--------------0151464B91E4FC946E1E7C17
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear DRBD and WinDRBD community,<br>
    <br>
    We proudly present WinDRBD 0.10.7: it has a set of new features that
    improve usability and feature completeness (compared to the Linux
    version of DRBD). Among the new features are:<br>
    <br>
    Online verify (with crc32c checksum algorithm): Check if both
    backing devices contain the same data. This will be printed in the
    kernel log, so you will have to have logging configured.<br>
    <br>
    drbdadm status and drbdsetup events2 as non-Administrator: Finally I
    got an idea how to implement drbdadm status as non-Administrator.
    Put shortly the WinDRBD threads (in the Linux emulation layer,
    struct task_struct) finally learned permissions (admin/no admin). We
    then added a new device object, just like the root object but
    permissions world accessible and set the permission to no admin when
    this object is opened (the drbd-utils try to open admin device
    object first, then when error is ACCESS_DENIED it tries to open the
    user object). Finally we check if the command is allowed for
    non-Admin users (there is a flag in the netlink packet descriptor)
    and allow netlink packets used for drbdadm status and drbdsetup
    events2. <br>
    <br>
    The installer has learned to install the bus device needed for disk
    devices so a manual installation is not needed any more. This
    feature can cause problems on some systems so there is a checkbox to
    turn it off. If you have troubles with installing the bus device
    from the installer please report that.<br>
    <br>
    Also the syslog IP address can finally be changed by a windrbd
    command (windrbd set-syslog-ip) at any time so one does not need a
    reboot any more when the syslog IP should be changed.<br>
    <br>
    Please refer to the file WHATSNEW.md
    (<a class="moz-txt-link-freetext" href="https://github.com/LINBIT/windrbd/blob/master/WHATSNEW.md">https://github.com/LINBIT/windrbd/blob/master/WHATSNEW.md</a>) for more
    features we've implemented in WinDRBD 0.10.7<br>
    <br>
    As always an installable image with a signed driver can be
    downloaded from (attention the URL has changed):<br>
    <br>
<a class="moz-txt-link-freetext" href="https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/">https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/</a><br>
    <br>
    Thank you for helping WinDRBD development by using it,<br>
    <br>
    Best regards,<br>
    <br>
    - Johannes<br>
  </body>
</html>

--------------0151464B91E4FC946E1E7C17--
