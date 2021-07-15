Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 22E554201F7
	for <drbd-announce@lists.linbit.com>;
	Thu, 15 Jul 2021 10:33:31 +0200 (CEST)
Received: by mail-ed1-f42.google.com with SMTP id h8so6985280eds.4
	for <drbd-announce@lists.linbit.com>;
	Thu, 15 Jul 2021 01:33:31 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 15 Jul 2021 10:33:21 +0200
Message-ID: <CAHmn2DPR5YupZZHE=UABV5ZmHpKVrfuFwkZNDhOZU3_in0d5AA@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000007563ba05c725533b"
Subject: [DRBD-announce] linstor-server release 1.13.1
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

--0000000000007563ba05c725533b
Content-Type: text/plain; charset="UTF-8"

Hi!

This is a minor bugfix release and might only be interesting if you intend
to work with
BCache or LUKS layers.

linstor-server 1.13.1
---------------------
 * BCache always register devices
 * ToggleDisk recreate correct layerdata (fixes LUKS toggle disk)
 * API-Version 1.8.1

https://pkg.linbit.com//downloads/linstor/linstor-server-1.13.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000007563ba05c725533b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>This is a minor bugfix r=
elease and might only be interesting if you intend to work with</div><div>B=
Cache or LUKS layers.</div><div><br></div><div><font face=3D"monospace">lin=
stor-server 1.13.1<br>---------------------<br>=C2=A0* BCache always regist=
er devices<br>=C2=A0* ToggleDisk recreate correct layerdata (fixes LUKS tog=
gle disk)<br>=C2=A0* API-Version 1.8.1<br></font></div><div><br></div><div>=
<a href=3D"https://pkg.linbit.com//downloads/linstor/linstor-server-1.13.1.=
tar.gz" target=3D"_blank">https://pkg.linbit.com//downloads/linstor/linstor=
-server-1.13.1.tar.gz</a><br></div><div><br></div><div><br></div><div><div>=
<div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive=
/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://la=
unchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div>=
<br></div><div>Cheers,<br></div><div>Rene</div></div></div></div>

--0000000000007563ba05c725533b--
