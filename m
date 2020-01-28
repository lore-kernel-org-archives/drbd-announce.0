Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id A44934203D7
	for <drbd-announce@lists.linbit.com>;
	Tue, 28 Jan 2020 09:12:56 +0100 (CET)
Received: by mail-wm1-f50.google.com with SMTP id t23so1443905wmi.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 28 Jan 2020 00:12:56 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 28 Jan 2020 09:11:44 +0100
Message-ID: <CAHmn2DMm9O4wtx1PpO45tTZkoMt71F=-CV95uirAtbD7Ram4Pw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000f77f8d059d2ec6da"
Subject: [DRBD-announce] python-linstor, linstor-client 1.0.11 release
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

--000000000000f77f8d059d2ec6da
Content-Type: text/plain; charset="UTF-8"

Hi!

We fixed another bug with py2 decoding and some additions to the list output
for volume definitions and resources.

python-linstor 1.0.11
---------------------
 * Fixed decode with py2.7 on different locale
 * Support gross-size in volume groups
 * Added query_max_volume_size to resource group high-level API

https://www.linbit.com/downloads/linstor/python-linstor-1.0.11.tar.gz

linstor-client 1.0.11
---------------------
 * Write interactive mode errors to stderr
 * Show gross size flag in list output
 * Support gross size flag in volume groups
 * Do not show "Unused" if state is unknown

https://www.linbit.com/downloads/linstor/linstor-client-1.0.11.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000f77f8d059d2ec6da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>We fixed another bug with py2 decod=
ing and some additions to the list output</div><div>for volume definitions =
and resources.</div><div><br></div><div><div><div><div><div><font size=3D"1=
"><span style=3D"font-family:monospace,monospace">python-linstor 1.0.11</sp=
an></font></div><div><font size=3D"1"><span style=3D"font-family:monospace,=
monospace">---------------------</span></font></div><div><font face=3D"mono=
space, monospace" size=3D"1">=C2=A0* Fixed decode with py2.7 on different l=
ocale</font></div></div><div><font face=3D"monospace, monospace" size=3D"1"=
>=C2=A0* Support gross-size in volume groups</font></div><div><font face=3D=
"monospace, monospace" size=3D"1">=C2=A0* Added query_max_volume_size to re=
source group high-level API</font></div><div><br></div><div><font size=3D"1=
"><font face=3D"monospace, monospace"><a href=3D"https://www.linbit.com/dow=
nloads/linstor/python-linstor-1.0.11.tar.gz">https://www.linbit.com/downloa=
ds/linstor/python-linstor-1.0.11.tar.gz</a></font></font></div></div><div><=
font size=3D"1"><br></font></div><div><div><div><font size=3D"1"><span styl=
e=3D"font-family:monospace,monospace">linstor-client 1.0.11</span></font></=
div><div><font size=3D"1"><span style=3D"font-family:monospace,monospace">-=
--------------------</span></font></div><div><font face=3D"monospace"><span=
 style=3D"font-size:x-small">=C2=A0*</span><font size=3D"1">=C2=A0Write int=
eractive mode errors to stderr</font></font></div></div><div><font face=3D"=
monospace"><font size=3D"1">=C2=A0* Show gross size flag in list output</fo=
nt></font></div><div><font face=3D"monospace"><font size=3D"1">=C2=A0* Supp=
ort gross size flag in volume groups</font></font></div><div><font face=3D"=
monospace"><font size=3D"1">=C2=A0* Do not show &quot;Unused&quot; if state=
 is unknown</font></font></div><div><br></div><div><font size=3D"1"><font f=
ace=3D"monospace, monospace"><a href=3D"https://www.linbit.com/downloads/li=
nstor/linstor-client-1.0.11.tar.gz">https://www.linbit.com/downloads/linsto=
r/linstor-client-1.0.11.tar.gz</a></font></font></div></div></div><div><br>=
</div><div>Linstor PPA:<br></div><div><div><a href=3D"https://launchpad.net=
/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_=
blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a>=
<br></div><div><br></div><div>Best regards,</div><div>Rene</div></div></div=
></div>

--000000000000f77f8d059d2ec6da--
