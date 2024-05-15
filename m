Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
	[209.85.218.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 88DF842015E
	for <drbd-announce@lists.linbit.com>;
	Wed, 15 May 2024 14:44:32 +0200 (CEST)
Received: by mail-ej1-f49.google.com with SMTP id
	a640c23a62f3a-a5a4bc9578cso149495266b.2
	for <drbd-announce@lists.linbit.com>;
	Wed, 15 May 2024 05:44:32 -0700 (PDT)
Content-Type: multipart/alternative;
	boundary="------------0ioBagGqMqK403WCRyl62bWk"
Message-ID: <66224f5b-3533-4369-a910-5d881eba97ae@linbit.com>
Date: Wed, 15 May 2024 14:44:26 +0200
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.1.14 released
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
--------------0ioBagGqMqK403WCRyl62bWk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear WinDRBD users,

Today we released WinDRBD 1.1.14 which contains a small bugfix
of the drbdmeta utility. For external meta data drbdadm create-md
now clears the whole block device thereby ensuring that there
are no leftover bits set in the bitmaps.

The WinDRBD driver itself has not changed except for the version number.

If you are not using external meta data there is no urgent need to upgrade.

The changes, as always, are described in the WHATSNEW.md file
of the WinDRBD repository:

https://github.com/LINBIT/windrbd/blob/windrbd-1.1/WHATSNEW.md

An installer suitable for evaluating WinDRBD can be downloaded from
the LINBIT homepage:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/

LINBIT clients can download an installer suitable for production usage
from the packages.linbit.com repository:

https://packages.linbit.com/exe/windows/drbd-9/

(an API key is required, client will be notified in a separate mail).

As always, all the best and happy hacking 🙂

- Johannes

--------------0ioBagGqMqK403WCRyl62bWk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-text-flowed"
      style="font-family: -moz-fixed; font-size: 12px;" lang="x-unicode">Dear WinDRBD users,
      <br>
      <br>
      Today we released WinDRBD 1.1.14 which contains a small bugfix<br>
      of the drbdmeta utility. For external meta data drbdadm create-md<br>
      now clears the whole block device thereby ensuring that there<br>
      are no leftover bits set in the bitmaps.<br>
      <br>
      The WinDRBD driver itself has not changed except for the version
      number.<br>
      <br>
      If you are not using
      external meta data there is no urgent need to upgrade.
      <br>
      <br>
      The changes, as always, are described in the WHATSNEW.md file
      <br>
      of the WinDRBD repository:
      <br>
      <br>
      <a class="moz-txt-link-freetext"
href="https://github.com/LINBIT/windrbd/blob/windrbd-1.1/WHATSNEW.md">https://github.com/LINBIT/windrbd/blob/windrbd-1.1/WHATSNEW.md</a><br>
      <br>
An installer suitable for evaluating WinDRBD can be downloaded from
      <br>
      the LINBIT homepage:
      <br>
      <br>
      <a class="moz-txt-link-freetext"
href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/</a>
      <br>
      <br>
LINBIT clients can download an installer suitable for production usage
      <br>
      from the packages.linbit.com repository:
      <br>
      <br>
      <a class="moz-txt-link-freetext"
        href="https://packages.linbit.com/exe/windows/drbd-9/">https://packages.linbit.com/exe/windows/drbd-9/</a>
      <br>
      <br>
      (an API key is required, client will be notified in a separate
      mail).
      <br>
      <br>
      As always, all the best and happy hacking 🙂
      <br>
      <br>
      - Johannes
      <br>
      <br>
    </div>
  </body>
</html>

--------------0ioBagGqMqK403WCRyl62bWk--
