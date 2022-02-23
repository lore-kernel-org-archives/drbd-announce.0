Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B88E642178F
	for <drbd-announce@lists.linbit.com>;
	Wed, 23 Feb 2022 15:45:28 +0100 (CET)
Received: by mail-ed1-f54.google.com with SMTP id s14so27176990edw.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 23 Feb 2022 06:45:28 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 23 Feb 2022 15:44:17 +0100
Message-ID: <CAHmn2DNhX8BPD-d_MRZeOYErASFrCAGiS3H6ib7wXwTtO3HmWQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000acf9bc05d8b080a9"
Subject: [DRBD-announce] python-linstor/linstor-client 1.13.0 release
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

--000000000000acf9bc05d8b080a9
Content-Type: text/plain; charset="UTF-8"

Hi,

This release adds the new node evacuate command and
client support for modifying external files.

linstor-client 1.13.0
---------------------
 * Clone command added zfs clone option
 * Added resource-dfn wait sync command
 * Added backup snapshot names
 * Added controller backup db command
 * Show resource/snapshot for backups

https://pkg.linbit.com//downloads/linstor/linstor-client-1.13.0.tar.gz

python-linstor 1.13.0
---------------------
 * Clone-resource-definition: added zfs clone option
 * Resource class: allow setting resource group
 * Added resource sync status method
 * Backup added snapshot name
 * Added backup db method
 * API 1.13.0 compat

https://pkg.linbit.com//downloads/linstor/python-linstor-1.13.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000acf9bc05d8b080a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>This release adds the new node evac=
uate command and</div><div>client support for modifying external files.</di=
v><div><br></div><div><font face=3D"monospace">linstor-client 1.13.0<br>---=
------------------<br>=C2=A0* Clone command added zfs clone option<br>=C2=
=A0* Added resource-dfn wait sync command</font></div><div><font face=3D"mo=
nospace">=C2=A0* Added backup snapshot names<br>=C2=A0* Added controller ba=
ckup db command<br>=C2=A0* Show resource/snapshot for backups<br></font></d=
iv><div><br></div><div><a href=3D"https://pkg.linbit.com//downloads/linstor=
/linstor-client-1.13.0.tar.gz">https://pkg.linbit.com//downloads/linstor/li=
nstor-client-1.13.0.tar.gz</a><font face=3D"monospace"><br></font></div><di=
v><font face=3D"monospace"><br></font></div><div><font face=3D"monospace">p=
ython-linstor 1.13.0<br>---------------------</font></div><div><span style=
=3D"font-family:monospace">=C2=A0* Clone-resource-definition: added zfs clo=
ne option</span><font face=3D"monospace"><br>=C2=A0* Resource class: allow =
setting resource group<br>=C2=A0* Added resource sync status method</font><=
/div><div><font face=3D"monospace">=C2=A0* Backup added snapshot name</font=
></div><div><font face=3D"monospace">=C2=A0* Added backup db method<br>=C2=
=A0* API 1.13.0 compat</font><br></div><div><font face=3D"monospace"><br></=
font></div><div><a href=3D"https://pkg.linbit.com//downloads/linstor/python=
-linstor-1.13.0.tar.gz">https://pkg.linbit.com//downloads/linstor/python-li=
nstor-1.13.0.tar.gz</a><font face=3D"monospace"><br></font></div><div><font=
 face=3D"monospace"><br></font></div><div><div>Linstor PPA:<br></div><div><=
div><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-s=
tack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+a=
rchive/ubuntu/linbit-drbd9-stack</a><br></div><div><br></div><div>Best rega=
rds,</div><div>Rene</div></div></div></div>

--000000000000acf9bc05d8b080a9--
