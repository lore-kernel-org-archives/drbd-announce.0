Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 939F742011A
	for <drbd-announce@lists.linbit.com>;
	Thu, 28 May 2020 16:36:19 +0200 (CEST)
Received: by mail-wm1-f43.google.com with SMTP id l26so3395796wme.3
	for <drbd-announce@lists.linbit.com>;
	Thu, 28 May 2020 07:36:19 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 28 May 2020 16:36:07 +0200
Message-ID: <CAHmn2DNyK5qvOGKqe3nqqQCfxjKK2vZfqguCsqLV3KuCWoWgNQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000062b44b05a6b6408c"
Subject: [DRBD-announce] python-linstor, linstor-client 1.1.2 release
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

--00000000000062b44b05a6b6408c
Content-Type: text/plain; charset="UTF-8"

Hi,

python-linstor had a small bug with python2.7 and storage pool select
filters, this version fixes this.
No changes to linstor-client except that it refers to the new
python-linstor library.

python-linstor v1.1.2
---------------------
 * Fix storage pool list argument with python 2.7

https://www.linbit.com/downloads/linstor/python-linstor-1.1.2.tar.gz

linstor-client v1.1.2
---------------------
 * refer latest python-linstor 1.1.2, for py2.7 fix

https://www.linbit.com/downloads/linstor/linstor-client-1.1.2.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--00000000000062b44b05a6b6408c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div><br></div><div>python-linstor had a small bug =
with python2.7 and storage pool select filters, this version fixes this.</d=
iv><div>No changes to linstor-client except that it refers to the new pytho=
n-linstor library.</div><div><br></div><div><div><font face=3D"monospace">p=
ython-linstor v1.1.2<br>---------------------<br>=C2=A0* Fix storage pool l=
ist argument with python 2.7</font><br></div><div><div><div><div><br></div>=
<div><font size=3D"1"><font face=3D"monospace, monospace"><a href=3D"https:=
//www.linbit.com/downloads/linstor/python-linstor-1.1.2.tar.gz">https://www=
.linbit.com/downloads/linstor/python-linstor-1.1.2.tar.gz</a></font></font>=
</div></div><div><font size=3D"1"><br></font></div><div><div><font face=3D"=
monospace">linstor-client v1.1.2<br>---------------------<br>=C2=A0* refer =
latest python-linstor 1.1.2, for py2.7 fix</font><br></div><div><br></div><=
div><font size=3D"1"><font face=3D"monospace, monospace"><a href=3D"https:/=
/www.linbit.com/downloads/linstor/linstor-client-1.1.2.tar.gz">https://www.=
linbit.com/downloads/linstor/linstor-client-1.1.2.tar.gz</a></font></font><=
/div></div></div><div><br></div><div>Linstor PPA:<br></div><div><div><a hre=
f=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=
=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/ub=
untu/linbit-drbd9-stack</a><br></div><div><br></div><div>Best regards,</div=
><div>Rene</div></div></div></div></div>

--00000000000062b44b05a6b6408c--
