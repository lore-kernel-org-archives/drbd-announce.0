Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
	[209.85.208.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E837F16225B
	for <drbd-announce@lists.linbit.com>;
	Thu,  7 Aug 2025 15:07:20 +0200 (CEST)
Received: by mail-ed1-f47.google.com with SMTP id
	4fb4d7f45d1cf-6154655c8aeso1454646a12.3
	for <drbd-announce@lists.linbit.com>;
	Thu, 07 Aug 2025 06:07:20 -0700 (PDT)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214]) by smtp.gmail.com with ESMTPSA id
	4fb4d7f45d1cf-615a8ffa17csm11602524a12.49.2025.08.07.06.07.18
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 07 Aug 2025 06:07:19 -0700 (PDT)
Content-Type: multipart/alternative;
	boundary="------------5CXApnN6586xa6urKuKjGAJh"
Message-ID: <57f7489b-d709-4871-b362-4588d58fa4e2@linbit.com>
Date: Thu, 7 Aug 2025 15:07:17 +0200
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.1.21 released
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
--------------5CXApnN6586xa6urKuKjGAJh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear WinDRBD community,

I just released WinDRBD 1.1.21. The main difference to WinDRBD 1.1.20
is that optionally, log rotation of the windrbdlog and windrbdumhelper
services is supported. To enable it you have to edit the registry values:

HKLM\System\CurrentControlSet\Services\windrbdlog\Parameters\AppArgs
HKLM\System\CurrentControlSet\Services\windrbdumhelper\Parameters\AppArgs

You can set them (for example) to

windrbdlog C:\mydir\myfile 1
windrbdumhelper C:\mydir\myumfile 1

to create a new logfile every hour (the timestamp is appended to the myfile).
Files are created only if there are log messages in that time period.

Many thanks to kasohrab <https://github.com/johannesthoma/drbd-utils/issues?q=is%3Apr+is%3Aopen+author%3Akasohrab>who contributed this feature.

Best regards,

- Johannes
--------------5CXApnN6586xa6urKuKjGAJh
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear WinDRBD community,<br>
    <br>
    I just released WinDRBD 1.1.21. The main difference to WinDRBD
    1.1.20<br>
    is that optionally, log rotation of the windrbdlog and
    windrbdumhelper<br>
    services is supported. To enable it you have to edit the registry
    values:<br>
    <br>
    HKLM\System\CurrentControlSet\Services\windrbdlog\Parameters\AppArgs<br>
HKLM\System\CurrentControlSet\Services\windrbdumhelper\Parameters\AppArgs<br>
    <br>
    You can set them (for example) to<br>
     <br>
    windrbdlog C:\mydir\myfile 1<br>
    windrbdumhelper C:\mydir\myumfile 1<br>
    <br>
    to create a new logfile every hour (the timestamp is appended to the
    myfile).<br>
    Files are created only if there are log messages in that time
    period.<br>
    <br>
    Many thanks to <span class="opened-by"><a class="Link--muted"
        title="Open pull requests created by kasohrab"
        data-hovercard-type="user"
        data-hovercard-url="/users/kasohrab/hovercard"
        data-octo-click="hovercard-link-click"
        data-octo-dimensions="link_type:self"
href="https://github.com/johannesthoma/drbd-utils/issues?q=is%3Apr+is%3Aopen+author%3Akasohrab"
        aria-keyshortcuts="Alt+ArrowUp"
        data-turbo-frame="repo-content-turbo-frame">kasohrab </a></span><span
      class="d-none d-md-inline-flex"><span class="d-inline-block ml-1">who
        contributed this feature.<br>
        <br>
        Best regards,<br>
        <br>
        - Johannes</span></span>
  </body>
</html>

--------------5CXApnN6586xa6urKuKjGAJh--
