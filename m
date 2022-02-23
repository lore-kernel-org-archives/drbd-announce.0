Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 0D759420177
	for <drbd-announce@lists.linbit.com>;
	Wed, 23 Feb 2022 15:44:27 +0100 (CET)
Received: by mail-ed1-f41.google.com with SMTP id x5so44450118edd.11
	for <drbd-announce@lists.linbit.com>;
	Wed, 23 Feb 2022 06:44:27 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 23 Feb 2022 15:44:16 +0100
Message-ID: <CAHmn2DO2yoadKTF+9O4KbvP+vyptq9mpFxLJJAsgQ3oRmxLQsg@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000009d3ed805d8b080fb"
Subject: [DRBD-announce] linstor-server release candidate 1.18.0-rc.3
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

--0000000000009d3ed805d8b080fb
Content-Type: text/plain; charset="UTF-8"

Hi!

We already arrived at rc.3 as we internally noted some problems with
packages and had to redo them.

This version brings performance improvements and fixes for the Kubernetes
CRD database backend, but the backend still needs some testing. So be aware
that it might not be ready yet for production.
Node related events (create, delete, evicted, restored, ...) can now be
listened to via server sent events.

linstor-server 1.18.0-rc.3
--------------------------
 * Kubernetes CRD fixes and performance improvements
 * Cryptsetup is limited to 256MB during format
 * New REST-API to create a valid H2 embedded database backup
 * Better enabling of auto-quorum, tiebreaker recreation
 * Clone ZFS has a new option to use zfs clone instead of zfs send/recv
 * ZFS allocated size uses now REFER instead of USED for volumes
 * Added resource sync status API
 * Fixes in backup shipping
 * API-Version 1.13.0

https://pkg.linbit.com//downloads/linstor/linstor-server-1.18.0-rc.3.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000009d3ed805d8b080fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>We already arrived at rc=
.3 as we internally noted some problems with packages and had to redo them.=
</div><div><br></div><div>This version brings performance improvements and =
fixes for the Kubernetes CRD database backend, but the backend still needs =
some testing. So be aware that it might not be ready yet for production.</d=
iv><div>Node related events (create, delete, evicted, restored, ...) can no=
w be listened to via server sent events.</div><div><br></div><div><font fac=
e=3D"monospace">linstor-server 1.18.0-rc.3<br>--------------------------<br=
>=C2=A0* Kubernetes CRD=C2=A0fixes and performance improvements<br>=C2=A0* =
Cryptsetup is limited to 256MB during format<br>=C2=A0* New REST-API to cre=
ate a valid H2 embedded database backup<br>=C2=A0* Better enabling=C2=A0of =
auto-quorum, tiebreaker recreation<br>=C2=A0* Clone ZFS has a new option to=
 use zfs clone instead of zfs send/recv<br>=C2=A0* ZFS allocated size uses =
now REFER instead of USED for volumes</font></div><div><font face=3D"monosp=
ace">=C2=A0* Added resource sync status API<br>=C2=A0* Fixes in backup ship=
ping<br>=C2=A0* API-Version 1.13.0</font><br></div><div><br></div><div><a h=
ref=3D"https://pkg.linbit.com//downloads/linstor/linstor-server-1.18.0-rc.3=
.tar.gz">https://pkg.linbit.com//downloads/linstor/linstor-server-1.18.0-rc=
.3.tar.gz</a><br></div><div><br></div><div><br></div><div><div><div><div>Li=
nstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linb=
it-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/=
~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><d=
iv>Cheers,<br></div><div>Rene</div></div></div></div>

--0000000000009d3ed805d8b080fb--
