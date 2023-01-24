Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id BD4F24201C3
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 Jan 2023 14:22:32 +0100 (CET)
Received: by mail-ed1-f51.google.com with SMTP id z11so18298152ede.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 Jan 2023 05:22:32 -0800 (PST)
Content-Type: multipart/alternative;
	boundary="------------AOAhiiL3AdQMTFUlf4orhZhp"
Message-ID: <03aa13bc-0a17-f5d7-86d8-38603e62db9e@linbit.com>
Date: Tue, 24 Jan 2023 14:22:29 +0100
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: [DRBD-announce] WinDRBD 1.1.4 released
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
--------------AOAhiiL3AdQMTFUlf4orhZhp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear WinDRBD users,

This is the 'stable' release with the new virtual partition table
feature, which allows one to reuse existing NTFS data partitions
as WinDRBD backing devices. There were only two minor changes,
compared to the 1.1.4-rc1 version: one affects the use of drive
letters: they should not be specified in the WinDRBD config and
are ignored from now on (a warning is printed). The other change
is a fix for a memory leak introduced in the 1.1.4-rc1 release.

 From the 1.1.4-rc1 announcement:

Since proper Windows "block" devices are Disks for the Windows
system and Disks are expected to be partitioned, we emulate a
virtual GPT partition table at the "upper" interface (where the
SCSI requests are handled). This causes Windows to stack
the PARTMGR and DISK drivers (and probably others) over the
disks such that applications such as MS SQL server run without
issues.

As always an installer with a signed driver can be downloaded from:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows

Best regards and as always your feedback is highly apreciated,

- Johannes
_______________________________________________
drbd-announce mailing list
drbd-announce@lists.linbit.com
https://lists.linbit.com/mailman/listinfo/drbd-announce

--------------AOAhiiL3AdQMTFUlf4orhZhp
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-text-flowed" style="font-family: -moz-fixed;
      font-size: 12px;" lang="x-western">Dear WinDRBD users,
      <br>
      <br>
      This is the 'stable' release with the new virtual partition table<br>
      feature, which allows one to reuse existing NTFS data partitions<br>
      as WinDRBD backing devices. There were only two minor changes,<br>
      compared to the 1.1.4-rc1 version: one affects the use of drive<br>
      letters: they should not be specified in the WinDRBD config and<br>
      are ignored from now on (a warning is printed). The other change<br>
      is a fix for a memory leak introduced in the 1.1.4-rc1 release. <br>
      <br>
      From the 1.1.4-rc1 announcement:<br>
      <br>
      Since proper Windows "block" devices are Disks for the Windows
      <br>
      system and Disks are expected to be partitioned, we emulate a
      <br>
      virtual GPT partition table at the "upper" interface (where the
      <br>
      SCSI requests are handled). This causes Windows to stack
      <br>
      the PARTMGR and DISK drivers (and probably others) over the
      <br>
      disks such that applications such as MS SQL server run without
      <br>
      issues.
      <br>
      <br>
As always an installer with a signed driver can be downloaded from:
      <br>
      <br>
      <a class="moz-txt-link-freetext"
href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows</a>
      <br>
      <br>
      Best regards and as always your feedback is highly apreciated,<br>
      <br>
      - Johannes<br>
      _______________________________________________
      <br>
      drbd-announce mailing list
      <br>
      <a class="moz-txt-link-abbreviated moz-txt-link-freetext"
        href="mailto:drbd-announce@lists.linbit.com">drbd-announce@lists.linbit.com</a>
      <br>
      <a class="moz-txt-link-freetext"
        href="https://lists.linbit.com/mailman/listinfo/drbd-announce">https://lists.linbit.com/mailman/listinfo/drbd-announce</a>
      <br>
    </div>
    <br>
  </body>
</html>

--------------AOAhiiL3AdQMTFUlf4orhZhp--
