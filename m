Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 66C104205CA
	for <drbd-announce@lists.linbit.com>;
	Wed, 28 Apr 2021 10:06:30 +0200 (CEST)
Received: by mail-wm1-f51.google.com with SMTP id
	26-20020a05600c22dab029013efd7879b8so6699303wmg.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 28 Apr 2021 01:06:30 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 28 Apr 2021 10:06:18 +0200
Message-ID: <CAHmn2DOGYCfOExXKfe_MFRt74g6TRa+fDjrtbgCDYGZ41V9p-Q@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000285ca505c103db08"
Subject: [DRBD-announce] python-linstor 1.7.0, linstor-client 1.7.1 release
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

--000000000000285ca505c103db08
Content-Type: text/plain; charset="UTF-8"

Hi,

Here is the new release of the python linstor library and the
linstor-client, bringing
access to the new features of linstor-server 1.12.0.

This client release brings also a new resource command `involved`, that
with additional options
help on node upgrades to find diskless resources that would maybe lose
their last disk full resource.

linstor-client 1.7.1
--------------------
 * Resource involved: remove debug output and an error while filtering
 * Fixed deprecated setup.cfg variable

linstor-client 1.7.0
--------------------
 * New resource involved command: Show involved resources from a node
 * Added exos commands
 * interactive: fixed help with a command
 * Fixed incorrect git-hash shown in version output

https://www.linbit.com/downloads/linstor/linstor-client-1.7.1.tar.gz

python-linstor 1.7.0
--------------------
 * Relicensed as LGPLv3
 * Added option to re-use client in HighLvl-API
 * Added methods for shard-sp/exos support

https://www.linbit.com/downloads/linstor/python-linstor-1.7.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000285ca505c103db08
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Here is the new release of the pyth=
on linstor library and the linstor-client, bringing</div><div>access to the=
 new features of linstor-server 1.12.0.</div><div><br></div><div>This clien=
t release brings also a new resource command `involved`, that with addition=
al options</div><div>help on node upgrades to find diskless resources that =
would maybe lose their last disk full=C2=A0resource.</div><div><br></div><d=
iv><font face=3D"monospace">linstor-client 1.7.1<br>--------------------<br=
>=C2=A0* Resource involved: remove debug output and an error while filterin=
g<br>=C2=A0* Fixed deprecated setup.cfg variable<br></font></div><div><font=
 face=3D"monospace"><br></font></div><div><font face=3D"monospace">linstor-=
client 1.7.0<br>--------------------<br>=C2=A0* New resource involved comma=
nd: Show involved resources from a node<br>=C2=A0* Added exos commands<br>=
=C2=A0* interactive: fixed help with a command<br>=C2=A0* Fixed incorrect g=
it-hash shown in version output<br></font></div><div><font face=3D"monospac=
e"><br></font></div><div><a href=3D"https://www.linbit.com/downloads/linsto=
r/linstor-client-1.7.1.tar.gz">https://www.linbit.com/downloads/linstor/lin=
stor-client-1.7.1.tar.gz</a><font face=3D"monospace"><br></font></div><div>=
<font face=3D"monospace"><br></font></div><div><font face=3D"monospace">pyt=
hon-linstor 1.7.0<br>--------------------<br>=C2=A0* Relicensed as LGPLv3<b=
r>=C2=A0* Added option to re-use client in HighLvl-API<br>=C2=A0* Added met=
hods for shard-sp/exos support</font><br></div><div><font face=3D"monospace=
"><br></font></div><div><a href=3D"https://www.linbit.com/downloads/linstor=
/python-linstor-1.7.0.tar.gz">https://www.linbit.com/downloads/linstor/pyth=
on-linstor-1.7.0.tar.gz</a><font face=3D"monospace"><br></font></div><div><=
font face=3D"monospace"><br></font></div><div><div>Linstor PPA:<br></div><d=
iv><div><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drb=
d9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbi=
t/+archive/ubuntu/linbit-drbd9-stack</a><br></div><div><br></div><div>Best =
regards,</div><div>Rene</div></div></div></div>

--000000000000285ca505c103db08--
