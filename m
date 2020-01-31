Return-Path: <johannes@johannesthoma.com>
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes@johannesthoma.com>
Message-ID: <3849751f-2de7-d67a-42dd-06eca0ba32e7@johannesthoma.com>
Date: Fri, 31 Jan 2020 15:11:21 +0100
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="------------C946302D4A298E32E1774A43"
Subject: [DRBD-announce] WinDRBD 0.10.4 released
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
--------------C946302D4A298E32E1774A43
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear DRBD and WinDRBD community,

We just released a new minor release of the WinDRBD software
package. For those who don't know, WinDRBD is a port of
DRBD to the Microsoft Windows family of operating systems.

We mainly focussed on getting WinDRBD more stable for
this release, we have two (non-boot via WinDRBD) VMs running
on constant I/O for more than one week now. Also on machines
booted via WinDRBD it is now more stable and can, in most
cases, survive a network failure. However we still got report
about crashes when using the boot feature (which we will
fix in an upcoming release) so please do not use booting
via WinDRBD in production enviroments yet.

As a minor addition, the CGI script now tries forever to access
the block device (causing iPXE to wait on booting until  the
device is ready) which fixes the annoying behaviour of not
booting on Windows restart (because there was still the old
Primary connection in which case DRBD devices cannot be
opened at all, also not read-only).

Again, please contribute to WinDRBD development by testing
it, most of the issues we fixed came from the community
(many thanks to Yannis and Oliver at this point),

As always, you can download the newest version from

https://www.linbit.com/en/drbd-community/drbd-download/

as an EXE installer signed by Linbit-HA. To learn how to set up
WinDRBD with data devices or how to set it up with a WinDRBD
boot device (diskless client booting via WinDRBD from the network),
please consult the tech-guides at

https://downloads.linbit.com/

(you need to register to download the guides).

We will maintain a WHATSNEW.md file from now on that
briefly describes what is new in the version. You can directly
view it online at github:

https://github.com/LINBIT/windrbd/blob/master/WHATSNEW.md

Best regards and happy hacking !!

- Johannes

--------------C946302D4A298E32E1774A43
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear DRBD and WinDRBD community,<br>
    <br>
    We just released a new minor release of the WinDRBD software<br>
    package. For those who don't know, WinDRBD is a port of <br>
    DRBD to the Microsoft Windows family of operating systems.<br>
    <br>
    We mainly focussed on getting WinDRBD more stable for<br>
    this release, we have two (non-boot via WinDRBD) VMs running<br>
    on constant I/O for more than one week now. Also on machines<br>
    booted via WinDRBD it is now more stable and can, in most<br>
    cases, survive a network failure. However we still got report<br>
    about crashes when using the boot feature (which we will<br>
    fix in an upcoming release) so please do not use booting<br>
    via WinDRBD in production enviroments yet.<br>
    <br>
    As a minor addition, the CGI script now tries forever to access<br>
    the block device (causing iPXE to wait on booting until  the<br>
    device is ready) which fixes the annoying behaviour of not<br>
    booting on Windows restart (because there was still the old<br>
    Primary connection in which case DRBD devices cannot be<br>
    opened at all, also not read-only).<br>
    <br>
    Again, please contribute to WinDRBD development by testing<br>
    it, most of the issues we fixed came from the community<br>
    (many thanks to Yannis and Oliver at this point),<br>
    <br>
    As always, you can download the newest version from<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://www.linbit.com/en/drbd-community/drbd-download/">https://www.linbit.com/en/drbd-community/drbd-download/</a><br>
    <br>
    as an EXE installer signed by Linbit-HA. To learn how to set up<br>
    WinDRBD with data devices or how to set it up with a WinDRBD<br>
    boot device (diskless client booting via WinDRBD from the network),<br>
    please consult the tech-guides at <br>
    <br>
    <a class="moz-txt-link-freetext" href="https://downloads.linbit.com/">https://downloads.linbit.com/</a><br>
    <br>
    (you need to register to download the guides).<br>
    <br>
    We will maintain a WHATSNEW.md file from now on that<br>
    briefly describes what is new in the version. You can directly<br>
    view it online at github:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://github.com/LINBIT/windrbd/blob/master/WHATSNEW.md">https://github.com/LINBIT/windrbd/blob/master/WHATSNEW.md</a><br>
    <br>
    Best regards and happy hacking !!<br>
    <br>
    - Johannes<br>
  </body>
</html>

--------------C946302D4A298E32E1774A43--
