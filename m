Return-Path: <rene.peinthor@linbit.com>
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com
	[209.85.219.178])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 66D674202E5
	for <drbd-announce@lists.linbit.com>;
	Wed, 22 Mar 2023 16:35:37 +0100 (CET)
Received: by mail-yb1-f178.google.com with SMTP id z83so21492201ybb.2
	for <drbd-announce@lists.linbit.com>;
	Wed, 22 Mar 2023 08:35:37 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 22 Mar 2023 16:35:25 +0100
Message-ID: <CAHmn2DOv8e8j-QFfM9Xhe=Oeujri_KmTQUDO61n=yRjazt-igQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000055bfe705f77ee9d7"
Subject: [DRBD-announce] linstor-server 1.21.1 release
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

--00000000000055bfe705f77ee9d7
Content-Type: text/plain; charset="UTF-8"

Hi!

A small patch release, which disables, the default enabled automatic
resync-after option for DRBD resources.
We got reports of DRBD problems with the resync-after option set, so to not
trigger more incidents we decided to disable it for now.

## [1.21.1] - 2023-03-22

### Changed

- auto-resync-after for DRBD will be disabled by default (because it can
trigger a DRBD bug)

### Fixed

- Fixed available size reported by query-size-info API

https://pkg.linbit.com//downloads/linstor/linstor-server-1.21.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--00000000000055bfe705f77ee9d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>A small patch release, which disabl=
es, the default enabled automatic resync-after option for DRBD resources.</=
div><div>We got reports of DRBD problems with the resync-after option set, =
so to not trigger more incidents we decided=C2=A0to disable it for now.</di=
v><div><br></div><div>## [1.21.1] - 2023-03-22<br><br>### Changed<br><br>- =
auto-resync-after for DRBD will be disabled by default (because it can trig=
ger a DRBD bug)<br><br>### Fixed<br><br>- Fixed available size reported by =
query-size-info API<br></div><div><br></div><div><div><a href=3D"https://pk=
g.linbit.com//downloads/linstor/linstor-server-1.21.1.tar.gz">https://pkg.l=
inbit.com//downloads/linstor/linstor-server-1.21.1.tar.gz</a><br></div><div=
><br></div><div><br></div><div><div><div><div>Linstor PPA:<br><a href=3D"ht=
tps://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"nore=
ferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/lin=
bit-drbd9-stack</a></div></div><div><br></div><div>Cheers,<br></div><div>Re=
ne</div></div></div></div></div>

--00000000000055bfe705f77ee9d7--
