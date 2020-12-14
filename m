Return-Path: <johannes@johannesthoma.com>
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes@johannesthoma.com>
Message-ID: <ddde2a6e-bac3-b206-0384-f17136890dfc@johannesthoma.com>
Date: Mon, 14 Dec 2020 14:35:09 +0100
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="------------621D03699E8E425DCDD57C44"
Subject: [DRBD-announce] WinDRBD 1.0.0-rc9 released
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
--------------621D03699E8E425DCDD57C44
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear DRBD and WinDRBD users,

We've just released a new release canidate version of WinDRBD: as always
the installer of WinDRBD 1.0.0-rc9 can be downloaded from:

https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#windrbd

Below is the abstract from the WHATSNEW.md file: mainly stability fixes in corner cases but
also performance tuning (when SyncTarget syncing is about 5 times faster now).

Thank you for improving WinDRBD by reporting bugs (2 contributors on the net have
discovered and reported bugs for this release),

Best wishes,

- Johannes

What's new in version 1.0.0-rc9
-------------------------------

Use device ejection API on drbdadm secondary (or down). This should
solve a BSOD on drbdadm secondary a client had.

Force open counts to 0 on drbdadm secondary (or down). This should
solve a handle leak (peer cannot be promoted to Primary) a client
had.

Updated drbd-utils shipped to 9.15.0 (was 9.12.0). Amongst other
things this makes the disconnected user mode helper work.

Use big pages for receiving sync packets (when sync target). This speeds
up sync by a factor 5 when WinDRBD is SyncTarget.

Fixed disconnect while sync bug: On disconnect wait until all
bios are completed.



--------------621D03699E8E425DCDD57C44
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear DRBD and WinDRBD users,<br>
    <br>
    We've just released a new release canidate version of WinDRBD: as
    always<br>
    the installer of WinDRBD 1.0.0-rc9 can be downloaded from:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#windrbd">https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#windrbd</a><br>
    <br>
    Below is the abstract from the WHATSNEW.md file: mainly stability
    fixes in corner cases but<br>
    also performance tuning (when SyncTarget syncing is about 5 times
    faster now).<br>
    <br>
    Thank you for improving WinDRBD by reporting bugs (2 contributors on
    the net have<br>
    discovered and reported bugs for this release), <br>
    <br>
    Best wishes,<br>
    <br>
    - Johannes<br>
    <br>
    What's new in version 1.0.0-rc9<br>
    -------------------------------<br>
    <br>
    Use device ejection API on drbdadm secondary (or down). This should<br>
    solve a BSOD on drbdadm secondary a client had.<br>
    <br>
    Force open counts to 0 on drbdadm secondary (or down). This should<br>
    solve a handle leak (peer cannot be promoted to Primary) a client<br>
    had.<br>
    <br>
    Updated drbd-utils shipped to 9.15.0 (was 9.12.0). Amongst other<br>
    things this makes the disconnected user mode helper work.<br>
    <br>
    Use big pages for receiving sync packets (when sync target). This
    speeds<br>
    up sync by a factor 5 when WinDRBD is SyncTarget.<br>
    <br>
    Fixed disconnect while sync bug: On disconnect wait until all<br>
    bios are completed.<br>
    <br>
    <br>
  </body>
</html>

--------------621D03699E8E425DCDD57C44--
