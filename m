Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
	[209.85.216.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 03F464203BF
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Apr 2024 20:07:46 +0200 (CEST)
Received: by mail-pj1-f48.google.com with SMTP id
	98e67ed59e1d1-2aa0f3625aeso318440a91.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Apr 2024 11:07:46 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 25 Apr 2024 20:07:33 +0200
Message-ID: <CAHmn2DNms8nApBfTqFfVTv_ODWPCYQqnHO0DVNCWHGuv+Fmbsg@mail.gmail.com>
Subject: linstor-server 1.27.1 release
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000ff60310616efa902"
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

--000000000000ff60310616efa902
Content-Type: text/plain; charset="UTF-8"

Hi!

This release brings support for java-21, which is now default shipped with
ubuntu-noble.
Also some fixes for e.g. zfs 2.2 and user set drbd verify-algorithm.

## [1.27.1] - 2024-04-25

### Added

- Support for java-21

### Changed

- Freespace calc: Snapshots only reserve allocated size now instead of
volume size
- resource-definition modify now, only warns if a satellite is offline
- AutoVerifyAlgo: allow to use algorithm name additionally to the specific
implementation
- ZFS: try to determine default volblocksize

### Fixed

- Deleting a remote can now be safely done even if there are active
shippings to said remote
- MakeAvail: trigger update satellite if only FLAGS changed
- Resource delete: Don't check user set verify-algo if last resource
deleted.
- If mkfs failed, resources have not been demoted(secondary) and couldn't
easily be deleted afterward
- Fixed incorrect least common multiple call when calculating
AllocationGranularity

https://pkg.linbit.com//downloads/linstor/linstor-server-1.27.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000ff60310616efa902
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>This release=C2=A0brings support fo=
r java-21, which is now default shipped with ubuntu-noble.</div><div>Also s=
ome fixes for e.g. zfs 2.2 and user set drbd verify-algorithm.</div><div><b=
r></div><div>## [1.27.1] - 2024-04-25<br><br>### Added<br><br>- Support for=
 java-21<br><br>### Changed<br><br>- Freespace calc: Snapshots only reserve=
 allocated size now instead of volume size<br>- resource-definition modify =
now, only warns if a satellite is offline<br>- AutoVerifyAlgo: allow to use=
 algorithm name additionally to the specific implementation<br>- ZFS: try t=
o determine default volblocksize<br><br>### Fixed<br><br>- Deleting a remot=
e can now be safely done even if there are active shippings to said remote<=
br>- MakeAvail: trigger update satellite if only FLAGS changed<br>- Resourc=
e delete: Don&#39;t check user set verify-algo if last resource deleted.<br=
>- If mkfs failed, resources have not been demoted(secondary) and couldn&#3=
9;t easily be deleted afterward<br>- Fixed incorrect least common multiple =
call when calculating AllocationGranularity<br></div><div><br></div><div><d=
iv><a href=3D"https://pkg.linbit.com//downloads/linstor/linstor-server-1.27=
.1.tar.gz" target=3D"_blank">https://pkg.linbit.com//downloads/linstor/lins=
tor-server-1.27.1.tar.gz</a><br></div><div><br></div><div><br></div><div><d=
iv><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+arch=
ive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https:/=
/launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><d=
iv><br></div><div>Cheers,<br></div><div>Rene</div></div></div></div></div>

--000000000000ff60310616efa902--
