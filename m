Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id AE4871011B93
	for <drbd-announce@lists.linbit.com>;
	Fri, 14 Sep 2018 14:03:47 +0200 (CEST)
Received: by mail-wr1-f68.google.com with SMTP id v16-v6so10284535wro.11
	for <drbd-announce@lists.linbit.com>;
	Fri, 14 Sep 2018 05:03:47 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Fri, 14 Sep 2018 13:56:02 +0200
Message-ID: <CAHmn2DNFdMkMFgZB9-nOwj5TAA7oYgqejqeiEudHJdkNZj7pCA@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000009c798e0575d38262"
Subject: [DRBD-announce] Linstor-server 0.6.4
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

--0000000000009c798e0575d38262
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi!

Another little bug fix release, on some (too bad not on our dev) systems
there is a problem with correctly writing/moving resource files, that is
fixed now.
There are also some minor bug fixes with this release.

linstor-server 0.6.4
-------------------------
 * Fix atomically move of linstor-common.conf file on some systems
 * Storage pools are now displayed even if one node has a broken storage
pool
 * Better error message for broken storage pools
 * RPM packages now again contain firewalld service files

http://www.linbit.com/downloads/linstor/linstor-server-0.6.4.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

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

--0000000000009c798e0575d38262
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi!<div><br></div><div>A=
nother little bug fix release, on some (too bad not on our dev) systems</di=
v><div>there is a problem with correctly writing/moving resource files, tha=
t is fixed now.</div><div>There are also some minor bug fixes with this rel=
ease.</div><div><br></div><div><font face=3D"monospace, monospace" size=3D"=
1">linstor-server 0.6.4</font></div><div><font face=3D"monospace, monospace=
" size=3D"1">-------------------------</font></div><div><font face=3D"monos=
pace, monospace" size=3D"1">=C2=A0* Fix atomically move of linstor-common.c=
onf file on some systems</font></div><div><font face=3D"monospace, monospac=
e" size=3D"1">=C2=A0* Storage pools are now displayed even if one node has =
a broken storage pool</font></div><div><font face=3D"monospace, monospace" =
size=3D"1">=C2=A0* Better error message for broken storage pools</font></di=
v><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* RPM packages =
now again contain firewalld service files</font></div><div><br></div><div><=
a href=3D"http://www.linbit.com/downloads/linstor/linstor-server-0.6.4.tar.=
gz" target=3D"_blank">http://www.linbit.com/downloads/linstor/linstor-serve=
r-0.6.4.tar.gz</a><br clear=3D"all"><div><br></div><div>Linstor PPA:</div><=
div><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-s=
tack" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbi=
t-drbd9-stack</a><br></div><div><br></div><div>Best regards,</div><div>Rene=
</div><div><br></div>-- <br><div dir=3D"ltr" class=3D"m_4849510549959805385=
gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"lt=
r"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><font =
face=3D"arial, helvetica, sans-serif" size=3D"2"><span style=3D"color:rgb(0=
,0,0);letter-spacing:normal">Ren=C3=A9 Peinthor</span><span style=3D"color:=
rgb(0,0,0);letter-spacing:normal">=C2=A0-=C2=A0</span><span style=3D"color:=
rgb(0,0,0);letter-spacing:normal">Software Developer</span><br style=3D"col=
or:rgb(0,0,0);letter-spacing:normal"><a href=3D"mailto:rene.peinthor@linbit=
.com" style=3D"color:rgb(0,0,0);letter-spacing:normal" target=3D"_blank"><s=
pan>rene.peinthor</span>@linbit.com</a><br style=3D"color:rgb(0,0,0);letter=
-spacing:normal"><br style=3D"color:rgb(0,0,0);letter-spacing:normal"><a hr=
ef=3D"http://www.linbit.com/en/" style=3D"color:rgb(250,133,34);letter-spac=
ing:normal" target=3D"_blank">LIN</a><a href=3D"http://www.linbit.com/en/" =
style=3D"color:rgb(0,0,0);letter-spacing:normal" target=3D"_blank">BIT</a><=
span style=3D"color:rgb(0,0,0);letter-spacing:normal">=C2=A0| Keeping the D=
igital World Running</span><br style=3D"color:rgb(0,0,0);letter-spacing:nor=
mal"><span style=3D"color:rgb(0,0,0);letter-spacing:normal">DRBD HA - Disas=
ter Recovery - Software-defined Storage</span><br style=3D"color:rgb(0,0,0)=
;letter-spacing:normal"><a href=3D"https://twitter.com/linbit" title=3D"Twi=
tter" style=3D"color:rgb(0,172,237);letter-spacing:normal" target=3D"_blank=
">t</a><span style=3D"color:rgb(0,0,0);letter-spacing:normal">=C2=A0/=C2=A0=
</span><a href=3D"https://www.facebook.com/pg/linbitdrbd/posts/" title=3D"F=
acebook" style=3D"color:rgb(59,89,152);letter-spacing:normal" target=3D"_bl=
ank">f</a><span style=3D"color:rgb(0,0,0);letter-spacing:normal">=C2=A0/=C2=
=A0</span><a href=3D"https://www.linkedin.com/company/linbit" title=3D"Link=
edIn" style=3D"color:rgb(0,123,182);letter-spacing:normal" target=3D"_blank=
">in</a><span style=3D"color:rgb(0,0,0);letter-spacing:normal">=C2=A0/=C2=
=A0</span><a href=3D"https://www.youtube.com/user/linbit" title=3D"YouTube"=
 style=3D"color:rgb(255,0,0);letter-spacing:normal" target=3D"_blank">y</a>=
<span style=3D"color:rgb(0,0,0);letter-spacing:normal">=C2=A0/=C2=A0</span>=
<a href=3D"https://plus.google.com/+Linbit/about" title=3D"Google+" style=
=3D"color:rgb(221,75,57);letter-spacing:normal" target=3D"_blank">g+</a><br=
 style=3D"color:rgb(0,0,0);letter-spacing:normal"><br style=3D"color:rgb(0,=
0,0);letter-spacing:normal"><span style=3D"color:rgb(0,0,0);letter-spacing:=
normal">DRBD=C2=AE and LINBIT=C2=AE are registered trademarks of LINBIT, Au=
stria.</span></font><br></div></div></div></div></div></div></div></div></d=
iv></div></div></div></div></div></div></div>

--0000000000009c798e0575d38262--
