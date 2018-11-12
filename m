Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 9AA691018D52
	for <drbd-announce@lists.linbit.com>;
	Mon, 12 Nov 2018 15:47:43 +0100 (CET)
Received: by mail-wm1-f48.google.com with SMTP id f10-v6so8760012wme.3
	for <drbd-announce@lists.linbit.com>;
	Mon, 12 Nov 2018 06:47:43 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 12 Nov 2018 15:40:27 +0100
Message-ID: <CAHmn2DMSeDu9vr8C_fnJ4+FFEvVK2x5fyXNN9uvvAT7yMUDsPw@mail.gmail.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000003c2e42057a78af9a"
Subject: [DRBD-announce] Linstor-server v0.7.2, Linstor-client v0.7.1 release
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

--0000000000003c2e42057a78af9a
Content-Type: text/plain; charset="UTF-8"

Hello!

Here is a rather minor bug fix release, but also flavored with a small new
feature.
One thing to note is that we turned off SECURITY ACL in linstor so for new
installations you don't need to explicitly have to set NO_SECURITY if you
want to change a controller property.
We will probably change the default again as soon as we have implemented
the full security model.

Some highlights of the changes:

linstor-server 0.7.2
--------------------
 * Disabled security ACL per default
 * Volume definition resize is now synchronous
 * Snapshot create/deleted now uses reactor library
 * Added reconnect API
 * Replicas-on-same now allows to specify values
 * Prevent creating volumes on different storage drivers (thin/thick mix)
 * Fixed schema problems with latest flyway library (postgresql)

http://www.linbit.com/downloads/linstor/linstor-server-0.7.2.tar.gz

linstor-client/python-linstor 0.7.1
-----------------------------------
 * Added node reconnect command
 * Support reactive snapshot create/delete

http://www.linbit.com/downloads/linstor/python-linstor-0.7.1.tar.gz
http://www.linbit.com/downloads/linstor/linstor-client-0.7.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--0000000000003c2e42057a78af9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hello!<=
div><br></div><div>Here is a rather minor bug fix release, but also flavore=
d with a small new feature.</div><div>One thing to note is that we turned o=
ff SECURITY ACL in linstor so for new</div><div>installations you don&#39;t=
 need to explicitly have to set NO_SECURITY if you want to change a control=
ler property.</div><div>We will probably change the default again as soon a=
s we have implemented the full security model.</div><div><br></div><div>Som=
e highlights of the changes:</div><div><br></div><div><div><span style=3D"f=
ont-family:monospace,monospace;font-size:x-small">linstor-server 0.7.2</spa=
n><br></div><div><div><font face=3D"monospace, monospace" size=3D"1">------=
--------------</font></div><div><font size=3D"1"><font face=3D"monospace, m=
onospace">=C2=A0* Disabled security ACL per default<br></font><span style=
=3D"font-family:monospace,monospace">=C2=A0* Volume definition resize is no=
w synchronous</span></font></div></div></div><div><font size=3D"1"><span st=
yle=3D"font-family:monospace,monospace">=C2=A0* Snapshot create/deleted now=
 uses reactor library</span></font></div><div><span style=3D"font-family:mo=
nospace,monospace;font-size:x-small">=C2=A0* Added reconnect API</span></di=
v><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* Replicas-on-s=
ame now allows=C2=A0to specify values</font></div><div><font face=3D"monosp=
ace, monospace" size=3D"1">=C2=A0* Prevent creating volumes on different st=
orage drivers (thin/thick mix)</font></div><div><font face=3D"monospace, mo=
nospace" size=3D"1">=C2=A0* Fixed schema problems with latest flyway librar=
y (postgresql)</font></div><div><font face=3D"monospace, monospace" size=3D=
"1"><br></font></div><div><font face=3D"monospace, monospace" size=3D"1"><a=
 href=3D"http://www.linbit.com/downloads/linstor/linstor-server-0.7.2.tar.g=
z" target=3D"_blank">http://www.linbit.com/downloads/linstor/linstor-server=
-0.7.2.tar.gz</a><br></font></div><div><font face=3D"monospace, monospace" =
size=3D"1"><br></font></div><div><span style=3D"font-family:monospace,monos=
pace;font-size:x-small">linstor-client/python-linstor 0.7.1</span><br style=
=3D"font-family:monospace,monospace;font-size:x-small"><span style=3D"font-=
family:monospace,monospace;font-size:x-small">-----------------------------=
-</span><span style=3D"font-family:monospace,monospace;font-size:x-small">-=
----</span><br style=3D"font-family:monospace,monospace;font-size:x-small">=
<span style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* A=
dded node reconnect command</span><font face=3D"monospace, monospace" size=
=3D"1"><br></font></div><div><span style=3D"font-family:monospace,monospace=
;font-size:x-small">=C2=A0* Support reactive snapshot create/delete</span><=
/div><div><span style=3D"font-family:monospace,monospace;font-size:x-small"=
>=C2=A0</span></div><div><font face=3D"monospace, monospace" size=3D"1"><a =
href=3D"http://www.linbit.com/downloads/linstor/python-linstor-0.7.1.tar.gz=
" target=3D"_blank">http://www.linbit.com/downloads/linstor/python-linstor-=
0.7.1.tar.gz</a></font><br></div><div><a href=3D"http://www.linbit.com/down=
loads/linstor/linstor-client-0.7.1.tar.gz" target=3D"_blank"><font face=3D"=
monospace, monospace" size=3D"1">http://www.linbit.com/downloads/linstor/li=
nstor-client-0.7.1.tar.gz</font></a><br></div><div><br></div><div><div>Lins=
tor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit=
-drbd9-stack" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubun=
tu/linbit-drbd9-stack</a><br></div><div><br></div><div>Best regards,</div><=
div>Rene</div></div></div></div></div></div>

--0000000000003c2e42057a78af9a--
