Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 46F104203D6
	for <drbd-announce@lists.linbit.com>;
	Thu,  7 May 2020 11:56:26 +0200 (CEST)
Received: by mail-wr1-f52.google.com with SMTP id v12so4266356wrp.12
	for <drbd-announce@lists.linbit.com>;
	Thu, 07 May 2020 02:56:26 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 7 May 2020 11:56:15 +0200
Message-ID: <CAHmn2DM++d20kcAGGnCJ_bDK3nUqBu7OCTGgG-YmVMATgJ4OtQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000da44e605a50be45d"
Subject: [DRBD-announce] linstor-server 1.7.0 release
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

--000000000000da44e605a50be45d
Content-Type: text/plain; charset="UTF-8"

Hi!

This release bring a few nice things:
 * A new auto-place implementation that is a way more customizable than
before
   updated docs soon here:
https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-autoplace-linstor
 * Snapshots got there dedicated list view, for faster queries
 * Most list API's got a new filter option for properties

The rest is some bug fixes of reported bugs since version 1.6.2.

linstor-server 1.7.0
--------------------
 * Added new auto-placer code
 * Added /v1/view/snapshots to REST-API
 * Extended list APIs with filters
 * DM-Crypt layer shreds now 16M on delete
 * Fix loading resource-group properties
 * REST-API 1.1.0

https://www.linbit.com/downloads/linstor/linstor-server-1.7.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000da44e605a50be45d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>This release bring a few nice thing=
s:</div><div>=C2=A0* A new auto-place implementation that is a way more cus=
tomizable than before<br>=C2=A0 =C2=A0updated docs soon here:=C2=A0<a href=
=3D"https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-autoplac=
e-linstor">https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-a=
utoplace-linstor</a></div><div>=C2=A0* Snapshots got there dedicated list v=
iew, for faster queries</div><div>=C2=A0* Most list API&#39;s got a new fil=
ter option for properties</div><div><br></div><div>The rest is some bug fix=
es of reported bugs since version 1.6.2.</div><div><div><font face=3D"monos=
pace"><br></font></div><div><font face=3D"monospace">linstor-server 1.7.0<b=
r>--------------------<br>=C2=A0* Added new auto-placer code<br>=C2=A0* Add=
ed /v1/view/snapshots to REST-API<br>=C2=A0* Extended list APIs with filter=
s<br>=C2=A0* DM-Crypt layer shreds now 16M on delete<br>=C2=A0* Fix loading=
 resource-group properties<br>=C2=A0* REST-API 1.1.0</font><br></div><div><=
div><font face=3D"monospace" size=3D"1"><br></font></div><div><font size=3D=
"1" face=3D"monospace"><a href=3D"https://www.linbit.com/downloads/linstor/=
linstor-server-1.7.0.tar.gz">https://www.linbit.com/downloads/linstor/linst=
or-server-1.7.0.tar.gz</a></font></div></div><div><br></div><div><div>Linst=
or PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-=
drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~li=
nbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div>=
Cheers,</div><div>Rene</div></div></div>

--000000000000da44e605a50be45d--
