Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id EBD82420640
	for <drbd-announce@lists.linbit.com>;
	Mon, 21 Dec 2020 14:22:23 +0100 (CET)
Received: by mail-wr1-f42.google.com with SMTP id y17so11030304wrr.10
	for <drbd-announce@lists.linbit.com>;
	Mon, 21 Dec 2020 05:22:23 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 21 Dec 2020 14:22:12 +0100
Message-ID: <CAHmn2DPnaGR-rU8LqPuktCxv_zgZcRUgB4OAq-c8MxasshoqfA@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000338feb05b6f95996"
Subject: [DRBD-announce] linstor-server 1.11.0
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

--000000000000338feb05b6f95996
Content-Type: text/plain; charset="UTF-8"

Hi!

Even though this release pushes the minor version number, it mostly
consists of bug fixes.
New features worth mentioning are props info API and autoplace addition for
tiebreaker and a +1 notion for the auto-placer.

linstor-server 1.11.0
---------------------
 * Added REST-API paths for retrieving property info: `properties/info`,
`properties/info/all`
 * Added autoplace for tiebreaker and a new client notation `--auto-place
+1`
 * Check if node resource inUse or last diskful before deleting on node
delete
 * Do not return error if a resource already exists (now returns an INFO)
 * Fixed missing property resolving objects while building the DRBD config
 * Fixed bug with file based storage pools
 * Fixed node lost db integrity issues
 * Fixed several issues with the auto-evict feature
 * REST-API version 1.6.0

https://www.linbit.com/downloads/linstor/linstor-server-1.11.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000338feb05b6f95996
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Even though this release pushes the=
 minor version number, it mostly consists of bug fixes.</div><div>New featu=
res worth mentioning are props info API and autoplace addition for tiebreak=
er and a=C2=A0+1 notion for the auto-placer.</div><div><br></div><div><div>=
<font face=3D"monospace">linstor-server 1.11.0<br>---------------------<br>=
=C2=A0* Added REST-API paths for retrieving property info: `properties/info=
`, `properties/info/all`<br>=C2=A0* Added autoplace for tiebreaker and a ne=
w client notation `--auto-place +1`<br>=C2=A0* Check if node resource inUse=
 or last diskful before deleting on node delete<br>=C2=A0* Do not return er=
ror if a resource already exists (now returns an INFO)<br>=C2=A0* Fixed mis=
sing property resolving objects while building the DRBD config<br>=C2=A0* F=
ixed bug with file based storage pools<br>=C2=A0* Fixed node lost db integr=
ity issues<br>=C2=A0* Fixed several issues with the auto-evict feature<br>=
=C2=A0* REST-API version 1.6.0</font><br></div><div><br></div><div><div><fo=
nt face=3D"monospace"><a href=3D"https://www.linbit.com/downloads/linstor/l=
instor-server-1.11.0.tar.gz" target=3D"_blank">https://www.linbit.com/downl=
oads/linstor/linstor-server-1.11.0.tar.gz</a></font><br></div><div><br></di=
v><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+=
archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">htt=
ps://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></di=
v><div><br></div><div>Cheers,<br></div><div>Rene</div></div></div></div></d=
iv>

--000000000000338feb05b6f95996--
