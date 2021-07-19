Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
	[209.85.208.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 936FB4202F2
	for <drbd-announce@lists.linbit.com>;
	Mon, 19 Jul 2021 13:54:27 +0200 (CEST)
Received: by mail-ed1-f48.google.com with SMTP id h8so23586582eds.4
	for <drbd-announce@lists.linbit.com>;
	Mon, 19 Jul 2021 04:54:27 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 19 Jul 2021 13:54:16 +0200
Message-ID: <CAHmn2DMoP37F0oSELtK+xHS+Zb3-g01SEQQ0-XL5cOy8VSqAmA@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000642e0205c7789996"
Subject: [DRBD-announce] python-linstor/linstor-client 1.9.0 release
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

--000000000000642e0205c7789996
Content-Type: text/plain; charset="UTF-8"

Hi,

This client release as a new advise sub command, that may help to find
problems within
your cluster and even suggests possible solutions. Apart from this it has
some smaller fixes.

linstor-client 1.9.0
--------------------
 * Add new advise subcommand
 * Add remote SPDK subcommand
 * resource/volume list: always show all resources (including tiebreaker)
 * Fix drbd options --timeout name clash
 * Fix query-max-volume-size key error
 * node info: only show provider/layer errors with additional option
 * node info: add missing provider/layer

https://pkg.linbit.com//downloads/linstor/linstor-client-1.9.0.tar.gz

python-linstor 1.9.0
--------------------
 * Add remote SPDK constants

https://pkg.linbit.com//downloads/linstor/python-linstor-1.9.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000642e0205c7789996
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>This client release as a new advise=
 sub command, that may help to find problems within</div><div>your cluster =
and even suggests possible solutions. Apart from this it has some smaller f=
ixes.</div><div><br></div><div><font face=3D"monospace">linstor-client 1.9.=
0<br>--------------------<br>=C2=A0* Add new advise subcommand<br>=C2=A0* A=
dd remote SPDK subcommand<br>=C2=A0* resource/volume list: always show all =
resources (including tiebreaker)<br>=C2=A0* Fix drbd options --timeout name=
 clash<br>=C2=A0* Fix query-max-volume-size key error<br>=C2=A0* node info:=
 only show provider/layer errors with additional option<br>=C2=A0* node inf=
o: add missing provider/layer<br></font></div><div><br></div><div><a href=
=3D"https://pkg.linbit.com//downloads/linstor/linstor-client-1.9.0.tar.gz">=
https://pkg.linbit.com//downloads/linstor/linstor-client-1.9.0.tar.gz</a><f=
ont face=3D"monospace"><br></font></div><div><font face=3D"monospace"><br><=
/font></div><div><font face=3D"monospace">python-linstor 1.9.0<br>---------=
-----------<br>=C2=A0* Add remote SPDK constants</font><br></div><div><font=
 face=3D"monospace"><br></font></div><div><a href=3D"https://pkg.linbit.com=
//downloads/linstor/python-linstor-1.9.0.tar.gz">https://pkg.linbit.com//do=
wnloads/linstor/python-linstor-1.9.0.tar.gz</a><font face=3D"monospace"><br=
></font></div><div><font face=3D"monospace"><br></font></div><div><div>Lins=
tor PPA:<br></div><div><div><a href=3D"https://launchpad.net/~linbit/+archi=
ve/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://=
launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><div>=
<br></div><div>Best regards,</div><div>Rene</div></div></div></div>

--000000000000642e0205c7789996--
