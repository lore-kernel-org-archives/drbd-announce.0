Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 460404203B3
	for <drbd-announce@lists.linbit.com>;
	Mon, 23 Mar 2020 12:14:18 +0100 (CET)
Received: by mail-wm1-f52.google.com with SMTP id c81so3754840wmd.4
	for <drbd-announce@lists.linbit.com>;
	Mon, 23 Mar 2020 04:14:18 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 23 Mar 2020 12:14:06 +0100
Message-ID: <CAHmn2DOiG9LEH3k79xWmAGDkkKPvnr9np-ngtE=r7vnh9n0uFw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000006b104305a183bc3b"
Subject: [DRBD-announce] linstor-server 1.5.1 release
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

--0000000000006b104305a183bc3b
Content-Type: text/plain; charset="UTF-8"

Hi All!

This release fixes a bug login into database if you use non "standard"
passwords and
we finally managed to feed all lvm commands with the correct lvm filter.
This means from linstor perspective it shouldn't be necessary to set the
lvm filters in the
lvm.conf (but will not hurt either).

linstor-server 1.5.1
--------------------
 * Add lvm filter to lvm commands
 * Fix reading incorrect database password field

https://www.linbit.com/downloads/linstor/linstor-server-1.5.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000006b104305a183bc3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All!<div><br></div><div>This release fixes a bug login =
into database if you use non &quot;standard&quot; passwords and</div><div>w=
e finally managed to feed all lvm commands with the correct lvm filter.</di=
v><div>This means from linstor perspective it shouldn&#39;t be necessary=C2=
=A0to set the lvm filters in the</div><div>lvm.conf (but will not hurt eith=
er).</div><div><div><br></div><div><span style=3D"font-family:monospace,mon=
ospace;font-size:x-small">linstor-server 1.5.1</span></div><div><div><div><=
font face=3D"monospace, monospace" size=3D"1">--------------------</font></=
div><div><span style=3D"font-family:monospace,monospace;font-size:x-small">=
=C2=A0* Add lvm filter to lvm commands</span></div></div><div><span style=
=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Fix reading =
incorrect database password field</span></div><div><font face=3D"monospace"=
 size=3D"1"><br></font></div><div><font size=3D"1" face=3D"monospace"><a hr=
ef=3D"https://www.linbit.com/downloads/linstor/linstor-server-1.5.1.tar.gz"=
>https://www.linbit.com/downloads/linstor/linstor-server-1.5.1.tar.gz</a></=
font></div></div><div><br></div><div><div>Linstor PPA:<br><a href=3D"https:=
//launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferr=
er" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-=
drbd9-stack</a></div></div><div><br></div><div>Cheers,</div><div>Rene</div>=
</div></div>

--0000000000006b104305a183bc3b--
