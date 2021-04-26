Return-Path: <johannes@johannesthoma.com>
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes@johannesthoma.com>
Message-ID: <37757dd2-9bbe-d654-eef7-a8b17e7a92fd@johannesthoma.com>
Date: Mon, 26 Apr 2021 19:13:58 +0200
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="------------C668E20B940446612186A0D9"
Subject: [DRBD-announce] WinDRBD 1.0.0-rc11 released
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
--------------C668E20B940446612186A0D9
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear DRBD and WinDRBD users,

We've just released another version of WinDRBD: This one is 1.0.0-rc11.
It is now based upon DRBD 9.0.28 which is the most recent (stable) version
of DRBD. It also contains a fix of a bug that caused blue screens or system
lockups when disconnecting.  Also we now slowly start to remove the block
device interface (the one with the mount point in the device clause) so if
you have systems running with WinDRBD block device interface you should
consider now to change that to the SCSI disk interface. The reason for all
this is that the block device interface is not compatible with some Microsoft
applications (most notably MS SQL Server) and we don't want to maintain
two interfaces for very much longer.

 From the WHATSNEW.md logfile:

What's new in version 1.0.0-rc11
--------------------------------

Updated DRBD from 9.0.25 to 9.0.28.

Fixed a system hang on disconnect: Reason was mod_timer returning
a wrong value which later caused a use-after-free of the DRBD
connection object.

Print deprecation warning when using block device interface.
This is going to be removed with the next (1.0.0-rc12) release.

Fix a NESSUS vulnerability warning: Executable path must
be quoted (in windrbdumhelper and windrbdlogger services).

Make sure there is no error 50 warning on drbdadm up.

As always an installable EXE can be downloaded from the Linbit
homepage: the URL is:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#windrbd

Thank you for using and testing WinDRBD, as always your Bug Reports and
other feedback is highly appreciated.

Best regards,

- Johannes

--------------C668E20B940446612186A0D9
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear DRBD and WinDRBD users,<br>
    <br>
    We've just released another version of WinDRBD: This one is
    1.0.0-rc11. <br>
    It is now based upon DRBD 9.0.28 which is the most recent (stable)
    version<br>
    of DRBD. It also contains a fix of a bug that caused blue screens or
    system<br>
    lockups when disconnecting.  Also we now slowly start to remove the
    block<br>
    device interface (the one with the mount point in the device clause)
    so if<br>
    you have systems running with WinDRBD block device interface you
    should<br>
    consider now to change that to the SCSI disk interface. The reason
    for all<br>
    this is that the block device interface is not compatible with some
    Microsoft<br>
    applications (most notably MS SQL Server) and we don't want to
    maintain<br>
    two interfaces for very much longer. <br>
    <br>
    From the WHATSNEW.md logfile:<br>
    <br>
    <font face="monospace">What's new in version 1.0.0-rc11<br>
      --------------------------------<br>
      <br>
      Updated DRBD from 9.0.25 to 9.0.28.<br>
      <br>
      Fixed a system hang on disconnect: Reason was mod_timer returning<br>
      a wrong value which later caused a use-after-free of the DRBD<br>
      connection object.<br>
      <br>
      Print deprecation warning when using block device interface.<br>
      This is going to be removed with the next (1.0.0-rc12) release.<br>
      <br>
      Fix a NESSUS vulnerability warning: Executable path must<br>
      be quoted (in windrbdumhelper and windrbdlogger services).<br>
      <br>
      Make sure there is no error 50 warning on drbdadm up.</font><br>
    <br>
    As always an installable EXE can be downloaded from the Linbit<br>
    homepage: the URL is:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#windrbd">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#windrbd</a><br>
    <br>
    Thank you for using and testing WinDRBD, as always your Bug Reports
    and<br>
    other feedback is highly appreciated.<br>
    <br>
    Best regards,<br>
    <br>
    - Johannes<br>
  </body>
</html>

--------------C668E20B940446612186A0D9--
