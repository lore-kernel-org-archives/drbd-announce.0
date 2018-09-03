Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 11A9D101E042
	for <drbd-announce@lists.linbit.com>;
	Mon,  3 Sep 2018 15:31:01 +0200 (CEST)
Received: by mail-wr1-f68.google.com with SMTP id v17-v6so662471wrr.9
	for <drbd-announce@lists.linbit.com>;
	Mon, 03 Sep 2018 06:31:01 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 3 Sep 2018 15:30:50 +0200
Message-ID: <CAHmn2DMOq5_DH5CXio7MCZeeCvhzU0kwfJO1yEDbSvtZUnQvUg@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000623b040574f78d4d"
Subject: [DRBD-announce] Linstor v0.6.2
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

--000000000000623b040574f78d4d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi again!

While further testing the latest version upgrade migration, we noticed
we missed another table migration, that are fixed now in the v0.6.2 release=
.

linstor-server
--------------
 * Fix: FreespaceMgr migration was still missing some entries in SECURITY
ACL table
 * Fix: Controller trying to connect to none satellite nodes

http://www.linbit.com/downloads/linstor/linstor-server-0.6.2.tar.gz

Best regards,
Rene

--=20
Ren=C3=A9 Peinthor - Software Developer
rene.peinthor@linbit.com

LIN <http://www.linbit.com/en/>BIT <http://www.linbit.com/en/> | Keeping
the Digital World Running
DRBD HA - Disaster Recovery - Software-defined Storage
t <https://twitter.com/linbit> / f
<https://www.facebook.com/pg/linbitdrbd/posts/> / in
<https://www.linkedin.com/company/linbit> / y
<https://www.youtube.com/user/linbit> / g+
<https://plus.google.com/+Linbit/about>

DRBD=C2=AE and LINBIT=C2=AE are registered trademarks of LINBIT, Austria.

--000000000000623b040574f78d4d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi again!<div><br></div><div>While furthe=
r testing the latest version upgrade migration, we noticed</div><div>we mis=
sed another table migration, that are fixed now in the v0.6.2 release.</div=
><div><div><font face=3D"monospace, monospace"><br></font></div><div><div><=
font face=3D"monospace, monospace">linstor-server</font></div><div><font fa=
ce=3D"monospace, monospace">--------------</font></div><div><font face=3D"m=
onospace, monospace">=C2=A0* Fix: FreespaceMgr migration was still missing =
some entries in SECURITY ACL table</font></div><div><font face=3D"monospace=
, monospace">=C2=A0* Fix: Controller trying to connect to none satellite no=
des</font></div></div><div><br></div><div><div><font face=3D"arial, helveti=
ca, sans-serif"><a href=3D"http://www.linbit.com/downloads/linstor/linstor-=
server-0.6.2.tar.gz">http://www.linbit.com/downloads/linstor/linstor-server=
-0.6.2.tar.gz</a></font><br></div><div><br></div><div>Best regards,</div><d=
iv>Rene</div></div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_si=
gnature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>=
<div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><font face=3D"=
arial, helvetica, sans-serif" size=3D"2"><span style=3D"color:rgb(0,0,0);le=
tter-spacing:normal">Ren=C3=A9 Peinthor</span><span style=3D"color:rgb(0,0,=
0);letter-spacing:normal">=C2=A0-=C2=A0</span><span style=3D"color:rgb(0,0,=
0);letter-spacing:normal">Software Developer</span><br style=3D"color:rgb(0=
,0,0);letter-spacing:normal"><a href=3D"mailto:rene.peinthor@linbit.com" st=
yle=3D"color:rgb(0,0,0);letter-spacing:normal" target=3D"_blank"><span>rene=
.peinthor</span>@linbit.com</a><br style=3D"color:rgb(0,0,0);letter-spacing=
:normal"><br style=3D"color:rgb(0,0,0);letter-spacing:normal"><a href=3D"ht=
tp://www.linbit.com/en/" style=3D"color:rgb(250,133,34);letter-spacing:norm=
al" target=3D"_blank">LIN</a><a href=3D"http://www.linbit.com/en/" style=3D=
"color:rgb(0,0,0);letter-spacing:normal" target=3D"_blank">BIT</a><span sty=
le=3D"color:rgb(0,0,0);letter-spacing:normal">=C2=A0| Keeping the Digital W=
orld Running</span><br style=3D"color:rgb(0,0,0);letter-spacing:normal"><sp=
an style=3D"color:rgb(0,0,0);letter-spacing:normal">DRBD HA - Disaster Reco=
very - Software-defined Storage</span><br style=3D"color:rgb(0,0,0);letter-=
spacing:normal"><a href=3D"https://twitter.com/linbit" title=3D"Twitter" st=
yle=3D"color:rgb(0,172,237);letter-spacing:normal" target=3D"_blank">t</a><=
span style=3D"color:rgb(0,0,0);letter-spacing:normal">=C2=A0/=C2=A0</span><=
a href=3D"https://www.facebook.com/pg/linbitdrbd/posts/" title=3D"Facebook"=
 style=3D"color:rgb(59,89,152);letter-spacing:normal" target=3D"_blank">f</=
a><span style=3D"color:rgb(0,0,0);letter-spacing:normal">=C2=A0/=C2=A0</spa=
n><a href=3D"https://www.linkedin.com/company/linbit" title=3D"LinkedIn" st=
yle=3D"color:rgb(0,123,182);letter-spacing:normal" target=3D"_blank">in</a>=
<span style=3D"color:rgb(0,0,0);letter-spacing:normal">=C2=A0/=C2=A0</span>=
<a href=3D"https://www.youtube.com/user/linbit" title=3D"YouTube" style=3D"=
color:rgb(255,0,0);letter-spacing:normal" target=3D"_blank">y</a><span styl=
e=3D"color:rgb(0,0,0);letter-spacing:normal">=C2=A0/=C2=A0</span><a href=3D=
"https://plus.google.com/+Linbit/about" title=3D"Google+" style=3D"color:rg=
b(221,75,57);letter-spacing:normal" target=3D"_blank">g+</a><br style=3D"co=
lor:rgb(0,0,0);letter-spacing:normal"><br style=3D"color:rgb(0,0,0);letter-=
spacing:normal"><span style=3D"color:rgb(0,0,0);letter-spacing:normal">DRBD=
=C2=AE and LINBIT=C2=AE are registered trademarks of LINBIT, Austria.</span=
></font><br></div></div></div></div></div></div></div></div></div></div></d=
iv></div></div></div></div>

--000000000000623b040574f78d4d--
