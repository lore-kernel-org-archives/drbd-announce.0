Return-Path: <johannes@johannesthoma.com>
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes@johannesthoma.com>
Message-ID: <90e9097f-5ba3-06f4-df1e-1ac7789d468d@johannesthoma.com>
Date: Mon, 2 Aug 2021 19:33:36 +0200
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="------------3A8E5FEB19C1E659B138EE33"
Subject: [DRBD-announce] WinDRBD 1.0.0-rc13 released
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
--------------3A8E5FEB19C1E659B138EE33
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear WinDRBD and DRBD users,

We are happy to announce another -rc of WinDRBD. The past 2-3
months I have spent a lot of time fixing bugs uncovered by driver
verifier. Driver verifier is enabled when running tests via
the Windows Hardware Lab Kit (HLK) which in turn is required to
obtain a certificate for loading the WinDRBD driver on
SecureBoot enabled machines.

The other change is an upgrade to DRBD 9.0.29 which fixes some
subtile bugs inside the DRBD engine.

As always an installable image (not yet SecureBoot enabled) can
be downloaded from the Linbit Homepage:

https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/

Again all sorts of feedback is highly apreciated. Also if you
plan to use WinDRBD (now or later) in production environments
it is highly recommended to talk to Linbit (sales@linbit.com)
about various options of support contracts. This makes it easier
for us to assist you with WinDRBD in case there are problems or
other sorts of requests (like feature requests).

Best regards,

- Johannes


--------------3A8E5FEB19C1E659B138EE33
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear WinDRBD and DRBD users,<br>
    <br>
    We are happy to announce another -rc of WinDRBD. The past 2-3<br>
    months I have spent a lot of time fixing bugs uncovered by driver<br>
    verifier. Driver verifier is enabled when running tests via<br>
    the Windows Hardware Lab Kit (HLK) which in turn is required to<br>
    obtain a certificate for loading the WinDRBD driver on<br>
    SecureBoot enabled machines.<br>
    <br>
    The other change is an upgrade to DRBD 9.0.29 which fixes some<br>
    subtile bugs inside the DRBD engine.<br>
    <br>
    As always an installable image (not yet SecureBoot enabled) can<br>
    be downloaded from the Linbit Homepage:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/">https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/</a><br>
    <br>
    Again all sorts of feedback is highly apreciated. Also if you<br>
    plan to use WinDRBD (now or later) in production environments<br>
    it is highly recommended to talk to Linbit (<a class="moz-txt-link-abbreviated" href="mailto:sales@linbit.com">sales@linbit.com</a>)<br>
    about various options of support contracts. This makes it easier<br>
    for us to assist you with WinDRBD in case there are problems or<br>
    other sorts of requests (like feature requests).<br>
    <br>
    Best regards,<br>
    <br>
    - Johannes<br>
    <br>
  </body>
</html>

--------------3A8E5FEB19C1E659B138EE33--
