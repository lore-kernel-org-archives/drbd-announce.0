Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
	[209.85.215.170])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 7148342010D
	for <drbd-announce@lists.linbit.com>;
	Wed, 28 Feb 2024 13:47:16 +0100 (CET)
Received: by mail-pg1-f170.google.com with SMTP id
	41be03b00d2f7-5cfcf509fbdso2493428a12.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 28 Feb 2024 04:47:16 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 28 Feb 2024 13:47:04 +0100
Message-ID: <CAHmn2DNZ0OJjr4my4FySeodnOO3Fyi+e31TeH=3oW++o98gpbQ@mail.gmail.com>
Subject: linstor-server 1.26.2 release
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000d4e5d70612708ad8"
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

--000000000000d4e5d70612708ad8
Content-Type: text/plain; charset="UTF-8"

Hi!

Another, this time smaller patch release, with just 2 minor fixes.

## [1.26.2] - 2024-02-28

### Changed

- Snapshots and resources are processed independently of each other

### Fixed

- Luks: Properly cleanup LVs when deleting without having entered the
passphrase

https://pkg.linbit.com//downloads/linstor/linstor-server-1.26.2.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000d4e5d70612708ad8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Another, this time smaller patch re=
lease, with just 2 minor fixes.</div><div><br></div><div>## [1.26.2] - 2024=
-02-28<br><br>### Changed<br><br>- Snapshots and resources are processed in=
dependently of each other<br><br>### Fixed<br><br>- Luks: Properly cleanup =
LVs when deleting without having entered the passphrase<br></div><div><br><=
/div><div><div><a href=3D"https://pkg.linbit.com//downloads/linstor/linstor=
-server-1.26.2.tar.gz">https://pkg.linbit.com//downloads/linstor/linstor-se=
rver-1.26.2.tar.gz</a><br></div><div><br></div><div><br></div><div><div><di=
v><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ub=
untu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launc=
hpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div><br=
></div><div>Cheers,<br></div><div>Rene</div></div></div></div></div>

--000000000000d4e5d70612708ad8--
