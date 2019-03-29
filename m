Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 57A631011BF7
	for <drbd-announce@lists.linbit.com>;
	Fri, 29 Mar 2019 12:16:57 +0100 (CET)
Received: by mail-wr1-f43.google.com with SMTP id k17so2093963wrx.10
	for <drbd-announce@lists.linbit.com>;
	Fri, 29 Mar 2019 04:16:57 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Fri, 29 Mar 2019 12:16:45 +0100
Message-ID: <CAHmn2DMnftgnpAsj2879SPF5TZWotoXZJv5pgn7Ms_g+2oV_oQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000061b1e058539cf9e"
Subject: [DRBD-announce] Linstor-server 0.9.4
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

--000000000000061b1e058539cf9e
Content-Type: text/plain; charset="UTF-8"

Hi!

Unfortunately there was still a bug in the last release with zfs thin pools
if they are used from the zpool (without a sub dataset), this release
should fix that issue.

linstor-server 0.9.4
--------------------
 * Fixed: REST API inconsistent error return objects
 * Fixed: ZFS thin root pools not working
 * Fixed: ZFS thick pool not working if they are a dataset

http://www.linbit.com/downloads/linstor/linstor-server-0.9.4.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000061b1e058539cf9e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi!<div><br></div><div>Unfortunately ther=
e was still a bug in the last release with zfs thin pools if they are used =
from the zpool (without a sub dataset), this release should fix that issue.=
<br></div><div><br></div><div><div><div><span style=3D"font-family:monospac=
e,monospace;font-size:x-small">linstor-server 0.9.4</span><br></div><div><d=
iv><font face=3D"monospace, monospace" size=3D"1">--------------------</fon=
t></div><div><span style=3D"font-family:monospace,monospace;font-size:x-sma=
ll">=C2=A0* Fixed: REST API inconsistent error return objects</span><br></d=
iv><div><font size=3D"1"><font face=3D"monospace, monospace">=C2=A0* Fixed:=
 ZFS thin root pools not working</font></font></div><div><font size=3D"1"><=
font face=3D"monospace, monospace">=C2=A0* Fixed: ZFS thick pool not workin=
g if they are a dataset</font></font></div><div><br></div></div></div><div>=
<font size=3D"1"><a href=3D"http://www.linbit.com/downloads/linstor/linstor=
-server-0.9.4.tar.gz" target=3D"_blank">http://www.linbit.com/downloads/lin=
stor/linstor-server-0.9.4.tar.gz</a></font></div></div><div><br></div><div>=
<div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubun=
tu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchp=
ad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><div><br></d=
iv><div>Best regards,</div><div>Rene</div></div></div></div>

--000000000000061b1e058539cf9e--
