Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 5B1124202D8
	for <drbd-announce@lists.linbit.com>;
	Fri, 27 Aug 2021 13:40:09 +0200 (CEST)
Received: by mail-ed1-f45.google.com with SMTP id z10so9435891edb.6
	for <drbd-announce@lists.linbit.com>;
	Fri, 27 Aug 2021 04:40:09 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Fri, 27 Aug 2021 13:39:58 +0200
Message-ID: <CAHmn2DNHgZPvTz8LgigX6i=-CR0oaY9uNmrKbDAX+XVnZ1=Ugw@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000000d0b7205ca88f26e"
Subject: [DRBD-announce] linstor-server release candidate 1.15.0-rc.1
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

--0000000000000d0b7205ca88f26e
Content-Type: text/plain; charset="UTF-8"

Hi!

This release candidate is packed with 3 new features that need some
testing, before we call it final.

First we added backup(snapshot) shipping to Amazon S3 (or compatible
storage providers. e.g. minio) and additionally to that, also snapshot
shipping to another separate Linstor cluster.

All commands for that are in the new 1.10.0 client release (subcommands:
remote and backup)

Another feature added is clone/copy(with data) of existing resource
definitions, this works by creating the same resources on nodes and then
using the best storage provider methods to also copy the data. (LVM -> dd,
LVM-Thin -> snapshots, ZFS -> send/recv).

This functionality is under the resource-definition command clone.

linstor-server 1.15.0.rc1
-------------------------
 * Added backup shipping to S3
 * Added backup shipping to another Linstor cluster
 * Added clone/copy resource definition
 * API-Version 1.10.0

https://pkg.linbit.com//downloads/linstor/linstor-server-1.15.0-rc.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000000d0b7205ca88f26e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>This release candidate=
=C2=A0is packed with 3 new features that need some testing, before we call =
it final.</div><div><br></div><div>First we added backup(snapshot) shipping=
 to Amazon S3 (or compatible storage providers. e.g. minio) and additionall=
y to that, also snapshot shipping to another separate Linstor cluster.</div=
><div><br></div><div>All commands for that are in the new 1.10.0 client rel=
ease (subcommands: remote and backup)</div><div><br></div><div>Another feat=
ure added is clone/copy(with data) of existing resource definitions, this w=
orks by creating the same resources on nodes and then using the best storag=
e provider methods to also copy the data. (LVM -&gt; dd, LVM-Thin -&gt; sna=
pshots, ZFS -&gt; send/recv).</div><div><br></div><div>This functionality i=
s under the resource-definition command clone.</div><div><br></div><div><fo=
nt face=3D"monospace">linstor-server 1.15.0.rc1<br>------------------------=
-<br>=C2=A0* Added backup shipping to S3<br>=C2=A0* Added backup shipping t=
o another Linstor cluster<br>=C2=A0* Added clone/copy resource definition<b=
r>=C2=A0* API-Version 1.10.0</font><br></div><div><br></div><div><a href=3D=
"https://pkg.linbit.com//downloads/linstor/linstor-server-1.15.0-rc.1.tar.g=
z">https://pkg.linbit.com//downloads/linstor/linstor-server-1.15.0-rc.1.tar=
.gz</a><br></div><div><br></div><div><br></div><div><div><div><div>Linstor =
PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drb=
d9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbi=
t/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div>Che=
ers,<br></div><div>Rene</div></div></div></div>

--0000000000000d0b7205ca88f26e--
