Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 20E004205A8
	for <drbd-announce@lists.linbit.com>;
	Mon,  5 Jul 2021 15:01:16 +0200 (CEST)
Received: by mail-wr1-f52.google.com with SMTP id i8so22070167wrc.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 05 Jul 2021 06:01:16 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 5 Jul 2021 15:01:05 +0200
Message-ID: <CADGDV=U0oWS75gZVunrM2tTjvsGRRhS2rd7kpLyeVsZ3uGaSBA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000096814c05c65fe6a7"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.30-0rc1 & drbd-9.2.3-rc.1
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

--00000000000096814c05c65fe6a7
Content-Type: text/plain; charset="UTF-8"

Hello,

DRBD enters the next one-week release-candidate phase.

This release contains a small number on fixes on the 9.0 branch. It feels
like
we are reaching the bottom of the bug-pool.

The 9.1 branch has a few specific fixes, also showing that it gets picked up
by more users.

This is a release candidate, please help testing it.

9.0.30-0rc1 (api:genl2/proto:86-120/transport:14)
--------
 * fix a crash when drbd-9 node gets connected to a drbd-8.4 node, the
   regression was introduced between 9.0.25 and 9.0.26
 * A improved approach to serialize rsyncs from multiple sources; the
previous
   one could cause wrong accounting for online verify
 * fix a race condition that could cause resync operations to stall when the
   completion of one resync allows another one to proceed
 * fix a race condition that could cause an online verify operation to not
   terminate under specific conditions (corking enabled no other IO)
 * fix locking of drbd_devices idr that caused (very rarely) create/remove
   minor to fail

9.1.3-rc.1 (api:genl2/proto:110-120/transport:17)
--------
 * merged all fixes from drbd-9.0.30-0rc1
 * fix a corner-case NULL deref in the lockless buffer pages handling; the
   regression was introduced with 9.1.0 (released Feb 2021); To my knowledge
   it took 6 months until someone triggered it for the first time
 * fix sending a P_PEERS_IN_SYNC packet into a fresh connection (before
   handshake packets); this problem was introduced when the drbd-8.x
   compatibility code was removed
 * remove sending a DRBD-barrier packet when processing a REQ_PREFLUSH
   request, that improves IO-depth and improves performance with that


https://pkg.linbit.com/downloads/drbd/9.0/drbd-9.0.30-0rc1.tar.gz
https://github.com/LINBIT/drbd/commit/d8964dbf78536571cc20d2e4b1b5a76e5c7e26f2

https://pkg.linbit.com/downloads/drbd/9/drbd-9.1.3-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/289398e615a5fdf997cbabdf9ca48981388032b9

--00000000000096814c05c65fe6a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>DRBD enters the next one-week re=
lease-candidate phase.<br><br>This release contains a small number on fixes=
 on the 9.0 branch. It feels like</div><div>we are reaching the bottom of t=
he bug-pool.<br><br>The 9.1 branch has a few specific fixes, also showing t=
hat it gets picked up</div><div>by more users.</div><div><br></div><div>Thi=
s is a release candidate, please help testing it.<br></div><div><br>9.0.30-=
0rc1 (api:genl2/proto:86-120/transport:14)<br>--------<br>=C2=A0* fix a cra=
sh when drbd-9 node gets connected to a drbd-8.4 node, the<br>=C2=A0 =C2=A0=
regression was introduced between 9.0.25 and 9.0.26<br>=C2=A0* A improved a=
pproach to serialize rsyncs from multiple sources; the previous<br>=C2=A0 =
=C2=A0one could cause wrong accounting for online verify<br>=C2=A0* fix a r=
ace condition that could cause resync operations to stall when the<br>=C2=
=A0 =C2=A0completion of one resync allows another one to proceed<br>=C2=A0*=
 fix a race condition that could cause an online verify operation to not<br=
>=C2=A0 =C2=A0terminate under specific conditions (corking enabled no other=
 IO)<br>=C2=A0* fix locking of drbd_devices idr that caused (very rarely) c=
reate/remove<br>=C2=A0 =C2=A0minor to fail<br></div><div><br></div><div>9.1=
.3-rc.1 (api:genl2/proto:110-120/transport:17)<br>--------<br>=C2=A0* merge=
d all fixes from drbd-9.0.30-0rc1<br>=C2=A0* fix a corner-case NULL deref i=
n the lockless buffer pages handling; the<br>=C2=A0 =C2=A0regression was in=
troduced with 9.1.0 (released Feb 2021); To my knowledge<br>=C2=A0 =C2=A0it=
 took 6 months until someone triggered it for the first time<br>=C2=A0* fix=
 sending a P_PEERS_IN_SYNC packet into a fresh connection (before<br>=C2=A0=
 =C2=A0handshake packets); this problem was introduced when the drbd-8.x<br=
>=C2=A0 =C2=A0compatibility code was removed<br>=C2=A0* remove sending a DR=
BD-barrier packet when processing a REQ_PREFLUSH<br>=C2=A0 =C2=A0request, t=
hat improves IO-depth and improves performance with that<br><br></div><div>=
<br></div><div><a href=3D"https://pkg.linbit.com/downloads/drbd/9.0/drbd-9.=
0.30-0rc1.tar.gz">https://pkg.linbit.com/downloads/drbd/9.0/drbd-9.0.30-0rc=
1.tar.gz</a><br></div><div><a href=3D"https://github.com/LINBIT/drbd/commit=
/d8964dbf78536571cc20d2e4b1b5a76e5c7e26f2">https://github.com/LINBIT/drbd/c=
ommit/d8964dbf78536571cc20d2e4b1b5a76e5c7e26f2</a><br></div><div><br></div>=
<div><div><a href=3D"https://pkg.linbit.com/downloads/drbd/9/drbd-9.1.3-rc.=
1.tar.gz">https://pkg.linbit.com/downloads/drbd/9/drbd-9.1.3-rc.1.tar.gz</a=
><br></div><div><a href=3D"https://github.com/LINBIT/drbd/commit/289398e615=
a5fdf997cbabdf9ca48981388032b9">https://github.com/LINBIT/drbd/commit/28939=
8e615a5fdf997cbabdf9ca48981388032b9</a></div></div></div>

--00000000000096814c05c65fe6a7--
