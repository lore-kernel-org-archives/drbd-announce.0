Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 372D7420385
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 Mar 2020 13:39:58 +0100 (CET)
Received: by mail-wr1-f42.google.com with SMTP id a25so21257679wrd.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 Mar 2020 05:39:58 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 24 Mar 2020 13:39:46 +0100
Message-ID: <CAHmn2DMGC0vuneQHnz_=N3HqqRjoDSvoFC7ohA9YfYpqe7UYnw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000009b2ad805a1990cb3"
Subject: [DRBD-announce] linstor-server 1.5.2 release
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

--0000000000009b2ad805a1990cb3
Content-Type: text/plain; charset="UTF-8"

Hi All!

There was a bug with LVM-filters and the physical-storage API, and this
hot-fix release
should fix those issues. Most of you shouldn't be affected by this bug, or
could easily
work around it (manually creating PV/VG...). So no special need to upgrade.

linstor-server 1.5.2
--------------------
 * Fix LVM-filters for physical-storage

https://www.linbit.com/downloads/linstor/linstor-server-1.5.2.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000009b2ad805a1990cb3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All!<div><br></div><div>There was a bug with LVM-filter=
s and the physical-storage=C2=A0API, and this hot-fix release</div><div>sho=
uld fix those issues. Most of you shouldn&#39;t be affected by this bug, or=
 could easily</div><div>work around it (manually creating PV/VG...). So no =
special need to upgrade.</div><div><div><br></div><div><span style=3D"font-=
family:monospace,monospace;font-size:x-small">linstor-server 1.5.2</span></=
div><div><div><div><font face=3D"monospace, monospace" size=3D"1">---------=
-----------</font></div><div><font face=3D"monospace" size=3D"1">=C2=A0*=C2=
=A0Fix LVM-filters for physical-storage</font></div></div><div><font face=
=3D"monospace" size=3D"1"><br></font></div><div><font size=3D"1" face=3D"mo=
nospace"><a href=3D"https://www.linbit.com/downloads/linstor/linstor-server=
-1.5.2.tar.gz">https://www.linbit.com/downloads/linstor/linstor-server-1.5.=
2.tar.gz</a></font></div></div><div><br></div><div><div>Linstor PPA:<br><a =
href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" r=
el=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/=
ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,</div><=
div>Rene</div></div></div>

--0000000000009b2ad805a1990cb3--
