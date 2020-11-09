Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2CB2F4207AD
	for <drbd-announce@lists.linbit.com>;
	Mon,  9 Nov 2020 12:16:45 +0100 (CET)
Received: by mail-wm1-f49.google.com with SMTP id s13so7562932wmh.4
	for <drbd-announce@lists.linbit.com>;
	Mon, 09 Nov 2020 03:16:45 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 9 Nov 2020 12:16:34 +0100
Message-ID: <CAHmn2DNb0sn4jXpVaivx-MTF1xy98BkFAZ0eavgfmopF5tgeUg@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000946c6705b3aab27f"
Subject: [DRBD-announce] python-linstor, linstor-client 1.4.1 release
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

--000000000000946c6705b3aab27f
Content-Type: text/plain; charset="UTF-8"

Hi,

Small client release, with minor fixes.

python-linstor v1.4.1
---------------------
 * added SizeCalc.unit_to_str method

https://www.linbit.com/downloads/linstor/python-linstor-1.4.1.tar.gz

linstor-client 1.4.1
--------------------
* migrate: remove unused AllowLargerVolumeSize property
* fix incorrect use of argparse.ArgumentTypeError
* drbd-options: add units to error message

https://www.linbit.com/downloads/linstor/linstor-client-1.4.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000946c6705b3aab27f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div><br></div><div>Small client release, with mino=
r fixes.</div><div><br></div><div><div><font face=3D"monospace">python-lins=
tor v1.4.1<br>---------------------<br>=C2=A0*=C2=A0added SizeCalc.unit_to_=
str method</font><br></div><div><div><div><div><br></div><div><font size=3D=
"1"><font face=3D"monospace, monospace"><a href=3D"https://www.linbit.com/d=
ownloads/linstor/python-linstor-1.4.1.tar.gz">https://www.linbit.com/downlo=
ads/linstor/python-linstor-1.4.1.tar.gz</a></font></font></div></div><div><=
font size=3D"1"><br></font></div><div><div><font face=3D"monospace">linstor=
-client 1.4.1<br>--------------------<br>* migrate: remove unused AllowLarg=
erVolumeSize property<br>* fix incorrect use of argparse.ArgumentTypeError<=
br>* drbd-options: add units to error message</font><br></div><div><br></di=
v><div><font size=3D"1"><font face=3D"monospace, monospace"><a href=3D"http=
s://www.linbit.com/downloads/linstor/linstor-client-1.4.1.tar.gz">https://w=
ww.linbit.com/downloads/linstor/linstor-client-1.4.1.tar.gz</a></font></fon=
t></div></div></div><div><br></div><div>Linstor PPA:<br></div><div><div><a =
href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" r=
el=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/=
ubuntu/linbit-drbd9-stack</a><br></div><div><br></div><div>Best regards,</d=
iv><div>Rene</div></div></div></div></div>

--000000000000946c6705b3aab27f--
