Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id DB237100543B
	for <drbd-announce@lists.linbit.com>;
	Mon,  3 Sep 2018 11:55:49 +0200 (CEST)
Received: by mail-wm0-f68.google.com with SMTP id 207-v6so495103wme.5
	for <drbd-announce@lists.linbit.com>;
	Mon, 03 Sep 2018 02:55:49 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 3 Sep 2018 11:55:37 +0200
Message-ID: <CAHmn2DPKW83DPGEF6NYTxOdDPuYUntgDScgUNFEO21a5QgCZMQ@mail.gmail.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000c28ca90574f48b04"
Subject: [DRBD-announce] Linstor v0.6.1 release
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

--000000000000c28ca90574f48b04
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi!

As uncovered from some of you, we had an upgrade bug from previous versions=
.
So here is a bug fix release that mainly addresses this issue.
Packages should soon be updated.

linstor-server 0.6.1
--------------------
 * Fixed database migration from version <0.6.0
 * Fixed NPE on storage pool list if node is not connected
 * Set database connection timeout, to avoid timed out connections (MariaDB=
)

http://www.linbit.com/downloads/linstor/linstor-server-0.6.1.tar.gz

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

--000000000000c28ca90574f48b04
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi!<div><br></div><div>As uncovered from =
some of you, we had an upgrade bug from previous versions.</div><div>So her=
e is a bug fix release that mainly addresses this issue.</div><div>Packages=
 should soon be updated.</div><div><br></div><div><font face=3D"monospace, =
monospace">linstor-server 0.6.1</font></div><div><font face=3D"monospace, m=
onospace">--------------------</font></div><div><div style=3D"font-family:m=
onospace,monospace">=C2=A0* Fixed database migration from version &lt;0.6.0=
</div><div style=3D"font-family:monospace,monospace">=C2=A0* Fixed NPE on s=
torage pool list if node is not connected</div><div style=3D"font-family:mo=
nospace,monospace">=C2=A0* Set database connection timeout, to avoid timed =
out connections (MariaDB)</div><div style=3D"font-family:monospace,monospac=
e"><br></div><div style=3D""><a href=3D"http://www.linbit.com/downloads/lin=
stor/linstor-server-0.6.1.tar.gz" style=3D""><font face=3D"arial, helvetica=
, sans-serif">http://www.linbit.com/downloads/linstor/linstor-server-0.6.1.=
tar.gz</font></a><br></div><div><br></div><div>Best regards,</div><div>Rene=
</div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div=
 dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><font face=3D"arial, helvet=
ica, sans-serif" size=3D"2"><span style=3D"color:rgb(0,0,0);letter-spacing:=
normal">Ren=C3=A9 Peinthor</span><span style=3D"color:rgb(0,0,0);letter-spa=
cing:normal">=C2=A0-=C2=A0</span><span style=3D"color:rgb(0,0,0);letter-spa=
cing:normal">Software Developer</span><br style=3D"color:rgb(0,0,0);letter-=
spacing:normal"><a href=3D"mailto:rene.peinthor@linbit.com" style=3D"color:=
rgb(0,0,0);letter-spacing:normal" target=3D"_blank"><span>rene.peinthor</sp=
an>@linbit.com</a><br style=3D"color:rgb(0,0,0);letter-spacing:normal"><br =
style=3D"color:rgb(0,0,0);letter-spacing:normal"><a href=3D"http://www.linb=
it.com/en/" style=3D"color:rgb(250,133,34);letter-spacing:normal" target=3D=
"_blank">LIN</a><a href=3D"http://www.linbit.com/en/" style=3D"color:rgb(0,=
0,0);letter-spacing:normal" target=3D"_blank">BIT</a><span style=3D"color:r=
gb(0,0,0);letter-spacing:normal">=C2=A0| Keeping the Digital World Running<=
/span><br style=3D"color:rgb(0,0,0);letter-spacing:normal"><span style=3D"c=
olor:rgb(0,0,0);letter-spacing:normal">DRBD HA - Disaster Recovery - Softwa=
re-defined Storage</span><br style=3D"color:rgb(0,0,0);letter-spacing:norma=
l"><a href=3D"https://twitter.com/linbit" title=3D"Twitter" style=3D"color:=
rgb(0,172,237);letter-spacing:normal" target=3D"_blank">t</a><span style=3D=
"color:rgb(0,0,0);letter-spacing:normal">=C2=A0/=C2=A0</span><a href=3D"htt=
ps://www.facebook.com/pg/linbitdrbd/posts/" title=3D"Facebook" style=3D"col=
or:rgb(59,89,152);letter-spacing:normal" target=3D"_blank">f</a><span style=
=3D"color:rgb(0,0,0);letter-spacing:normal">=C2=A0/=C2=A0</span><a href=3D"=
https://www.linkedin.com/company/linbit" title=3D"LinkedIn" style=3D"color:=
rgb(0,123,182);letter-spacing:normal" target=3D"_blank">in</a><span style=
=3D"color:rgb(0,0,0);letter-spacing:normal">=C2=A0/=C2=A0</span><a href=3D"=
https://www.youtube.com/user/linbit" title=3D"YouTube" style=3D"color:rgb(2=
55,0,0);letter-spacing:normal" target=3D"_blank">y</a><span style=3D"color:=
rgb(0,0,0);letter-spacing:normal">=C2=A0/=C2=A0</span><a href=3D"https://pl=
us.google.com/+Linbit/about" title=3D"Google+" style=3D"color:rgb(221,75,57=
);letter-spacing:normal" target=3D"_blank">g+</a><br style=3D"color:rgb(0,0=
,0);letter-spacing:normal"><br style=3D"color:rgb(0,0,0);letter-spacing:nor=
mal"><span style=3D"color:rgb(0,0,0);letter-spacing:normal">DRBD=C2=AE and =
LINBIT=C2=AE are registered trademarks of LINBIT, Austria.</span></font><br=
></div></div></div></div></div></div></div></div></div></div></div></div></=
div></div></div>

--000000000000c28ca90574f48b04--
