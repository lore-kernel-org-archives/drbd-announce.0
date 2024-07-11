Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
	[209.85.216.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 77F21420167
	for <drbd-announce@lists.linbit.com>;
	Thu, 11 Jul 2024 15:48:51 +0200 (CEST)
Received: by mail-pj1-f49.google.com with SMTP id
	98e67ed59e1d1-2c86869685aso157249a91.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 11 Jul 2024 06:48:51 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 11 Jul 2024 15:48:39 +0200
Message-ID: <CAHmn2DMqQiKALCKvM9a1UFb6KG12ASDiP9AO_WM+OJ6vf0TFdg@mail.gmail.com>
Subject: linstor-server 1.28.0 release
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000cd6381061cf9055e"
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

--000000000000cd6381061cf9055e
Content-Type: text/plain; charset="UTF-8"

Hi!

This release brings 2 rather small features, the --x-replicas-on-different
is explained here [1]
from Gabor in our last community meeting. The --keep-tiebreaker is more a
helper for our
plugin developers to make sure, we don't unintentionally delete the witness
resource.

Apart from that this release has a notable deadlock fix for the controller
if there are a lot of requests and a fix in the resource-definition clone
waiting forever if the "base" resource had more than one diskless resource.

## [1.28.0] - 2024-07-11

### Added

- Autoplacer: Add --x-replicas-on-different option
- Resource delete: Add --keep-tiebreaker option

### Changed

- Snapshots now cannot be created while SkipDisk is active
- Autoplacer: Added very small default weight for the
MinResourceCount-strategy for better tiebreaker-distribution
- Added some more info logging and improved an error message
- BalanceResourceTask: Do not count skipDisk resources as diskful

### Fixed

- SkipDisk: layers below DRBD now get ignored to prevent errors on the
satellites
- ReconnectorTask,EventProcessor: Attempt to fix possible deadlocks while
having many connections/requests
- Clone: Fix clone waiting if there is more than one diskless resource
- ToggleDisk: Fix toggle disk for resource spawned with diskles-on-remaining
- Backups: Ensure snapshots can't be stuck in either sending or receiving,
which would render them undeletable
- PhassPhraseInit: Fixed uncommitted transaction
- Backup,restore: Check correct SnapVlmDfn property before recalculating
AllocationGranularity
- FreeSpace: Fixed incorrect calculation of reserved space for thin volumes

https://pkg.linbit.com//downloads/linstor/linstor-server-1.28.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

[1] https://youtu.be/bUVawiaoKpU?t=1310

--000000000000cd6381061cf9055e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>This release=C2=A0brings 2 rather s=
mall features, the --x-replicas-on-different is explained here [1]</div><di=
v>from Gabor in our last community meeting. The --keep-tiebreaker is more a=
 helper for our</div><div>plugin developers to make sure, we don&#39;t unin=
tentionally delete the witness resource.</div><div><br></div><div>Apart fro=
m that this release has a notable deadlock fix for the controller if there =
are a lot of requests and a fix in the resource-definition clone waiting fo=
rever if the &quot;base&quot; resource had more than one diskless resource.=
</div><div><br></div><div>## [1.28.0] - 2024-07-11<br><br>### Added<br><br>=
- Autoplacer: Add --x-replicas-on-different option<br>- Resource delete: Ad=
d --keep-tiebreaker option<br><br>### Changed<br><br>- Snapshots now cannot=
 be created while SkipDisk is active<br>- Autoplacer: Added very small defa=
ult weight for the MinResourceCount-strategy for better tiebreaker-distribu=
tion<br>- Added some more info logging and improved an error message<br>- B=
alanceResourceTask: Do not count skipDisk resources as diskful<br><br>### F=
ixed<br><br>- SkipDisk: layers below DRBD now get ignored to prevent errors=
 on the satellites<br>- ReconnectorTask,EventProcessor: Attempt to fix poss=
ible deadlocks while having many connections/requests<br>- Clone: Fix clone=
 waiting if there is more than one diskless resource<br>- ToggleDisk: Fix t=
oggle disk for resource spawned with diskles-on-remaining<br>- Backups: Ens=
ure snapshots can&#39;t be stuck in either sending or receiving, which woul=
d render them undeletable<br>- PhassPhraseInit: Fixed uncommitted transacti=
on<br>- Backup,restore: Check correct SnapVlmDfn property before recalculat=
ing AllocationGranularity<br>- FreeSpace: Fixed incorrect calculation of re=
served space for thin volumes<br></div><div><br></div><div><div><a href=3D"=
https://pkg.linbit.com//downloads/linstor/linstor-server-1.28.0.tar.gz">htt=
ps://pkg.linbit.com//downloads/linstor/linstor-server-1.28.0.tar.gz</a><br>=
</div><div><br></div><div><br></div><div><div><div><div>Linstor PPA:<br><a =
href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" r=
el=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/=
ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,<br></d=
iv><div>Rene</div></div></div></div><div><br></div><div>[1]=C2=A0<a href=3D=
"https://youtu.be/bUVawiaoKpU?t=3D1310">https://youtu.be/bUVawiaoKpU?t=3D13=
10</a></div></div>

--000000000000cd6381061cf9055e--
