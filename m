Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
	[209.85.208.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 29D1E420004
	for <drbd-announce@lists.linbit.com>;
	Thu, 23 Sep 2021 10:38:51 +0200 (CEST)
Received: by mail-ed1-f53.google.com with SMTP id s17so2376419edd.8
	for <drbd-announce@lists.linbit.com>;
	Thu, 23 Sep 2021 01:38:51 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 23 Sep 2021 10:38:41 +0200
Message-ID: <CAHmn2DMwUdzEgHp4pXDqZDYvCXXyMWz5B_rsAP0YBY0J9oug3g@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000006da45e05cca58f0b"
Subject: [DRBD-announce] linstor-server release 1.15.0
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

--0000000000006da45e05cca58f0b
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is the final release of 1.15.0, we found a few more bugs since the
last rc.2.
Most of them are related to the backup shipping, but also some bugs found
in other areas.


linstor-server 1.15.0
---------------------
 * Added backup shipping to S3
 * Added backup shipping to another Linstor cluster
 * Added clone/copy resource definition
 * Evict: do not delete last diskful
 * Evict: inactive resource instead of delete
 * BCache: Fix snapshot support
 * Etcd: fixed incorrect rollback/update-delete namespace
 * Drbd: do not set discard-zeroes-if-aligned on LVM
 * Satellites: force update on fullsync, fixes satellite not reacting after
reconnects
 * API-Version 1.10.2

https://pkg.linbit.com//downloads/linstor/linstor-server-1.15.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000006da45e05cca58f0b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Here is the final releas=
e of 1.15.0, we found a few more bugs since the last rc.2.</div><div>Most o=
f them are related to the backup shipping, but also some bugs found in othe=
r areas.</div><div><br></div><div><br></div><div><font face=3D"monospace">l=
instor-server 1.15.0<br>---------------------<br>=C2=A0* Added backup shipp=
ing to S3<br>=C2=A0* Added backup shipping to another Linstor cluster<br>=
=C2=A0* Added clone/copy resource definition<br>=C2=A0* Evict: do not delet=
e last diskful<br>=C2=A0* Evict: inactive resource instead of delete<br>=C2=
=A0* BCache: Fix snapshot support<br>=C2=A0* Etcd: fixed incorrect rollback=
/update-delete namespace<br>=C2=A0* Drbd: do not set discard-zeroes-if-alig=
ned on LVM<br>=C2=A0* Satellites: force update on fullsync, fixes satellite=
 not reacting after reconnects<br>=C2=A0* API-Version 1.10.2</font><br></di=
v><div><br></div><div><a href=3D"https://pkg.linbit.com//downloads/linstor/=
linstor-server-1.15.0.tar.gz">https://pkg.linbit.com//downloads/linstor/lin=
stor-server-1.15.0.tar.gz</a><br></div><div><br></div><div><br></div><div><=
div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+arc=
hive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https:=
//launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><=
div><br></div><div>Cheers,<br></div><div>Rene</div></div></div></div>

--0000000000006da45e05cca58f0b--
