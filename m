Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id C880F101AC67
	for <drbd-announce@lists.linbit.com>;
	Wed, 31 Oct 2018 14:53:46 +0100 (CET)
Received: by mail-wr1-f48.google.com with SMTP id d10-v6so16600148wrs.5
	for <drbd-announce@lists.linbit.com>;
	Wed, 31 Oct 2018 06:53:46 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 31 Oct 2018 14:53:35 +0100
Message-ID: <CAHmn2DN9bV2dd=JerOAdu3gqnkWhf7T1kmkt+0+WZwr7gzS_0w@mail.gmail.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000008503a8057986a129"
Subject: [DRBD-announce] Linstor-server v0.7.1
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

--0000000000008503a8057986a129
Content-Type: text/plain; charset="UTF-8"

Hi Everyone!

Just after yesterdays release we found a bug with deleting thin volumes,
that would always trigger AccessToDeletedData exceptions on the controller.
This is fixed with 0.7.1.
Sorry for the inconvenience.

linstor-server 0.7.1
--------------------
 * Fix: Deleting thin volumes didn't correctly clean up free space
information

http://www.linbit.com/downloads/linstor/linstor-server-0.7.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--0000000000008503a8057986a129
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Everyone!<div><br></d=
iv><div>Just after yesterdays release we found a bug with deleting thin vol=
umes, that would always trigger AccessToDeletedData exceptions on the contr=
oller. This is fixed with 0.7.1.</div><div>Sorry for the inconvenience.</di=
v><div><br></div><div><div><span style=3D"font-family:monospace,monospace;f=
ont-size:x-small">linstor-server 0.7.1</span><br></div><div><div><font face=
=3D"monospace, monospace" size=3D"1">--------------------</font></div><div>=
<font size=3D"1"><font face=3D"monospace, monospace">=C2=A0* Fix: Deleting =
thin volumes didn&#39;t correctly=C2=A0clean up free space information</fon=
t></font></div></div></div><div><font size=3D"1"><font face=3D"monospace, m=
onospace"><br></font></font></div><div><font face=3D"arial, helvetica, sans=
-serif" style=3D""><a href=3D"http://www.linbit.com/downloads/linstor/linst=
or-server-0.7.1.tar.gz" style=3D"">http://www.linbit.com/downloads/linstor/=
linstor-server-0.7.1.tar.gz</a></font><br></div><div><br></div><div><div>Li=
nstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linb=
it-drbd9-stack" target=3D"_blank">https://launchpad.net/~linbit/+archive/ub=
untu/linbit-drbd9-stack</a><br></div><div><br></div><div>Best regards,</div=
><div>Rene</div></div></div></div></div>

--0000000000008503a8057986a129--
