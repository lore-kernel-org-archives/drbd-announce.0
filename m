Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id B689F100543B
	for <drbd-announce@lists.linbit.com>;
	Mon, 10 Sep 2018 15:52:50 +0200 (CEST)
Received: by mail-wr1-f68.google.com with SMTP id v17-v6so22014518wrr.9
	for <drbd-announce@lists.linbit.com>;
	Mon, 10 Sep 2018 06:52:50 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 10 Sep 2018 15:52:38 +0200
Message-ID: <CAHmn2DNn0UYTPJnnCY9dMnGq+Bxk31KsGrmJXo5bF=kwWG+puA@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000004396ca057584acfc"
Subject: [DRBD-announce] Linstor-server 0.6.3, Linstor-client 0.6.1 release
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

--0000000000004396ca057584acfc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All!

After the two hot fix releases from last week, we have another release with
mainly fixes, but not so dramatically and a new feature with supporting ZFS
thin storage pools.

ZFS thin storage pool use the same syntax as all the other storage pool
drivers e.g.:
linstor storage-pool create zfsthin node zfsthinpool tank

linstor-server 0.6.3
--------------------
 * Add zfs thin support
 * Fix a race condition with drbd reading incomplete res files
 * Fix 100% cpu usage on satellite startup if drbd-utils missing
 * Fix access to deleted volume data
 * Fix satellite timeout if a external command takes too long
 * Fix missing resource definition delete on node lost

http://www.linbit.com/downloads/linstor/linstor-server-0.6.3.tar.gz

linstor-client 0.6.1
--------------------
 * Add zfs thin to supported storage pool drivers
 * Fix possible client waiting forever for a completed reply
 * Fix missing lock for replies

http://www.linbit.com/downloads/linstor/python-linstor-0.6.1.tar.gz
http://www.linbit.com/downloads/linstor/linstor-client-0.6.1.tar.gz

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

--0000000000004396ca057584acfc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr">Hi All!<div><br></div><div>After the two hot fix releases from la=
st week, we have another release with</div><div>mainly fixes, but not so dr=
amatically and a new feature with supporting ZFS thin storage pools.</div><=
div><br></div><div>ZFS thin storage pool use the same syntax as all the oth=
er storage pool drivers e.g.:</div><div><font face=3D"monospace, monospace"=
>linstor storage-pool create zfsthin node zfsthinpool tank</font></div><div=
><br></div><div><font face=3D"monospace, monospace" size=3D"1">linstor-serv=
er 0.6.3</font></div><div><font face=3D"monospace, monospace" size=3D"1">--=
------------------</font></div><div><font face=3D"monospace, monospace" siz=
e=3D"1">=C2=A0* Add zfs thin support</font></div><div><font face=3D"monospa=
ce, monospace" size=3D"1">=C2=A0* Fix a race condition with drbd reading in=
complete res files</font></div><div><font face=3D"monospace, monospace" siz=
e=3D"1">=C2=A0* Fix 100% cpu usage on satellite startup if drbd-utils missi=
ng</font></div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* =
Fix access to deleted volume data</font></div><div><font face=3D"monospace,=
 monospace" size=3D"1">=C2=A0* Fix satellite timeout if a external command =
takes too long</font></div><div><font face=3D"monospace, monospace" size=3D=
"1">=C2=A0* Fix missing resource definition delete on node lost</font></div=
><div><font face=3D"monospace, monospace" size=3D"1"><br></font></div><div>=
<font face=3D"monospace, monospace" size=3D"1"><a href=3D"http://www.linbit=
.com/downloads/linstor/linstor-server-0.6.3.tar.gz">http://www.linbit.com/d=
ownloads/linstor/linstor-server-0.6.3.tar.gz</a><br></font></div><div><font=
 face=3D"monospace, monospace" size=3D"1"><br></font></div><div><font face=
=3D"monospace, monospace" size=3D"1">linstor-client 0.6.1</font></div><div>=
<font face=3D"monospace, monospace" size=3D"1">--------------------</font><=
/div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* Add zfs th=
in to supported storage pool drivers</font></div><div><font face=3D"monospa=
ce, monospace" size=3D"1">=C2=A0* Fix possible client waiting forever for a=
 completed reply</font></div><div><font face=3D"monospace, monospace" size=
