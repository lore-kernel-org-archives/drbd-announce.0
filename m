Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E5D1A4202DB
	for <drbd-announce@lists.linbit.com>;
	Fri,  7 May 2021 11:27:37 +0200 (CEST)
Received: by mail-wr1-f54.google.com with SMTP id t18so8471077wry.1
	for <drbd-announce@lists.linbit.com>;
	Fri, 07 May 2021 02:27:37 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Fri, 7 May 2021 11:27:26 +0200
Message-ID: <CAHmn2DMYg3eY0DLhQ8v-i9p80cHaNf6gTRcde0s_Rwem1_V8rw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000d93b8905c1ba0988"
Subject: [DRBD-announce] linstor-server release 1.12.3
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

--000000000000d93b8905c1ba0988
Content-Type: text/plain; charset="UTF-8"

Hi All!

There was still a problem with resource groups on postgresql DB backends,
which should now be finally fixed and 2 smaller bug fixes as well made it
into this release.

linstor-server 1.12.3
---------------------
 * Fix creating resource groups using postgresql backend
 * Fixed re-auto-placing resource-definition on moving to different rscgrp
 * Updated automatic-verify algorithm list for DRBD

https://www.linbit.com/downloads/linstor/linstor-server-1.12.3.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000d93b8905c1ba0988
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All!</div><div><br></div><div>There was still a pr=
oblem with resource groups on postgresql DB backends, which should now be f=
inally fixed and 2 smaller bug fixes as well made it into this release.</di=
v><div><br></div><div><font face=3D"monospace">linstor-server 1.12.3<br>---=
------------------<br>=C2=A0* Fix creating resource groups using postgresql=
 backend<br>=C2=A0* Fixed re-auto-placing resource-definition on moving to =
different rscgrp<br>=C2=A0* Updated automatic-verify algorithm list for DRB=
D</font><br></div><div><font face=3D"monospace"><br></font></div><div><div>=
<font face=3D"monospace"><a href=3D"https://www.linbit.com/downloads/linsto=
r/linstor-server-1.12.3.tar.gz">https://www.linbit.com/downloads/linstor/li=
nstor-server-1.12.3.tar.gz</a></font><br></div><div><br></div><div><div><di=
v>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/=
linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.=
net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></di=
v><div>Cheers,<br></div><div>Rene</div></div></div></div>

--000000000000d93b8905c1ba0988--
