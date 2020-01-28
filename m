Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B9E364202D3
	for <drbd-announce@lists.linbit.com>;
	Tue, 28 Jan 2020 09:11:57 +0100 (CET)
Received: by mail-wr1-f50.google.com with SMTP id c9so14876099wrw.8
	for <drbd-announce@lists.linbit.com>;
	Tue, 28 Jan 2020 00:11:57 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 28 Jan 2020 09:11:46 +0100
Message-ID: <CAHmn2DPwPMurPwBU1qgXVGBesZJ+_E5Epsrw7qassh25hH8GGw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000007dbb5059d2ec7ca"
Subject: [DRBD-announce] linstor-server 1.4.2
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

--00000000000007dbb5059d2ec7ca
Content-Type: text/plain; charset="UTF-8"

Hi!

We continued to fix a few bugs in linstor and added support for the gross
size flag
on volume groups.

linstor-server 1.4.2
--------------------
 * Fixed resize while the resource is resyncing
 * Fixed DISKLESS spitting to DRBD_DISKLESS and NVME_INITIATOR
 * DfltDisklessStorPool will no longer be filtered while listening
 * Added new syntax to remove flags, prepend "-" before a flag name
 * Volume groups now support gross size

https://www.linbit.com/downloads/linstor/linstor-server-1.4.2.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--00000000000007dbb5059d2ec7ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>We continued to fix a few bugs in l=
instor and added support for the gross size flag</div><div>on volume groups=
.</div><div><br></div><div><span style=3D"font-family:monospace,monospace;f=
ont-size:x-small">linstor-server 1.4.2</span></div><div><div><div><font fac=
e=3D"monospace, monospace" size=3D"1">--------------------</font></div><div=
><span style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* =
Fixed resize while the resource is resyncing</span></div></div><div><span s=
tyle=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Fixed DI=
SKLESS spitting to DRBD_DISKLESS and NVME_INITIATOR</span></div><div><span =
style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* DfltDis=
klessStorPool will no longer be filtered while listening</span></div><div><=
span style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Ad=
ded new syntax to remove flags, prepend &quot;-&quot; before a flag name</s=
pan></div><div><span style=3D"font-family:monospace,monospace;font-size:x-s=
mall">=C2=A0* Volume groups now support gross size</span></div><div><font f=
ace=3D"monospace" size=3D"1"><br></font></div><div><font size=3D"1" face=3D=
"monospace"><a href=3D"https://www.linbit.com/downloads/linstor/linstor-ser=
ver-1.4.2.tar.gz">https://www.linbit.com/downloads/linstor/linstor-server-1=
.4.2.tar.gz</a></font></div></div><div><br></div><div><div>Linstor PPA:<br>=
<a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack=
" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archi=
ve/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,</di=
v><div>Rene</div></div>

--00000000000007dbb5059d2ec7ca--
