Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 6F326103B4B7
	for <drbd-announce@lists.linbit.com>;
	Mon, 17 Dec 2018 18:37:30 +0100 (CET)
Received: by mail-wm1-f54.google.com with SMTP id d15so63085wmb.3
	for <drbd-announce@lists.linbit.com>;
	Mon, 17 Dec 2018 09:37:30 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 17 Dec 2018 18:37:20 +0100
Message-ID: <CAHmn2DM=mKmKM+E6HTX74crd5mfF+kWpopMBDOeizKgf=YGYSA@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000029e873057d3b3ca6"
Subject: [DRBD-announce] Linstor-server v0.7.4, linstor-client 0.7.3 release
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

--00000000000029e873057d3b3ca6
Content-Type: text/plain; charset="UTF-8"

Hi Linstor-community!

New feature in this release is an added option for the toggle disk command
to move a resource to another node without temporarily reducing it's
replication count.
Additionally there have been a bunch of bug fixes in this release.

Details:

linstor-server 0.7.4
--------------------
 * Added migrate disk option to toggle disk command
 * Fixed SQL column sizes inconsistencies
 * Snapshot command fixes
 * Internal reactor library handling fixes
 * Allow correct state reporting on nodes with more than 256 resources
 * Satellite checks now for correct DRBD version
 * Allocated thin volume space is now reported
 * Fixed failure of controller on heavy load
 * Better resource ready detection
 * Correctly restore node id on snapshot restore

http://www.linbit.com/downloads/linstor/linstor-server-0.7.4.tar.gz

linstor-client/python-linstor 0.7.3
-----------------------------------
 * Added migrate disk option to toggle disk command
 * Improved high level Resource object API
 * Added storage pool and node response objects/interface
 * Added MultiLinstor API object, used for failover to another controller
 * Optimized table rendering, improved from 3s to 0.7s for 2000 resources
 * linstor client will now fall-back into interactive mode

http://www.linbit.com/downloads/linstor/python-linstor-0.7.3.tar.gz
http://www.linbit.com/downloads/linstor/linstor-client-0.7.3.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--00000000000029e873057d3b3ca6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Linstor-community!<div><br></div><div><div>New feature =
in this release is an added option for the toggle disk command</div><div>to=
 move a resource to another node without temporarily reducing it&#39;s repl=
ication count.</div><div>Additionally there have been a bunch of bug fixes =
in this release.</div><div><br></div><div>Details:</div><div><br></div><div=
><div><span style=3D"font-family:monospace,monospace;font-size:x-small">lin=
stor-server 0.7.4</span><br></div><div><div><font face=3D"monospace, monosp=
ace" size=3D"1">--------------------</font></div><div><font size=3D"1"><fon=
t face=3D"monospace, monospace">=C2=A0* Added migrate disk option to toggle=
 disk command</font></font></div><div><font size=3D"1"><font face=3D"monosp=
ace, monospace">=C2=A0* Fixed SQL column sizes inconsistencies</font></font=
></div><div><font size=3D"1"><font face=3D"monospace, monospace">=C2=A0* Sn=
apshot command fixes<br>=C2=A0* Internal reactor library handling fixes<br>=
=C2=A0* Allow correct state reporting on nodes with more than 256 resources=
</font></font></div></div></div><div><font size=3D"1"><font face=3D"monospa=
ce, monospace">=C2=A0* Satellite checks now for correct DRBD version</font>=
</font></div><div><font size=3D"1"><font face=3D"monospace, monospace">=C2=
=A0* Allocated thin volume space is now reported<br>=C2=A0* Fixed failure o=
f controller on heavy load<br>=C2=A0* Better resource ready detection</font=
></font></div><div><font size=3D"1"><font face=3D"monospace, monospace">=C2=
=A0* Correctly restore node id on snapshot restore</font></font></div><div>=
<font size=3D"1"><font face=3D"monospace, monospace"><br></font></font></di=
v><div><font size=3D"1"><font face=3D"monospace, monospace"><a href=3D"http=
://www.linbit.com/downloads/linstor/linstor-server-0.7.4.tar.gz" target=3D"=
_blank">http://www.linbit.com/downloads/linstor/linstor-server-0.7.4.tar.gz=
</a></font><br></font></div><div><font size=3D"1"><span style=3D"font-famil=
y:monospace,monospace"><br></span></font></div><div><font size=3D"1"><span =
style=3D"font-family:monospace,monospace">linstor-client/python-linstor 0.7=
.3</span></font></div><div><font size=3D"1"><span style=3D"font-family:mono=
space,monospace">-----------------------------------</span></font></div><di=
v><span style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0*=
 Added migrate disk option to toggle disk command</span><font size=3D"1"><f=
ont face=3D"monospace, monospace"><br></font></font></div><div><font size=
=3D"1"><font face=3D"monospace, monospace">=C2=A0* Improved high level Reso=
urce object API</font></font></div><div><font size=3D"1"><span style=3D"fon=
t-family:monospace,monospace">=C2=A0* Added storage pool and node response =
objects/interface</span></font></div><div><font size=3D"1"><span style=3D"f=
ont-family:monospace,monospace">=C2=A0* Added MultiLinstor API object, used=
 for failover to another controller</span></font></div><div><font size=3D"1=
"><span style=3D"font-family:monospace,monospace">=C2=A0* Optimized table r=
endering, improved from 3s to 0.7s for 2000 resources</span></font></div><d=
iv><font size=3D"1"><span style=3D"font-family:monospace,monospace">=C2=A0*=
 linstor client will now fall-back into interactive mode</span></font></div=
><div><font face=3D"monospace, monospace" size=3D"1"><br></font></div><div>=
<font face=3D"monospace, monospace" size=3D"1"><a href=3D"http://www.linbit=
.com/downloads/linstor/python-linstor-0.7.3.tar.gz" target=3D"_blank">http:=
//www.linbit.com/downloads/linstor/python-linstor-0.7.3.tar.gz</a><br></fon=
t></div><div><font face=3D"monospace, monospace" size=3D"1"><a href=3D"http=
://www.linbit.com/downloads/linstor/linstor-client-0.7.3.tar.gz" target=3D"=
_blank">http://www.linbit.com/downloads/linstor/linstor-client-0.7.3.tar.gz=
</a></font><br></div><div><br></div><div>Linstor PPA:<br><a href=3D"https:/=
/launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferre=
r" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-d=
rbd9-stack</a><br></div><div><br></div><div>Best regards,</div><div>Rene</d=
iv></div></div>

--00000000000029e873057d3b3ca6--
