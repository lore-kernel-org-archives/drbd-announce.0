Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
	[209.85.216.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 5FF82160960
	for <drbd-announce@lists.linbit.com>;
	Tue, 17 Dec 2024 17:06:19 +0100 (CET)
Received: by mail-pj1-f48.google.com with SMTP id
	98e67ed59e1d1-2efa856e4a4so3944730a91.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 17 Dec 2024 08:06:19 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 17 Dec 2024 17:06:07 +0100
Message-ID: <CAHmn2DMPG15RnDqzDQ9L3ULNS9LS9MrM5Myokp4=TjNR1qxReg@mail.gmail.com>
Subject: linstor-server 1.30.1 release
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000329ae20629797a2d"
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

--000000000000329ae20629797a2d
Content-Type: text/plain; charset="UTF-8"

Hi!

Right before Christmas we finally could finish a feature that was in the
works
for more than 10 months, the as we called it advanced clone.
Before clone could only handle simple cases of cloning in the same storage
pool
and the same layer stack. Starting with this release you can now also
specify a different
layer-stack and also another resource-group which will than use this
resource-groups
storage pools. Of course such operations have to rely on a basic dd'ing of
data and won't
be the fastest, but at least they are possible now.

At the last minute we found a migration issue with 1.30.0, so we had to fix
that in a 1.30.1 release.

## [1.30.1] - 2024-12-17

### Fixed

- Migration: Fixed splitSnapProps bug not properly handling KVS properties

## [1.30.0] - 2024-12-17

### Added

- Added options dst_rsc_grp and force_rsc_grp to BackupShip, BackupRestore
and BackupSchedule
- Added timing of REST and internal API calls to prometheus /metrics
- Backup,L2L: Add property to only wait with shipping until snapshot is
created

### Changed

- Split snapshot properties into snapshot-specific- and resource-properties
- SOS: use local timestamp as well as relative delta for dmesg output
- SOS: use lvmconfig to show full lvm.conf
- SOS: use lsblk -O, also include json output
- SOS: include /proc/sys/kernel/tainted
- DRBD state tracking: Fixed tracking of a peer's diskless volume's client
flag
- Clone: It is now possible to clone into different storage-pools and
layer-stacks.
  This can be done by using the new resource-group and layer-stack arguments

### Fixed

- EBS: Fixed retrieving EC2 instance-id

https://pkg.linbit.com//downloads/linstor/linstor-server-1.30.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000329ae20629797a2d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Right before Christmas we finally c=
ould finish a feature that was in the works</div><div>for more than 10 mont=
hs, the as we called it advanced clone.</div><div>Before clone could only h=
andle simple cases of cloning in the same storage pool</div><div>and the sa=
me layer stack. Starting with this release you can now also specify a diffe=
rent</div><div>layer-stack and also another resource-group which will than =
use this resource-groups</div><div>storage pools. Of=C2=A0course such opera=
tions have to rely on a basic dd&#39;ing of data and won&#39;t</div><div>be=
 the fastest, but at least they are possible now.</div><div><br></div><div>=
At the last minute we found a migration issue with 1.30.0, so we had to fix=
 that in a 1.30.1 release.</div><div></div><div><br></div><div>## [1.30.1] =
- 2024-12-17<br><br>### Fixed<br><br>- Migration: Fixed splitSnapProps bug =
not properly handling KVS properties</div><div><br></div><div>## [1.30.0] -=
 2024-12-17<br><br>### Added<br><br>- Added options dst_rsc_grp and force_r=
sc_grp to BackupShip, BackupRestore and BackupSchedule<br>- Added timing of=
 REST and internal API calls to prometheus /metrics<br>- Backup,L2L: Add pr=
operty to only wait with shipping until snapshot is created<br><br>### Chan=
ged<br><br>- Split snapshot properties into snapshot-specific- and resource=
-properties<br>- SOS: use local timestamp as well as relative delta for dme=
sg output<br>- SOS: use lvmconfig to show full lvm.conf<br>- SOS: use lsblk=
 -O, also include json output<br>- SOS: include /proc/sys/kernel/tainted<br=
>- DRBD state tracking: Fixed tracking of a peer&#39;s diskless volume&#39;=
s client flag<br>- Clone: It is now possible to clone into different storag=
e-pools and layer-stacks.<br>=C2=A0 This can be done by using the new resou=
rce-group and layer-stack arguments<br><br>### Fixed<br><br>- EBS: Fixed re=
trieving EC2 instance-id</div><div><br></div><div><div><a href=3D"https://p=
kg.linbit.com//downloads/linstor/linstor-server-1.30.1.tar.gz">https://pkg.=
linbit.com//downloads/linstor/linstor-server-1.30.1.tar.gz</a><br></div><di=
v><br></div><div><br></div><div><div><div><div>Linstor PPA:<br><a href=3D"h=
ttps://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"nor=
eferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/li=
nbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,<br></div><div>R=
ene</div></div></div></div></div>

--000000000000329ae20629797a2d--
