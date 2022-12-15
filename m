Return-Path: <rene.peinthor@linbit.com>
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com
	[209.85.128.172])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 19073422111
	for <drbd-announce@lists.linbit.com>;
	Thu, 15 Dec 2022 07:33:51 +0100 (CET)
Received: by mail-yw1-f172.google.com with SMTP id
	00721157ae682-3b5d9050e48so29117037b3.2
	for <drbd-announce@lists.linbit.com>;
	Wed, 14 Dec 2022 22:33:51 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 15 Dec 2022 07:33:40 +0100
Message-ID: <CAHmn2DMPvU7QUsueWDxBLt=ZHcUX2+qvxyi69RPa7aqdfQkzBA@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000043431c05efd809b0"
Subject: [DRBD-announce] linstor-server 1.20.2 release
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

--00000000000043431c05efd809b0
Content-Type: text/plain; charset="UTF-8"

Hi!

There was a bug with the orphan objects removal, which prevented the
controller from starting,
so here is a quick hotfix release, with this issue fixed.

Here are the changes:

### Fixed

- Can now use snapshot restore on a snapshot created by a backup create
- Fixed migration of orphan objects

https://pkg.linbit.com//downloads/linstor/linstor-server-1.20.2.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--00000000000043431c05efd809b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>There was a bug with the=
 orphan objects removal, which prevented the controller from starting,</div=
><div>so here is a quick hotfix release, with this issue fixed.</div><div><=
br></div><div>Here are the changes:</div><div><br></div><div>### Fixed<br><=
br>- Can now use snapshot restore on a snapshot created by a backup create<=
br>- Fixed migration of orphan objects<br></div><div><br></div><div><a href=
=3D"https://pkg.linbit.com//downloads/linstor/linstor-server-1.20.2.tar.gz"=
>https://pkg.linbit.com//downloads/linstor/linstor-server-1.20.2.tar.gz</a>=
<br></div><div><br></div><div><br></div><div><div><div><div>Linstor PPA:<br=
><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stac=
k" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+arch=
ive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,<br=
></div><div>Rene</div></div></div></div>

--00000000000043431c05efd809b0--
