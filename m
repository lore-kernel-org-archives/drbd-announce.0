Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
	[209.85.218.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 7C82B4202D8
	for <drbd-announce@lists.linbit.com>;
	Tue,  7 Sep 2021 16:12:33 +0200 (CEST)
Received: by mail-ej1-f42.google.com with SMTP id e21so19925597ejz.12
	for <drbd-announce@lists.linbit.com>;
	Tue, 07 Sep 2021 07:12:33 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 7 Sep 2021 16:12:22 +0200
Message-ID: <CAHmn2DOZQpva2TrtNt3xVK=WgViNn6sZvgrHL-Z=KamECeza8g@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000553bac05cb685bd0"
Subject: [DRBD-announce] linstor-server release candidate 1.15.0-rc.2
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

--000000000000553bac05cb685bd0
Content-Type: text/plain; charset="UTF-8"

Hi!

Another release candidate for 1.15.0, basically contains fixes to the new
functionality and
additional bug fixes to auto-evict feature

linstor-server 1.15.0.rc2
-------------------------
 * Added backup shipping to S3
 * Added backup shipping to another Linstor cluster
 * Added clone/copy resource definition
 * Evict: do not delete last diskful
 * Evict: inactive resource instead of delete
 * API-Version 1.10.1

https://pkg.linbit.com//downloads/linstor/linstor-server-1.15.0-rc.2.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000553bac05cb685bd0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Another release candidat=
e for 1.15.0, basically contains fixes to the new functionality=C2=A0and</d=
iv><div>additional bug fixes to auto-evict feature</div><div><br></div><div=
><font face=3D"monospace">linstor-server 1.15.0.rc2<br>--------------------=
-----<br>=C2=A0* Added backup shipping to S3<br>=C2=A0* Added backup shippi=
ng to another Linstor cluster<br>=C2=A0* Added clone/copy resource definiti=
on<br>=C2=A0* Evict: do not delete last diskful<br>=C2=A0* Evict: inactive =
resource instead of delete<br>=C2=A0* API-Version 1.10.1</font><br></div><d=
iv><br></div><div><a href=3D"https://pkg.linbit.com//downloads/linstor/lins=
tor-server-1.15.0-rc.2.tar.gz">https://pkg.linbit.com//downloads/linstor/li=
nstor-server-1.15.0-rc.2.tar.gz</a><br></div><div><br></div><div><br></div>=
<div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbi=
t/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">=
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div><=
/div><div><br></div><div>Cheers,<br></div><div>Rene</div></div></div></div>

--000000000000553bac05cb685bd0--
