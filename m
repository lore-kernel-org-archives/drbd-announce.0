Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 369594201E1
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Mar 2022 10:54:40 +0100 (CET)
Received: by mail-ed1-f49.google.com with SMTP id j25so10037114edj.11
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Mar 2022 02:54:40 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 15 Mar 2022 10:53:29 +0100
Message-ID: <CAHmn2DPGM6AEaGVTu0jGcaEvN0zN=b99uoqHt_sjDGG0-ndsuQ@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000008ca68905da3ec54c"
Subject: [DRBD-announce] linstor-server release 1.18.0
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

--0000000000008ca68905da3ec54c
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is the final release of version 1.18.0, it is nearly the same as rc3
with a few more CRD fixes. So the rest of the mail is nearly a copy of the
rc3:

This version brings performance improvements and fixes for the Kubernetes
CRD database backend, but the backend still needs some testing. So be aware
that it might not be ready yet for production.
Node related events (create, delete, evicted, restored, ...) can now be
listened to via server sent events.

linstor-server 1.18.0
--------------------------
 * Kubernetes CRD fixes and performance improvements
 * Cryptsetup is limited to 256MB during format
 * New REST-API to create a valid H2 embedded database backup
 * Better enabling of auto-quorum, tiebreaker recreation
 * Clone ZFS has a new option to use zfs clone instead of zfs send/recv
 * ZFS allocated size uses now REFER instead of USED for volumes
 * Added resource sync status API
 * Fixes in backup shipping
 * Sentry client library updated
 * API-Version 1.13.0

https://pkg.linbit.com//downloads/linstor/linstor-server-1.18.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000008ca68905da3ec54c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Here is the final releas=
e of version 1.18.0, it is nearly the same as rc3 with a few more CRD fixes=
. So the rest of the mail is nearly a copy of the rc3:</div><div><br></div>=
<div>This version brings performance improvements and fixes for the Kuberne=
tes CRD database backend, but the backend still needs some testing. So be a=
ware that it might not be ready yet for production.</div><div>Node related =
events (create, delete, evicted, restored, ...) can now be listened to via =
server sent events.</div><div><br></div><div><font face=3D"monospace">linst=
or-server 1.18.0<br>--------------------------<br>=C2=A0* Kubernetes CRD=C2=
=A0fixes and performance improvements<br>=C2=A0* Cryptsetup is limited to 2=
56MB during format<br>=C2=A0* New REST-API to create a valid H2 embedded da=
tabase backup<br>=C2=A0* Better enabling=C2=A0of auto-quorum, tiebreaker re=
creation<br>=C2=A0* Clone ZFS has a new option to use zfs clone instead of =
zfs send/recv<br>=C2=A0* ZFS allocated size uses now REFER instead of USED =
for volumes<br>=C2=A0* Added resource sync status API<br>=C2=A0* Fixes in b=
ackup shipping<br>=C2=A0* Sentry client library updated<br>=C2=A0* API-Vers=
ion 1.13.0</font><br></div><div><br></div><div><a href=3D"https://pkg.linbi=
t.com//downloads/linstor/linstor-server-1.18.0.tar.gz">https://pkg.linbit.c=
om//downloads/linstor/linstor-server-1.18.0.tar.gz</a><br></div><div><br></=
div><div><br></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://l=
aunchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer"=
 target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drb=
d9-stack</a></div></div><div><br></div><div>Cheers,<br></div><div>Rene</div=
></div></div></div>

--0000000000008ca68905da3ec54c--
