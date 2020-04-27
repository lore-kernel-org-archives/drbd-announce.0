Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2FB09420325
	for <drbd-announce@lists.linbit.com>;
	Mon, 27 Apr 2020 11:51:10 +0200 (CEST)
Received: by mail-wr1-f47.google.com with SMTP id b11so19742167wrs.6
	for <drbd-announce@lists.linbit.com>;
	Mon, 27 Apr 2020 02:51:10 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 27 Apr 2020 11:50:59 +0200
Message-ID: <CAHmn2DMT3k-qhD76O+RrjiU_m134suS=igWM2NANDEngv_yqVQ@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000009d7d4905a442a7e3"
Subject: [DRBD-announce] linstor-server 1.6.2 release
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

--0000000000009d7d4905a442a7e3
Content-Type: text/plain; charset="UTF-8"

Hi!

Bug fix release, see changes below:

linstor-server 1.6.2
--------------------
 * Fix null pointer exception on query-max-volume-size requests with no
lists provided
 * Use prio-props for (write)cache properties
 * Allow Cache layer to be a top layer

https://www.linbit.com/downloads/linstor/linstor-server-1.6.2.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000009d7d4905a442a7e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Bug fix release, see changes=C2=A0b=
elow:</div><div><div><font face=3D"monospace"><br></font></div><div><font f=
ace=3D"monospace">linstor-server 1.6.2<br>--------------------<br>=C2=A0* F=
ix null pointer exception on query-max-volume-size requests with no lists p=
rovided<br>=C2=A0* Use prio-props for (write)cache properties<br>=C2=A0* Al=
low Cache layer to be a top layer</font><br></div><div><div><font face=3D"m=
onospace" size=3D"1"><br></font></div><div><font size=3D"1" face=3D"monospa=
ce"><a href=3D"https://www.linbit.com/downloads/linstor/linstor-server-1.6.=
2.tar.gz">https://www.linbit.com/downloads/linstor/linstor-server-1.6.2.tar=
.gz</a></font></div></div><div><br></div><div><div>Linstor PPA:<br><a href=
=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=
=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/ub=
untu/linbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,</div><di=
v>Rene</div></div></div>

--0000000000009d7d4905a442a7e3--
