Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 5D67E4203C2
	for <drbd-announce@lists.linbit.com>;
	Tue, 10 Sep 2019 17:07:13 +0200 (CEST)
Received: by mail-wr1-f44.google.com with SMTP id a11so11235124wrx.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 10 Sep 2019 08:07:13 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 10 Sep 2019 17:07:01 +0200
Message-ID: <CAHmn2DOFmU+3fXUZL+biwa1vFXnOBDEnYcXcfjQPQv5N9bkkyw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000055e18b0592344281"
Subject: [DRBD-announce] python-linstor, linstor-client 1.0.2 release
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

--00000000000055e18b0592344281
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is a bug fix release for the client tools for LINSTOR:

python-linstor 1.0.2
--------------------
 * Added strict SSL certificate check
 * Fixed snapshots flag access if None
 * Fixed race condition while deleting resource definitions
 * Fixed high-level API deleting snapshots on node deactivate

https://www.linbit.com/downloads/linstor/python-linstor-1.0.2.tar.gz

linstor-client 1.0.2
--------------------
 * Added support for strict SSL certificate check
 * Fixed resource connections path list command
 * Storage pool support snapshots info on FILE providers
 * Fixed --version writing output to stderr

https://www.linbit.com/downloads/linstor/linstor-client-1.0.2.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--00000000000055e18b0592344281
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Here is a bug fix release for the c=
lient tools for LINSTOR:<div><br></div><div><div><div><div><div><font size=
=3D"1"><span style=3D"font-family:monospace,monospace">python-linstor 1.0.2=
</span></font></div><div><font size=3D"1"><span style=3D"font-family:monosp=
ace,monospace">--------------------</span></font></div><div><font face=3D"m=
onospace, monospace" size=3D"1">=C2=A0* Added strict SSL certificate check<=
/font></div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* Fix=
ed snapshots flag access if None</font></div><div><font face=3D"monospace, =
monospace" size=3D"1">=C2=A0* Fixed race condition while deleting resource =
definitions</font></div></div><div><font face=3D"monospace, monospace" size=
=3D"1">=C2=A0* Fixed high-level API deleting snapshots on node=C2=A0deactiv=
ate</font></div><div><br></div><div><font size=3D"1"><font face=3D"monospac=
e, monospace"><a href=3D"https://www.linbit.com/downloads/linstor/python-li=
nstor-1.0.2.tar.gz" target=3D"_blank">https://www.linbit.com/downloads/lins=
tor/python-linstor-1.0.2.tar.gz</a></font></font></div></div><div><font siz=
e=3D"1"><br></font></div><div><div><div><font size=3D"1"><span style=3D"fon=
t-family:monospace,monospace">linstor-client 1.0.2</span></font></div><div>=
<font size=3D"1"><span style=3D"font-family:monospace,monospace">----------=
----------</span></font></div><div><span style=3D"font-family:monospace,mon=
ospace;font-size:x-small">=C2=A0* Added support for strict SSL certificate =
check</span></div><div><span style=3D"font-family:monospace,monospace;font-=
size:x-small">=C2=A0* Fixed resource connections path list command</span></=
div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* Storage poo=
l support snapshots info on FILE providers</font></div></div><div><font fac=
e=3D"monospace, monospace" size=3D"1">=C2=A0* Fixed --version writing outpu=
t to stderr</font></div><div><br></div><div><font size=3D"1"><font face=3D"=
monospace, monospace"><a href=3D"https://www.linbit.com/downloads/linstor/l=
instor-client-1.0.2.tar.gz" target=3D"_blank">https://www.linbit.com/downlo=
ads/linstor/linstor-client-1.0.2.tar.gz</a></font></font></div></div></div>=
<div><br></div><div><br></div><div><div>Linstor PPA:<br><a href=3D"https://=
launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer=
" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-dr=
bd9-stack</a><br></div><div><br></div><div>Best regards,</div><div>Rene</di=
v></div></div></div></div>

--00000000000055e18b0592344281--
