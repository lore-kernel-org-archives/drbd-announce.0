Return-Path: <rene.peinthor@linbit.com>
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com
	[209.85.128.180])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2478F4203DB
	for <drbd-announce@lists.linbit.com>;
	Mon, 17 Apr 2023 15:57:43 +0200 (CEST)
Received: by mail-yw1-f180.google.com with SMTP id
	00721157ae682-54fa9da5e5bso217986867b3.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 17 Apr 2023 06:57:43 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 17 Apr 2023 15:57:31 +0200
Message-ID: <CAHmn2DOVzJgL6xZg+R8HqmKd56EzPEguAQRgKbfyGwMKaEDJdQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000173dee05f9889322"
Subject: [DRBD-announce] linstor-server 1.22.0 release
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

--000000000000173dee05f9889322
Content-Type: text/plain; charset="UTF-8"

Hi!

This is a smaller minor release, but I think this has more fixes than
actual new features,
see below for the details:

## [1.22.0] - 2023-04-17

### Added

- "StorDriver/LvcreateSnapshotOptions" and "StorDriver/ZfsSnapshotOptions"
properties
- "FileSystem/User" and "FileSystem/Group" properties for root-owner of
newly created FS
- Support to do multiple snapshots within one device manager run

### Changed

- Autoplacer now ignores occupied values from evicted or evacuating nodes
- DrbdLayer skips processChildren when DRBD_DELETE flag is set

### Fixed

- Backup list can now handle more than 1000 entries in bucket
(truncation/continuation was handled wrong before)
- NodeConnection path can now be deleted
- NodeConnections no longer cause NPE on satellites
- Database loading causing ClassCastException with drbd,luks,storage during
toggle disk
- Aborted snapshot now always should resume-io

https://pkg.linbit.com//downloads/linstor/linstor-server-1.22.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000173dee05f9889322
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>This is a smaller minor release, bu=
t I think this has more fixes than actual new features,</div><div>see below=
 for the details:</div><div><br></div><div>## [1.22.0] - 2023-04-17<br><br>=
### Added<br><br>- &quot;StorDriver/LvcreateSnapshotOptions&quot; and &quot=
;StorDriver/ZfsSnapshotOptions&quot; properties<br>- &quot;FileSystem/User&=
quot; and &quot;FileSystem/Group&quot; properties for root-owner of newly c=
reated FS<br>- Support to do multiple snapshots within one device manager r=
un<br><br>### Changed<br><br>- Autoplacer now ignores occupied values from =
evicted or evacuating nodes<br>- DrbdLayer skips processChildren when DRBD_=
DELETE flag is set<br><br>### Fixed<br><br>- Backup list can now handle mor=
e than 1000 entries in bucket (truncation/continuation was handled wrong be=
fore)<br>- NodeConnection path can now be deleted<br>- NodeConnections no l=
onger cause NPE on satellites<br>- Database loading causing ClassCastExcept=
ion with drbd,luks,storage during toggle disk<br>- Aborted snapshot now alw=
ays should resume-io<br></div><div><br></div><div><div><a href=3D"https://p=
kg.linbit.com//downloads/linstor/linstor-server-1.22.0.tar.gz">https://pkg.=
linbit.com//downloads/linstor/linstor-server-1.22.0.tar.gz</a><br></div><di=
v><br></div><div><br></div><div><div><div><div>Linstor PPA:<br><a href=3D"h=
ttps://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"nor=
eferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/li=
nbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,<br></div><div>R=
ene</div></div></div></div></div>

--000000000000173dee05f9889322--
