Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
	[209.85.218.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E492A4203B1
	for <drbd-announce@lists.linbit.com>;
	Tue,  3 Aug 2021 14:51:39 +0200 (CEST)
Received: by mail-ej1-f48.google.com with SMTP id e19so36201814ejs.9
	for <drbd-announce@lists.linbit.com>;
	Tue, 03 Aug 2021 05:51:39 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 3 Aug 2021 14:51:28 +0200
Message-ID: <CAHmn2DPcKFbq=UE=3VAO0g6CURZdKGQX7nSJEY=QYM-MA2_zMA@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000097343d05c8a725ab"
Subject: [DRBD-announce] linstor-server 1.14.0 release
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

--00000000000097343d05c8a725ab
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is the final release of 1.14.0 with a few more bug fixes added.

linstor-server 1.14.0
---------------------
 * Add remote SPDK support
 * Fix migratedisk without body content
 * Fix toggledisk reuse node-ids
 * Fix autosnapshotshipping only work once
 * Fix toggledisk missing layerstack bug
 * Fix BCache trying to register too often
 * Fix Luks resize with newer cryptosetup versions
 * API-Version 1.9.0

https://pkg.linbit.com//downloads/linstor/linstor-server-1.14.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--00000000000097343d05c8a725ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Here is the final releas=
e of 1.14.0 with a few more bug fixes added.</div><div><br></div><div><font=
 face=3D"monospace">linstor-server 1.14.0<br>---------------------<br>=C2=
=A0* Add remote SPDK support<br>=C2=A0* Fix migratedisk without body conten=
t<br>=C2=A0* Fix toggledisk reuse node-ids<br>=C2=A0* Fix autosnapshotshipp=
ing only work once<br>=C2=A0* Fix toggledisk missing layerstack bug<br>=C2=
=A0* Fix BCache trying to register too often<br>=C2=A0* Fix Luks resize wit=
h newer cryptosetup versions<br>=C2=A0* API-Version 1.9.0</font><br></div><=
div><br></div><div><a href=3D"https://pkg.linbit.com//downloads/linstor/lin=
stor-server-1.14.0.tar.gz" target=3D"_blank">https://pkg.linbit.com//downlo=
ads/linstor/linstor-server-1.14.0.tar.gz</a><br></div><div><br></div><div><=
br></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.n=
et/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D=
"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</=
a></div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></div></d=
iv></div>

--00000000000097343d05c8a725ab--
