Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
	[209.85.218.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 72B34420667
	for <drbd-announce@lists.linbit.com>;
	Wed,  6 Jul 2022 17:12:07 +0200 (CEST)
Received: by mail-ej1-f49.google.com with SMTP id ay16so27672373ejb.6
	for <drbd-announce@lists.linbit.com>;
	Wed, 06 Jul 2022 08:12:07 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 6 Jul 2022 17:11:56 +0200
Message-ID: <CAHmn2DNFbP-BzJOb+JPZG5C6APEqmbK=PaXqZ9jmxXg0T6hEcQ@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000070f9f305e32464dd"
Subject: [DRBD-announce] linstor-server release candidate 1.19.0-rc.1
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

--00000000000070f9f305e32464dd
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is the first release candidate of Linstor 1.19.0, which brings a new
scheduled backup shipping feature.
This means you can now create cron-like scheduled Linstor
backups(Full/Incremental) that can be shipped to S3 or another linstor
cluster.

Basically you create a schedule with
linstor schedule create ...
and then enable it for a backup:
linstor backup schedule enable ...

More/Better documentation will be available in the user guide for the final
release.

linstor-server 1.19.0-rc.1
--------------------------
 * Added scheduled backup shipping
 * CRD backend fixes/improvements
 * SOS-Report support now sending large files
 * SOS-Report added more filters
 * Physical-storage api use LVM VDO commands
 * Fix user DRBD verify algorithm list reading/setting
 * Attempt to fix stuck volume resizes
 * Fix Postgresql external files updates
 * API Version 1.14.0

https://pkg.linbit.com//downloads/linstor/linstor-server-1.19.0-rc.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--00000000000070f9f305e32464dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Here is the first releas=
e candidate of Linstor 1.19.0, which brings a new scheduled backup shipping=
 feature.</div><div>This means you can now create cron-like scheduled Linst=
or backups(Full/Incremental) that can be shipped to S3 or another linstor c=
luster.</div><div><br></div><div>Basically you create a schedule with</div>=
<div>linstor schedule create ...</div><div>and then enable it for a backup:=
</div><div>linstor backup schedule enable ...</div><div><br></div><div>More=
/Better documentation=C2=A0will be available in the user guide for the fina=
l release.</div><div><br></div><div><font face=3D"monospace">linstor-server=
 1.19.0-rc.1<br>--------------------------<br>=C2=A0* Added scheduled backu=
p shipping<br>=C2=A0* CRD backend fixes/improvements<br>=C2=A0* SOS-Report =
support now sending large files<br>=C2=A0* SOS-Report added more filters<br=
>=C2=A0* Physical-storage api use LVM VDO commands<br>=C2=A0* Fix user DRBD=
 verify algorithm list reading/setting<br>=C2=A0* Attempt to fix stuck volu=
me resizes<br>=C2=A0* Fix Postgresql external files updates<br>=C2=A0* API =
Version 1.14.0</font><br></div><div><br></div><div><a href=3D"https://pkg.l=
inbit.com//downloads/linstor/linstor-server-1.19.0-rc.1.tar.gz">https://pkg=
.linbit.com//downloads/linstor/linstor-server-1.19.0-rc.1.tar.gz</a><br></d=
iv><div><br></div><div><br></div><div><div><div><div>Linstor PPA:<br><a hre=
f=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=
=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/ub=
untu/linbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,<br></div=
><div>Rene</div></div></div></div>

--00000000000070f9f305e32464dd--
