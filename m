Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id CAF4A4203EA
	for <drbd-announce@lists.linbit.com>;
	Thu, 12 Mar 2020 08:56:56 +0100 (CET)
Received: by mail-wm1-f51.google.com with SMTP id 25so4963993wmk.3
	for <drbd-announce@lists.linbit.com>;
	Thu, 12 Mar 2020 00:56:56 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 12 Mar 2020 08:55:45 +0100
Message-ID: <CAHmn2DMyF7AS1fT+B6fDW9tTLs1EdYoJpYaQRPbEwxagxEz+Cw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000c5d8f005a0a3aed8"
Subject: [DRBD-announce] python-linstor, linstor-client 1.0.14 release
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

--000000000000c5d8f005a0a3aed8
Content-Type: text/plain; charset="UTF-8"

Hi!

This client release also brings support for OpenFlex and has
improvements to table output and show DRBD connection states
in the resource list command.

python-linstor 1.0.14
---------------------
 * Support OpenFlex(node, storage pool)
 * Response objects add DRBDResource layer data
 * High-Level Resource better error reporting

https://www.linbit.com/downloads/linstor/python-linstor-1.0.14.tar.gz

linstor-client 1.0.14
---------------------
 * Add node and storage pool commands for OpenFlex
 * Improve node ip resolve (filter local addresses)
 * Improve table column headers
 * Add missing completers to resource-groups
 * Show DRBD-connection info in resource list

https://www.linbit.com/downloads/linstor/linstor-client-1.0.14.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000c5d8f005a0a3aed8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi!<div><br></div><div>T=
his client release also brings support for OpenFlex and has</div><div>impro=
vements to table output and show DRBD connection states</div><div>in the re=
source list command.<br><div><br></div><div><span style=3D"font-family:mono=
space,monospace;font-size:x-small">python-linstor 1.0.14</span><br></div><d=
iv><div><div><div><div><font size=3D"1"><span style=3D"font-family:monospac=
e,monospace">---------------------</span></font></div><div><font face=3D"mo=
nospace" size=3D"1">=C2=A0* Support OpenFlex(node, storage pool)</font><br>=
</div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* Response =
objects add DRBDResource layer data</font></div></div><div><font face=3D"mo=
nospace, monospace" size=3D"1">=C2=A0* High-Level Resource better error rep=
orting</font></div><div><br></div><div><font size=3D"1"><font face=3D"monos=
pace, monospace"><a href=3D"https://www.linbit.com/downloads/linstor/python=
-linstor-1.0.14.tar.gz">https://www.linbit.com/downloads/linstor/python-lin=
stor-1.0.14.tar.gz</a></font></font></div></div><div><font size=3D"1"><br><=
/font></div><div><div><div><font size=3D"1"><span style=3D"font-family:mono=
space,monospace">linstor-client 1.0.14</span></font></div><div><font size=
=3D"1"><span style=3D"font-family:monospace,monospace">--------------------=
-</span></font></div><div><font face=3D"monospace"><span style=3D"font-size=
:x-small">=C2=A0*</span><font size=3D"1">=C2=A0Add node and storage pool co=
mmands for OpenFlex</font></font></div></div><div><font face=3D"monospace">=
<font size=3D"1">=C2=A0* Improve node ip resolve (filter local addresses)</=
font></font></div><div><font face=3D"monospace"><font size=3D"1">=C2=A0* Im=
prove table column headers</font></font></div><div><font face=3D"monospace"=
><font size=3D"1">=C2=A0* Add missing completers to resource-groups</font><=
/font></div><div><font face=3D"monospace"><font size=3D"1">=C2=A0* Show DRB=
D-connection info in resource=C2=A0list</font></font></div><div><br></div><=
div><font size=3D"1"><font face=3D"monospace, monospace"><a href=3D"https:/=
/www.linbit.com/downloads/linstor/linstor-client-1.0.14.tar.gz">https://www=
.linbit.com/downloads/linstor/linstor-client-1.0.14.tar.gz</a></font></font=
></div></div></div><div><br></div><div>Linstor PPA:<br></div><div><div><a h=
ref=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" re=
l=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/u=
buntu/linbit-drbd9-stack</a><br></div><div><br></div><div>Best regards,</di=
v><div>Rene</div></div></div></div></div></div></div>

--000000000000c5d8f005a0a3aed8--
