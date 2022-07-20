Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
	[209.85.208.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 165F94201D1
	for <drbd-announce@lists.linbit.com>;
	Wed, 20 Jul 2022 10:52:26 +0200 (CEST)
Received: by mail-ed1-f52.google.com with SMTP id m16so22850852edb.11
	for <drbd-announce@lists.linbit.com>;
	Wed, 20 Jul 2022 01:52:26 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 20 Jul 2022 10:52:15 +0200
Message-ID: <CAHmn2DN1vqbdF77xnUE1jTKnU_Q6-P0xd38fdph3S_QZEtq9Hg@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000637b7005e438b8a0"
Subject: [DRBD-announce] linstor-server 1.19.0
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

--000000000000637b7005e438b8a0
Content-Type: text/plain; charset="UTF-8"

Hi!

This is the final release of 1.19.0, a few small fixes are the only change
between the RC and this. Rest of the mail is a copy of the RC announcement.

This release brings a new scheduled backup shipping feature.
This means you can now create cron-like scheduled Linstor
backups(Full/Incremental) that can be shipped to S3 or another linstor
cluster.

Basically you create a schedule with
linstor schedule create ...
and then enable it for a backup:
linstor backup schedule enable ...

More documentation should be in the LINSTOR guide at the end of the week.

linstor-server 1.19.0
---------------------
 * Added scheduled backup shipping
 * CRD backend fixes/improvements
 * SOS-Report support now sending large files
 * SOS-Report added more filters
 * Physical-storage api use LVM VDO commands
 * Fix user DRBD verify algorithm list reading/setting
 * Attempt to fix stuck volume resizes
 * Fix Postgresql external files updates
 * Fix support for Google/DigitalOcean S3 remotes
 * Autoplace: better tiebreaker with autoplace constraints
 * API Version 1.14.0

https://pkg.linbit.com//downloads/linstor/linstor-server-1.19.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000637b7005e438b8a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>This is the final releas=
e of 1.19.0, a few small fixes are the only change between the RC and this.=
 Rest of the mail is a copy of the RC announcement.</div><div><br></div><di=
v>This release brings a new scheduled backup shipping feature.</div><div>Th=
is means you can now create cron-like scheduled Linstor backups(Full/Increm=
ental) that can be shipped to S3 or another linstor cluster.</div><div><br>=
</div><div>Basically you create a schedule with</div><div>linstor schedule =
create ...</div><div>and then enable it for a backup:</div><div>linstor bac=
kup schedule enable ...</div><div><br></div><div>More documentation should =
be in the LINSTOR guide at the end of the week.</div><div><br></div><div><f=
ont face=3D"monospace">linstor-server 1.19.0<br>---------------------<br>=
=C2=A0* Added scheduled backup shipping<br>=C2=A0* CRD backend fixes/improv=
ements<br>=C2=A0* SOS-Report support now sending large files<br>=C2=A0* SOS=
-Report added more filters<br>=C2=A0* Physical-storage api use LVM VDO comm=
ands<br>=C2=A0* Fix user DRBD verify algorithm list reading/setting<br>=C2=
=A0* Attempt to fix stuck volume resizes<br>=C2=A0* Fix Postgresql external=
 files updates<br>=C2=A0* Fix support for Google/DigitalOcean S3 remotes<br=
>=C2=A0* Autoplace: better tiebreaker with autoplace constraints<br>=C2=A0*=
 API Version 1.14.0</font><br></div><div><br></div><div><a href=3D"https://=
pkg.linbit.com//downloads/linstor/linstor-server-1.19.0.tar.gz">https://pkg=
.linbit.com//downloads/linstor/linstor-server-1.19.0.tar.gz</a><br></div><d=
iv><br></div><div><br></div><div><div><div><div>Linstor PPA:<br><a href=3D"=
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"no=
referrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/l=
inbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,<br></div><div>=
Rene</div></div></div></div>

--000000000000637b7005e438b8a0--
