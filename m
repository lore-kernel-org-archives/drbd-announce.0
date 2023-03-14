Return-Path: <rene.peinthor@linbit.com>
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com
	[209.85.219.181])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 34C7742095F
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Mar 2023 19:22:53 +0100 (CET)
Received: by mail-yb1-f181.google.com with SMTP id i6so16630398ybu.8
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Mar 2023 11:22:53 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 14 Mar 2023 19:22:42 +0100
Message-ID: <CAHmn2DOv-=A+ddb=WWsEdhvMnFpm=rweKF_h+772Ag+ncGRjQg@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000d6dafa05f6e05045"
Subject: [DRBD-announce] linstor-server 1.21.0 release
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

--000000000000d6dafa05f6e05045
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is the final release of linstor-server 1.21.0.
Compared to the RC only a few fixes made it into the final and
I attached both changelogs for completeness.

## [1.21.0] - 2023-03-14

### Changed

- Added more details (primary keys) for database-loading exceptions
- ZFS tool checker now uses `zfs -?`

### Fixed

- Fixed apparent ETCD corruption / database-loading bug
- Run resync-after manager on every controller startup

## [1.21.0-rc.1] - 2023-02-28

### Added

- query-size-info API as a better version of query-max-value-size API
- Linstor now automatically sets the resync-after property for drbd
resources, grouped by storage pools
- Added automatic rs-discard-granularity management based on lsblk's
DISC-GRAN

### Changed

- Added `zfs list` check for ZFS support to ensure that the zfs-utils are
also installed, not just the kmod
- Use recommended command sequence for SED initialization and improve error
recover

### Fixed

- Fixed DRBD size calculations with non-default peer slots
- Fixed aborting Snapshot procedure (make sure resume-io is executed)
- Fixed AutoSnapshot scheduling bug
- Fixed rollback after clearing entire PropsContainers
- Fixed that too many concurrent Snapshots led to unnecessarily long
suspend-io state
- Fixed resource getting activated instead of deactivated in shared-sp

https://pkg.linbit.com//downloads/linstor/linstor-server-1.21.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000d6dafa05f6e05045
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Here is the final release of linsto=
r-server 1.21.0.</div><div>Compared to the RC only a few fixes made it into=
 the final and</div><div>I attached both changelogs for completeness.</div>=
<div><br></div><div>## [1.21.0] - 2023-03-14<br><br>### Changed<br><br>- Ad=
ded more details (primary keys) for database-loading exceptions<br>- ZFS to=
ol checker now uses `zfs -?`<br><br>### Fixed<br><br>- Fixed apparent ETCD =
corruption / database-loading bug<br>- Run resync-after manager on every co=
ntroller startup<br><br>## [1.21.0-rc.1] - 2023-02-28<br><br>### Added<br><=
br>- query-size-info API as a better version of query-max-value-size API<br=
>- Linstor now automatically sets the resync-after property for drbd resour=
ces, grouped by storage pools<br>- Added automatic rs-discard-granularity m=
anagement based on lsblk&#39;s DISC-GRAN<br><br>### Changed<br><br>- Added =
`zfs list` check for ZFS support to ensure that the zfs-utils are also inst=
alled, not just the kmod<br>- Use recommended command sequence for SED init=
ialization and improve error recover<br><br>### Fixed<br><br>- Fixed DRBD s=
ize calculations with non-default peer slots<br>- Fixed aborting Snapshot p=
rocedure (make sure resume-io is executed)<br>- Fixed AutoSnapshot scheduli=
ng bug<br>- Fixed rollback after clearing entire PropsContainers<br>- Fixed=
 that too many concurrent Snapshots led to unnecessarily long suspend-io st=
ate<br>- Fixed resource getting activated instead of deactivated in shared-=
sp<br></div><div><br></div><div><div><a href=3D"https://pkg.linbit.com//dow=
nloads/linstor/linstor-server-1.21.0.tar.gz">https://pkg.linbit.com//downlo=
ads/linstor/linstor-server-1.21.0.tar.gz</a><br></div><div><br></div><div><=
br></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.n=
et/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D=
"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</=
a></div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></div></d=
iv></div></div>

--000000000000d6dafa05f6e05045--