=3D"1">=C2=A0* Fix missing lock for replies</font></div><div><div><font siz=
e=3D"1" face=3D"monospace, monospace"><br></font></div><div><font size=3D"1=
" face=3D"monospace, monospace"><a href=3D"http://www.linbit.com/downloads/=
linstor/python-linstor-0.6.1.tar.gz">http://www.linbit.com/downloads/linsto=
r/python-linstor-0.6.1.tar.gz</a><br></font></div><div><a href=3D"http://ww=
w.linbit.com/downloads/linstor/linstor-client-0.6.1.tar.gz"><font size=3D"1=
" face=3D"monospace, monospace">http://www.linbit.com/downloads/linstor/lin=
stor-client-0.6.1.tar.gz</font></a><br></div><div><br></div><div>Linstor PP=
A:</div><div><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbi=
t-drbd9-stack">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-s=
tack</a><br></div><div><br></div><div>Best regards,</div><div>Rene</div><di=
v><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>=
<div dir=3D"ltr"><div><div dir=3D"ltr"><font face=3D"arial, helvetica, sans=
-serif" size=3D"2"><span style=3D"color:rgb(0,0,0);letter-spacing:normal">R=
en=C3=A9 Peinthor</span><span style=3D"color:rgb(0,0,0);letter-spacing:norm=
al">=C2=A0-=C2=A0</span><span style=3D"color:rgb(0,0,0);letter-spacing:norm=
al">Software Developer</span><br style=3D"color:rgb(0,0,0);letter-spacing:n=
ormal"><a href=3D"mailto:rene.peinthor@linbit.com" style=3D"color:rgb(0,0,0=
);letter-spacing:normal" target=3D"_blank"><span>rene.peinthor</span>@linbi=
t.com</a><br style=3D"color:rgb(0,0,0);letter-spacing:normal"><br style=3D"=
color:rgb(0,0,0);letter-spacing:normal"><a href=3D"http://www.linbit.com/en=
/" style=3D"color:rgb(250,133,34);letter-spacing:normal" target=3D"_blank">=
LIN</a><a href=3D"http://www.linbit.com/en/" style=3D"color:rgb(0,0,0);lett=
er-spacing:normal" target=3D"_blank">BIT</a><span style=3D"color:rgb(0,0,0)=
;letter-spacing:normal">=C2=A0| Keeping the Digital World Running</span><br=
 style=3D"color:rgb(0,0,0);letter-spacing:normal"><span style=3D"color:rgb(=
0,0,0);letter-spacing:normal">DRBD HA - Disaster Recovery - Software-define=
d Storage</span><br style=3D"color:rgb(0,0,0);letter-spacing:normal"><a hre=
f=3D"https://twitter.com/linbit" title=3D"Twitter" style=3D"color:rgb(0,172=
,237);letter-spacing:normal" target=3D"_blank">t</a><span style=3D"color:rg=
b(0,0,0);letter-spacing:normal">=C2=A0/=C2=A0</span><a href=3D"https://www.=
facebook.com/pg/linbitdrbd/posts/" title=3D"Facebook" style=3D"color:rgb(59=
,89,152);letter-spacing:normal" target=3D"_blank">f</a><span style=3D"color=
:rgb(0,0,0);letter-spacing:normal">=C2=A0/=C2=A0</span><a href=3D"https://w=
ww.linkedin.com/company/linbit" title=3D"LinkedIn" style=3D"color:rgb(0,123=
,182);letter-spacing:normal" target=3D"_blank">in</a><span style=3D"color:r=
gb(0,0,0);letter-spacing:normal">=C2=A0/=C2=A0</span><a href=3D"https://www=
.youtube.com/user/linbit" title=3D"YouTube" style=3D"color:rgb(255,0,0);let=
ter-spacing:normal" target=3D"_blank">y</a><span style=3D"color:rgb(0,0,0);=
letter-spacing:normal">=C2=A0/=C2=A0</span><a href=3D"https://plus.google.c=
om/+Linbit/about" title=3D"Google+" style=3D"color:rgb(221,75,57);letter-sp=
acing:normal" target=3D"_blank">g+</a><br style=3D"color:rgb(0,0,0);letter-=
spacing:normal"><br style=3D"color:rgb(0,0,0);letter-spacing:normal"><span =
style=3D"color:rgb(0,0,0);letter-spacing:normal">DRBD=C2=AE and LINBIT=C2=
=AE are registered trademarks of LINBIT, Austria.</span></font><br></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div></div></div>

--0000000000004396ca057584acfc--
