Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 0AF231028A66
	for <drbd-announce@lists.linbit.com>;
	Tue, 18 Jun 2019 13:57:14 +0200 (CEST)
Received: by mail-wr1-f42.google.com with SMTP id d18so13661840wrs.5
	for <drbd-announce@lists.linbit.com>;
	Tue, 18 Jun 2019 04:57:14 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 18 Jun 2019 13:57:03 +0200
Message-ID: <CAHmn2DPtfsH_vtuHP+ej-g6M4xVktgB97aB_VGZ8j5c_RxM1Cg@mail.gmail.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000048ce82058b97d02d"
Subject: [DRBD-announce] python-linstor 0.9.7, linstor-client 0.9.7
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

--00000000000048ce82058b97d02d
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is an absolute low priority linstor-client release, containing a small
bug fix in the high level API and a python2/3 bug fix.

python-linstor 0.9.7
--------------------
 * Fixed: ApiCallResponse.is_error() didn't work if used with code argument
 * Fixed: Correct import of ConfigParser in python2/3
 * Code cleanup and docstring fixes

https://www.linbit.com/downloads/linstor/python-linstor-0.9.7.tar.gz

linstor-client 0.9.7
--------------------
 * Docker image is now based on UBI image
 * Code cleanup and docstring fixes

https://www.linbit.com/downloads/linstor/linstor-client-0.9.7.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--00000000000048ce82058b97d02d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Here is an absolute low priority li=
nstor-client release, containing a small</div><div>bug fix in the high leve=
l API and a python2/3 bug fix.</div><div><br></div><div><div><div><div><fon=
t size=3D"1"><span style=3D"font-family:monospace,monospace">python-linstor=
 0.9.7</span></font></div><div><font size=3D"1"><span style=3D"font-family:=
monospace,monospace">--------------------</span></font></div><div><font fac=
e=3D"monospace, monospace" size=3D"1">=C2=A0* Fixed: ApiCallResponse.is_err=
or() didn&#39;t work if used with code argument</font></div></div><div><spa=
n style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Fixed=
: Correct import of ConfigParser in python2/3</span></div><div><span style=
=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Code cleanup=
 and docstring fixes</span></div><div><br></div><div><font size=3D"1"><font=
 face=3D"monospace, monospace"><a href=3D"https://www.linbit.com/downloads/=
linstor/python-linstor-0.9.7.tar.gz">https://www.linbit.com/downloads/linst=
or/python-linstor-0.9.7.tar.gz</a></font></font></div></div><div><font size=
=3D"1"><br></font></div><div><div><div><font size=3D"1"><span style=3D"font=
-family:monospace,monospace">linstor-client 0.9.7</span></font></div><div><=
font size=3D"1"><span style=3D"font-family:monospace,monospace">-----------=
---------</span></font></div><div><font face=3D"monospace, monospace" size=
=3D"1">=C2=A0* Docker image is now based on UBI image</font></div><div><fon=
t face=3D"monospace, monospace" size=3D"1">=C2=A0* Code cleanup and docstri=
ng fixes</font></div></div><div><br></div><div><font size=3D"1"><font face=
=3D"monospace, monospace"><a href=3D"https://www.linbit.com/downloads/linst=
or/linstor-client-0.9.7.tar.gz">https://www.linbit.com/downloads/linstor/li=
nstor-client-0.9.7.tar.gz</a></font></font></div></div></div><div><font siz=
e=3D"1"><br></font></div><div><div>Linstor PPA:<br><a href=3D"https://launc=
hpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" tar=
get=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-s=
tack</a><br></div><div><br></div><div>Best regards,</div><div>Rene</div></d=
iv></div>

--00000000000048ce82058b97d02d--
