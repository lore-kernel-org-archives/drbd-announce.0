Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 18DE1420621
	for <drbd-announce@lists.linbit.com>;
	Tue,  7 Sep 2021 16:15:55 +0200 (CEST)
Received: by mail-ed1-f46.google.com with SMTP id g21so14149088edw.4
	for <drbd-announce@lists.linbit.com>;
	Tue, 07 Sep 2021 07:15:55 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 7 Sep 2021 16:15:45 +0200
Message-ID: <CAHmn2DPeePdUhcmeUGftbv18g4noo8OKHPBFu75i9HGoe7CsEA@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000068e98505cb68670f"
Subject: [DRBD-announce] python-linstor/linstor-client 1.10.1 release
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

--00000000000068e98505cb68670f
Content-Type: text/plain; charset="UTF-8"

Hi,

This release adds some missing 1.15.0 functionality and new parameters for
node restore.

linstor-client 1.10.1
---------------------
 * Added snapshot delete --nodes parameter
 * Node list show optional eviction time
 * Node restore added delete resources/snapshots options
 * Resource group added adjust command

https://pkg.linbit.com//downloads/linstor/linstor-client-1.10.1.tar.gz

python-linstor 1.10.1
---------------------
 * Added Resource.clone()
 * Added snapshot-delete optional node_names list
 * Added rscgrp adjust method
 * Added node restore delete resources/snapshots option
 * API 1.10.1 compat

https://pkg.linbit.com//downloads/linstor/python-linstor-1.10.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--00000000000068e98505cb68670f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>This release adds some missing 1.15=
.0 functionality and new parameters for node restore.</div><div><br></div><=
div><font face=3D"monospace">linstor-client 1.10.1<br>---------------------=
<br>=C2=A0* Added snapshot delete --nodes parameter<br>=C2=A0* Node list sh=
ow optional eviction time<br>=C2=A0* Node restore added delete resources/sn=
apshots options<br>=C2=A0* Resource group added adjust command<br></font></=
div><div><br></div><div><a href=3D"https://pkg.linbit.com//downloads/linsto=
r/linstor-client-1.10.1.tar.gz">https://pkg.linbit.com//downloads/linstor/l=
instor-client-1.10.1.tar.gz</a><font face=3D"monospace"><br></font></div><d=
iv><font face=3D"monospace"><br></font></div><div><font face=3D"monospace">=
python-linstor 1.10.1<br>---------------------<br>=C2=A0* Added Resource.cl=
one()<br>=C2=A0* Added snapshot-delete optional node_names list<br>=C2=A0* =
Added rscgrp adjust method<br>=C2=A0* Added node restore delete resources/s=
napshots option<br>=C2=A0* API 1.10.1 compat</font><br></div><div><font fac=
e=3D"monospace"><br></font></div><div><a href=3D"https://pkg.linbit.com//do=
wnloads/linstor/python-linstor-1.10.1.tar.gz">https://pkg.linbit.com//downl=
oads/linstor/python-linstor-1.10.1.tar.gz</a><font face=3D"monospace"><br><=
/font></div><div><font face=3D"monospace"><br></font></div><div><div>Linsto=
r PPA:<br></div><div><div><a href=3D"https://launchpad.net/~linbit/+archive=
/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://la=
unchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><div><b=
r></div><div>Best regards,</div><div>Rene</div></div></div></div>

--00000000000068e98505cb68670f--
