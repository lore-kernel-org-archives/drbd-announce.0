Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2E751420629
	for <drbd-announce@lists.linbit.com>;
	Thu, 13 Jan 2022 16:08:30 +0100 (CET)
Received: by mail-wm1-f52.google.com with SMTP id
	c126-20020a1c9a84000000b00346f9ebee43so3847507wme.4
	for <drbd-announce@lists.linbit.com>;
	Thu, 13 Jan 2022 07:08:30 -0800 (PST)
Content-Type: multipart/alternative;
	boundary="------------iiYUU16CZnImYEoPtC0uv4YD"
Message-ID: <dca4146d-741d-1651-83d3-8725472fe34e@linbit.com>
Date: Thu, 13 Jan 2022 16:08:28 +0100
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: [DRBD-announce] WinDRBD 1.0.0-rc19 released
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
--------------iiYUU16CZnImYEoPtC0uv4YD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear WinDRBD users,

There is a new release canidate in which two reasons for bluescreens (BSODs) are
fixed. One happened in earlier releases when a resync is running for a longer time
(such as syncing 16TB volumes) the other one was a blue screen that happened
sometimes on network interruptions (the later was actually a DRBD bug - the first
one we found in over 5 years of WinDRBD development).

The binary installer - as always - can be downloaded from the Linbit website:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows

You can update from 1.0.0-rc18 (or 1.0.0-rc17) without rebooting and automatically
(non-interactive if you chose to always trust software from Linbit HA Solutions once).
Make sure that no drbdsetup events2 processes are running any more. Furthermore
bring all your resources down before upgrading (the installer can do this but
sometimes this might fail, so it is better if you do this manually).

Please help by testing this release canidate, the syncer bug was actually found by
someone from the WinDRBD user community (thanks a lot!).

Best regards,

- Johannes
--------------iiYUU16CZnImYEoPtC0uv4YD
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear WinDRBD users,<br>
    <br>
    There is a new release canidate in which two reasons for bluescreens
    (BSODs) are<br>
    fixed. One happened in earlier releases when a resync is running for
    a longer time<br>
    (such as syncing 16TB volumes) the other one was a blue screen that
    happened<br>
    sometimes on network interruptions (the later was actually a DRBD
    bug - the first<br>
    one we found in over 5 years of WinDRBD development).<br>
    <br>
    The binary installer - as always - can be downloaded from the Linbit
    website:<br>
    <br>
    <a class="moz-txt-link-freetext"
href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#drbd-windows</a><br>
    <br>
    You can update from 1.0.0-rc18 (or 1.0.0-rc17) without rebooting and
    automatically<br>
    (non-interactive if you chose to always trust software from Linbit
    HA Solutions once).<br>
    Make sure that no drbdsetup events2 processes are running any more.
    Furthermore<br>
    bring all your resources down before upgrading (the installer can do
    this but<br>
    sometimes this might fail, so it is better if you do this manually).<br>
    <br>
    Please help by testing this release canidate, the syncer bug was
    actually found by<br>
    someone from the WinDRBD user community (thanks a lot!).<br>
    <br>
    Best regards,<br>
    <br>
    - Johannes<br>
  </body>
</html>

--------------iiYUU16CZnImYEoPtC0uv4YD--
