Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
	[209.85.210.178])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2DEE04203B0
	for <drbd-announce@lists.linbit.com>;
	Mon, 22 Jan 2024 12:28:34 +0100 (CET)
Received: by mail-pf1-f178.google.com with SMTP id
	d2e1a72fcca58-6d9b41a3cb7so1065489b3a.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 22 Jan 2024 03:28:34 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 22 Jan 2024 12:28:22 +0100
Message-ID: <CAHmn2DPd+wPZGV_MWX66b0pnDft5RxAH-crCY0Rd+EQfWvUN3w@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000004593d6060f872186"
Subject: [DRBD-announce] python-linstor/linstor-client 1.21.0 release
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

--0000000000004593d6060f872186
Content-Type: text/plain; charset="UTF-8"

Hi,

New python-linstor and linstor client release, that has changes fitting to
the linstor-server 1.26.0-rc1 release.

## linstor-client
### Added

- Added --peer-slots to "rg c", "rg m" and "rg spawn"
- Added storpool rename for schedule enable, restore and l2l shippings

### Changed

- "rg query-size-info" no longer shows 'OversubscriptionRatio' (multiple
ambiguous sources)

### Fixed

- skipDisk property access on list commands

https://pkg.linbit.com//downloads/linstor/linstor-client-1.21.0.tar.gz

## python-linstor
### Added

- Add optional peer_slots parameter to resource_group_{create,modify,spawn}
- Allow storpool rename map on snap restore an schedule enable

### Fixed

- resource.py exception if a resource reply is an apicallrc

https://pkg.linbit.com//downloads/linstor/python-linstor-1.21.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--0000000000004593d6060f872186
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>New python-linstor and l=
instor client release, that has changes fitting to the linstor-server 1.26.=
0-rc1 release.</div><div><br></div><div>##=C2=A0<span class=3D"gmail-il">li=
nstor</span>-<span class=3D"gmail-il">client</span></div><div>### Added<br>=
<br>- Added --peer-slots to &quot;rg c&quot;, &quot;rg m&quot; and &quot;rg=
 spawn&quot;<br>- Added storpool rename for schedule enable, restore and l2=
l shippings<br><br>### Changed<br><br>- &quot;rg query-size-info&quot; no l=
onger shows &#39;OversubscriptionRatio&#39; (multiple ambiguous sources)<br=
><br>### Fixed<br><br>- skipDisk property access on list commands<br></div>=
<div><br></div><div><a href=3D"https://pkg.linbit.com//downloads/linstor/li=
nstor-client-1.21.0.tar.gz">https://pkg.linbit.com//downloads/<span class=
=3D"gmail-il">linstor</span>/<span class=3D"gmail-il">linstor</span>-<span =
class=3D"gmail-il">client</span>-1.21.0.tar.gz</a><br></div><br><div>## pyt=
hon-<span class=3D"gmail-il">linstor</span></div><div>### Added<br><br>- Ad=
d optional peer_slots parameter to resource_group_{create,modify,spawn}<br>=
- Allow storpool rename map on snap restore an schedule enable<br><br>### F=
ixed<br><br>- resource.py exception if a resource reply is an apicallrc<br>=
</div><div><br></div><div><a href=3D"https://pkg.linbit.com//downloads/lins=
tor/python-linstor-1.21.0.tar.gz">https://pkg.linbit.com//downloads/<span c=
lass=3D"gmail-il">linstor</span>/python-<span class=3D"gmail-il">linstor</s=
pan>-1.21.0.tar.gz</a><br></div><div><br></div><div><div><span class=3D"gma=
il-il">Linstor</span>=C2=A0PPA:<br></div><div><div><a href=3D"https://launc=
hpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" tar=
get=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-s=
tack</a><br></div><div><br></div><div>Best regards,</div><div>Rene</div></d=
iv></div></div>

--0000000000004593d6060f872186--
