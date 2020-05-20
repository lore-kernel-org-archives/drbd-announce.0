Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 89F2F4203E1
	for <drbd-announce@lists.linbit.com>;
	Wed, 20 May 2020 14:02:09 +0200 (CEST)
Received: by mail-wm1-f47.google.com with SMTP id h4so2283816wmb.4
	for <drbd-announce@lists.linbit.com>;
	Wed, 20 May 2020 05:02:09 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 20 May 2020 14:01:57 +0200
Message-ID: <CAHmn2DNCTobLGRrH0igLcw6S1OoLNqOE2xCKB8RtemHPRsxOAQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000570cdd05a6132a3a"
Subject: [DRBD-announce] python-linstor, linstor-client 1.1.1 release
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

--000000000000570cdd05a6132a3a
Content-Type: text/plain; charset="UTF-8"

Hi!

The 1.1.0 release missed to specify multiple storage pools for
select-filters(resource group, auto-place), this release adds this
functionality.
Also be aware that some plugins (Opennebula,...) may not fully work with
this feature.

python-linstor v1.1.1
---------------------
  * Add missing support for auto-select storage pool lists

https://www.linbit.com/downloads/linstor/python-linstor-1.1.1.tar.gz

linstor-client 1.1.1
---------------------
  * Add missing support for auto-select storage pool lists

https://www.linbit.com/downloads/linstor/linstor-client-1.1.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000570cdd05a6132a3a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>The 1.1.0 release missed to specify=
 multiple storage pools for select-filters(resource group, auto-place), thi=
s release adds this functionality.</div><div>Also be aware that some plugin=
s (Opennebula,...) may not fully work with this feature.</div><div><div><br=
></div><div><font face=3D"monospace">python-linstor v1.1.1<br>-------------=
--------<br>=C2=A0 *=C2=A0Add missing support for auto-select storage pool =
lists</font><br></div><div><div><div><div><br></div><div><font size=3D"1"><=
font face=3D"monospace, monospace"><a href=3D"https://www.linbit.com/downlo=
ads/linstor/python-linstor-1.1.1.tar.gz">https://www.linbit.com/downloads/l=
instor/python-linstor-1.1.1.tar.gz</a></font></font></div></div><div><font =
size=3D"1"><br></font></div><div><div><font face=3D"monospace">linstor-clie=
nt 1.1.1<br>---------------------<br>=C2=A0 *=C2=A0Add missing support for =
auto-select storage pool lists</font><br></div><div><br></div><div><font si=
ze=3D"1"><font face=3D"monospace, monospace"><a href=3D"https://www.linbit.=
com/downloads/linstor/linstor-client-1.1.1.tar.gz">https://www.linbit.com/d=
ownloads/linstor/linstor-client-1.1.1.tar.gz</a></font></font></div></div><=
/div><div><br></div><div>Linstor PPA:<br></div><div><div><a href=3D"https:/=
/launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferre=
r" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-d=
rbd9-stack</a><br></div><div><br></div><div>Best regards,</div><div>Rene</d=
iv></div></div></div></div>

--000000000000570cdd05a6132a3a--
