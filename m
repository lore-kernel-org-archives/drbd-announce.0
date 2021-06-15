Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E6E144205C6
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Jun 2021 16:10:06 +0200 (CEST)
Received: by mail-wm1-f50.google.com with SMTP id
	t11-20020a1cc30b0000b02901cec841b6a0so977060wmf.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Jun 2021 07:10:06 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 15 Jun 2021 16:09:55 +0200
Message-ID: <CAHmn2DM+RnFH3_1uf3nKwbn_dSOc-iWJQ0xgt8XMk2Ri4P_0ng@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000e9f06205c4ce8773"
Subject: [DRBD-announce] python-linstor/linstor-client 1.8.0 release
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

--000000000000e9f06205c4ce8773
Content-Type: text/plain; charset="UTF-8"

Hi,

This client and python-linstor release fixes some small bugs and adds
bcache layer support
for linstor-server 1.13.

linstor-client 1.8.0
--------------------
 * add client user-agent info
 * node info: show also info for combined nodes

https://www.linbit.com/downloads/linstor/linstor-client-1.8.0.tar.gz

python-linstor 1.8.0
--------------------
 * fix exception with empty nodes in snapshot-definition
 * (Multi)Linstor() accepts now addition user-agent info
 * update linstor common-consts(bcache)

https://www.linbit.com/downloads/linstor/python-linstor-1.8.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000e9f06205c4ce8773
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>This client and python-linstor rele=
ase fixes some small bugs and adds bcache layer support</div><div>for linst=
or-server 1.13.</div><div><br></div><div><font face=3D"monospace">linstor-c=
lient 1.8.0<br>--------------------<br>=C2=A0* add client user-agent info<b=
r>=C2=A0* node info: show also info for combined nodes<br></font></div><div=
><br></div><div><a href=3D"https://www.linbit.com/downloads/linstor/linstor=
-client-1.8.0.tar.gz">https://www.linbit.com/downloads/linstor/linstor-clie=
nt-1.8.0.tar.gz</a><font face=3D"monospace"><br></font></div><div><font fac=
e=3D"monospace"><br></font></div><div><font face=3D"monospace">python-linst=
or 1.8.0<br>--------------------<br>=C2=A0* fix exception with empty nodes =
in snapshot-definition<br>=C2=A0* (Multi)Linstor() accepts now addition use=
r-agent info<br>=C2=A0* update linstor common-consts(bcache)</font><br></di=
v><div><font face=3D"monospace"><br></font></div><div><a href=3D"https://ww=
w.linbit.com/downloads/linstor/python-linstor-1.8.0.tar.gz">https://www.lin=
bit.com/downloads/linstor/python-linstor-1.8.0.tar.gz</a><font face=3D"mono=
space"><br></font></div><div><font face=3D"monospace"><br></font></div><div=
><div>Linstor PPA:<br></div><div><div><a href=3D"https://launchpad.net/~lin=
bit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank=
">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br><=
/div><div><br></div><div>Best regards,</div><div>Rene</div></div></div></di=
v>

--000000000000e9f06205c4ce8773--
