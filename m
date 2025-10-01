Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
	[209.85.216.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 314491608FF
	for <drbd-announce@lists.linbit.com>;
	Wed,  1 Oct 2025 10:41:37 +0200 (CEST)
Received: by mail-pj1-f42.google.com with SMTP id
	98e67ed59e1d1-330b4739538so7457083a91.3
	for <drbd-announce@lists.linbit.com>;
	Wed, 01 Oct 2025 01:41:37 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 1 Oct 2025 10:41:24 +0200
Message-ID: <CAHmn2DP7hE4Q4CpOgxboZ6d8mquKioKt2Zc_tSEZ2kYCv458iw@mail.gmail.com>
Subject: linstor-server 1.32.2 release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000155170064014d666"
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

--000000000000155170064014d666
Content-Type: text/plain; charset="UTF-8"

Hi!

Apparently 1.32.0 introduced a deadlock in the Controller that is fixed
with this version,
we only got reports that this is happening with Mysql/Mariadb databases.
Release contains also some smaller features and will most likely be the
last 1.32.x release,
as the first 1.33.0-rc is right around the corner.

## NOTE
With this release we also announce that we will remove etcd database
support with Linstor 1.34.0, until then you will have time to migrate to
(SQL or k8s-CRD) databases.

## [1.32.2] - 2025-10-01

### Changed

- safety-snap: shorten safety-snap id length, to stay in LVM name limit

### Fixed

- Fixed potential deadlock on the controller introduced with 1.32.0
- Clone api: errors are now indicated with HTTP status code 500
- Fixed un-deletable failed clone resources
- Res file regenerate check wasn't working anymore because of added header
data

https://pkg.linbit.com//downloads/linstor/linstor-server-1.32.2.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000155170064014d666
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Apparently=C2=A01.32.0 introduced a=
 deadlock in the Controller that is fixed with this version,</div><div>we o=
nly got reports that this is happening with Mysql/Mariadb databases.</div><=
div>Release contains also some smaller features and will most likely be the=
 last 1.32.x release,</div><div>as the first 1.33.0-rc is right around the =
corner.</div><div><br></div><div>## NOTE</div><div>With this release we als=
o announce that we will remove etcd database support with Linstor 1.34.0, u=
ntil then you will have time to migrate to (SQL or k8s-CRD) databases.=C2=
=A0</div><div></div><div><br></div><div>## [1.32.2] - 2025-10-01<br><br>###=
 Changed<br><br>- safety-snap: shorten safety-snap id length, to stay in LV=
M name limit<br><br>### Fixed<br><br>- Fixed potential deadlock on the cont=
roller introduced with 1.32.0<br>- Clone api: errors are now indicated with=
 HTTP status code 500<br>- Fixed un-deletable failed clone resources<br>- R=
es file regenerate check wasn&#39;t working anymore because of added header=
 data</div><div><br></div><div><div><a href=3D"https://pkg.linbit.com//down=
loads/linstor/linstor-server-1.32.2.tar.gz">https://pkg.linbit.com//downloa=
ds/linstor/linstor-server-1.32.2.tar.gz</a><br></div><div><br></div><div><b=
r></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.ne=
t/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"=
_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a=
></div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></div></di=
v></div></div>

--000000000000155170064014d666--
