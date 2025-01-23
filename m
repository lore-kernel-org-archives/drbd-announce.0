Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
	[209.85.216.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id EACF716091D
	for <drbd-announce@lists.linbit.com>;
	Thu, 23 Jan 2025 09:27:06 +0100 (CET)
Received: by mail-pj1-f54.google.com with SMTP id
	98e67ed59e1d1-2ee397a82f6so1275291a91.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 23 Jan 2025 00:27:06 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 23 Jan 2025 09:26:54 +0100
Message-ID: <CAHmn2DMoE2pJCdt5r9FTkaKj0cUnQ82_2SVC55gXvUErUPjntg@mail.gmail.com>
Subject: linstor-server 1.30.3 release
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000000f5975062c5b60a5"
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

--0000000000000f5975062c5b60a5
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is a boring patch release, with just a few smaller fixes and one new
prometheus metrics
to detect nodes that are reconnecting unusually often.

## [1.30.3] - 2025-01-23

### Added

- metrics: Added linstor_node_reconnnect_attempt_count

### Changed

- gradle: support different java home in wrapper scripts
- sos-report: add more controller json(resource-definitions, snapshots) and
zfs list snapshots
- /proc/crypto: Ignore invalid entries (i.e. entries with missing driver or
type)
- API: do not generate error reports if parent resources are not found
- volume-definition resize: if current size is set, no satellite/data
updates will be triggered

### Fixed

- metrics: don't create error-report on closing connection nodes
- LVM: Correctly calculate extents with more than one stripes
- RscDfn and SnapDfn: Properly restore layerStack (!= layerData) from
backup and snapshot restore
- BalanceResources: Only adjust selected rscDfn instead of entire rscGrp

https://pkg.linbit.com//downloads/linstor/linstor-server-1.30.3.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000000f5975062c5b60a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Here is a boring patch release, wit=
h just a few smaller fixes and one new prometheus metrics</div><div>to dete=
ct nodes that are reconnecting unusually=C2=A0often.</div><div></div><div><=
br></div><div>## [1.30.3] - 2025-01-23<br><br>### Added<br><br>- metrics: A=
dded linstor_node_reconnnect_attempt_count<br><br>### Changed<br><br>- grad=
le: support different java home in wrapper scripts<br>- sos-report: add mor=
e controller json(resource-definitions, snapshots) and zfs list snapshots<b=
r>- /proc/crypto: Ignore invalid entries (i.e. entries with missing driver =
or type)<br>- API: do not generate error reports if parent resources are no=
t found<br>- volume-definition resize: if current size is set, no satellite=
/data updates will be triggered<br><br>### Fixed<br><br>- metrics: don&#39;=
t create error-report on closing connection nodes<br>- LVM: Correctly calcu=
late extents with more than one stripes<br>- RscDfn and SnapDfn: Properly r=
estore layerStack (!=3D layerData) from backup and snapshot restore<br>- Ba=
lanceResources: Only adjust selected rscDfn instead of entire rscGrp</div><=
div><br></div><div><div><a href=3D"https://pkg.linbit.com//downloads/linsto=
r/linstor-server-1.30.3.tar.gz">https://pkg.linbit.com//downloads/linstor/l=
instor-server-1.30.3.tar.gz</a><br></div><div><br></div><div><br></div><div=
><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+a=
rchive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">http=
s://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div=
><div><br></div><div>Cheers,<br></div><div>Rene</div></div></div></div></di=
v>

--0000000000000f5975062c5b60a5--
