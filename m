Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id EE74C1011BF6
	for <drbd-announce@lists.linbit.com>;
	Mon,  8 Apr 2019 16:50:50 +0200 (CEST)
Received: by mail-wm1-f67.google.com with SMTP id z24so15151942wmi.5
	for <drbd-announce@lists.linbit.com>;
	Mon, 08 Apr 2019 07:50:50 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 8 Apr 2019 16:50:39 +0200
Message-ID: <CAHmn2DNzmoHTKy+si8SJ2VZzkzpQrJTaVaSRTbpt2kU6JpGTbg@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000062166c058605f691"
Subject: [DRBD-announce] Linstor-server v0.9.5, linstor-client 0.9.2 release
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

--00000000000062166c058605f691
Content-Type: text/plain; charset="UTF-8"

Greetings!

A new linstor-server release that will fix a few migration bugs from older
versions, if you have multi volume resources or if you ever used encryption
volumes.
Apart from fixes there is now also support to set DRBD handler scripts
within Linstor.

linstor-server 0.9.5
--------------------
 * Fixed: Multi-volume migration from old versions
 * Fixed: Encryption layer didn't correctly decode the passphrase
 * Fixed: REST-API 404 is now returned if a resource definition was not
found
 * Satellite does now check what layers the host does support
 * DRBD/config handlers will now set from the according property values
 * REST-API: On create node if only 1 net-interface is given, it defaults
to satellite connector

https://www.linbit.com/downloads/linstor/linstor-server-0.9.5.tar.gz

linstor-client/python-linstor 0.9.2
-----------------------------------
 * Create node IP address will be resolved if not given
 * Removed all name checks, they are checked by the controller anyway
 * Resource definition peer-slots can now be modified
 * DRBD-handlers can now be specified for controller and resource-definition

https://www.linbit.com/downloads/linstor/python-linstor-0.9.2.tar.gz
https://www.linbit.com/downloads/linstor/linstor-client-0.9.2.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--00000000000062166c058605f691
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Greetings!<div><br></div><div>A new linstor-server release=
 that will fix a few migration bugs from older versions, if you have multi =
volume resources or if you ever used encryption volumes.</div><div>Apart fr=
om fixes there is now also support to set DRBD handler scripts within Linst=
or.</div><div><span style=3D"font-family:monospace,monospace;font-size:x-sm=
all"><br></span></div><div><span style=3D"font-family:monospace,monospace;f=
ont-size:x-small">linstor-server 0.9.5</span></div><div><div><div><font fac=
e=3D"monospace, monospace" size=3D"1">--------------------</font></div><div=
><span style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* =
Fixed: Multi-volume migration from old versions</span><br></div><div><font =
size=3D"1"><font face=3D"monospace, monospace">=C2=A0* Fixed: Encryption la=
yer didn&#39;t correctly=C2=A0decode the passphrase</font></font></div><div=
><font size=3D"1"><font face=3D"monospace, monospace">=C2=A0* Fixed: REST-A=
PI 404 is now returned if a resource definition was not found</font></font>=
</div><div><font size=3D"1"><font face=3D"monospace, monospace">=C2=A0* Sat=
ellite does now check what layers the host does support</font></font></div>=
<div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* DRBD/config han=
dlers will now set from the according property values</font></div><div><fon=
t face=3D"monospace, monospace" size=3D"1">=C2=A0* REST-API: On create node=
 if only 1 net-interface is given, it defaults to satellite connector</font=
></div><div><br></div></div><div><font size=3D"1"><a href=3D"https://www.li=
nbit.com/downloads/linstor/linstor-server-0.9.5.tar.gz">https://www.linbit.=
com/downloads/linstor/linstor-server-0.9.5.tar.gz</a></font></div></div><di=
v><br></div><div><div><div><font size=3D"1"><span style=3D"font-family:mono=
space,monospace">linstor-client/python-linstor 0.9.2</span></font></div><di=
v><font size=3D"1"><span style=3D"font-family:monospace,monospace">--------=
---------------------------</span></font></div><div><span style=3D"font-fam=
ily:monospace,monospace;font-size:x-small">=C2=A0* Create node IP address w=
ill be resolved if not given</span></div></div><div><span style=3D"font-fam=
ily:monospace,monospace;font-size:x-small">=C2=A0* Removed all name checks,=
 they are checked by the controller anyway</span></div><div><span style=3D"=
font-family:monospace,monospace;font-size:x-small">=C2=A0* Resource definit=
ion peer-slots can now be modified</span></div><div><span style=3D"font-fam=
ily:monospace,monospace;font-size:x-small">=C2=A0* DRBD-handlers can now be=
 specified for controller and resource-definition</span></div><div><font si=
ze=3D"1"><span style=3D"font-family:monospace,monospace"><br></span></font>=
</div><div><font size=3D"1"><font face=3D"monospace, monospace"><a href=3D"=
https://www.linbit.com/downloads/linstor/python-linstor-0.9.2.tar.gz">https=
://www.linbit.com/downloads/linstor/python-linstor-0.9.2.tar.gz</a></font><=
br></font></div><div><font size=3D"1"><font face=3D"monospace, monospace"><=
a href=3D"https://www.linbit.com/downloads/linstor/linstor-client-0.9.2.tar=
.gz">https://www.linbit.com/downloads/linstor/linstor-client-0.9.2.tar.gz</=
a></font></font></div></div><div><br></div><div><div>Linstor PPA:<br><a hre=
f=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=
=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/ub=
untu/linbit-drbd9-stack</a><br></div><div><br></div><div>Best regards,</div=
><div>Rene</div></div></div>

--00000000000062166c058605f691--
