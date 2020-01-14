Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id A01F74202D6
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Jan 2020 17:12:27 +0100 (CET)
Received: by mail-wr1-f48.google.com with SMTP id y17so12759712wrh.5
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Jan 2020 08:12:27 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 14 Jan 2020 16:42:05 +0100
Message-ID: <CAHmn2DPBxDuz-AY1q7K+6fifbJr8WE1r0g=zuYvmwh+ZJk4T7Q@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000c04c52059c1b6f6b"
Subject: [DRBD-announce] python-linstor, linstor-client 1.0.9 release
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

--000000000000c04c52059c1b6f6b
Content-Type: text/plain; charset="UTF-8"

Hi!

This release has a rather big packaging change, per default python3 will
now be used.
The library was ported a long time ago to python3, while still running
python2 per default, but now
as python2 is EoL, we will per default run on python3 now.
Linbit provided packages will still use python2 on rhel/centos7, others
will use python3.

The high level API got a new object for resource groups and as mentioned
last time the storage pool definition commands were removed from the client.

python-linstor 1.0.9
--------------------
 * High level API resource groups object
 * Removed swordfish support
 * Added resource groups query-max-volume-size

https://www.linbit.com/downloads/linstor/python-linstor-1.0.9.tar.gz

linstor-client 1.0.9
--------------------
 * Removed storage-pool-definition commands
 * Unhide physical-storage commands
 * Added resource groups query-max-volume-size command
 * Added gross size flag for volume definitions

https://www.linbit.com/downloads/linstor/linstor-client-1.0.9.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000c04c52059c1b6f6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>This release has a rather big packa=
ging change, per default python3 will now be used.</div><div>The library wa=
s ported a long time ago to python3, while still running python2 per defaul=
t, but now</div><div>as python2 is EoL, we will per default run on python3 =
now.</div><div>Linbit provided packages will still use python2 on rhel/cent=
os7, others will use python3.</div><div><br></div><div>The high level API g=
ot a new object for resource groups and as mentioned last time the storage =
pool definition commands were removed from the client.</div><div><br></div>=
<div><div><div><div><div><font size=3D"1"><span style=3D"font-family:monosp=
ace,monospace">python-linstor 1.0.9</span></font></div><div><font size=3D"1=
"><span style=3D"font-family:monospace,monospace">--------------------</spa=
n></font></div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* =
High level API resource groups object</font></div></div><div><font face=3D"=
monospace, monospace" size=3D"1">=C2=A0* Removed swordfish support</font></=
div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* Added resou=
rce groups query-max-volume-size</font></div><div><br></div><div><font size=
=3D"1"><font face=3D"monospace, monospace"><a href=3D"https://www.linbit.co=
m/downloads/linstor/python-linstor-1.0.9.tar.gz">https://www.linbit.com/dow=
nloads/linstor/python-linstor-1.0.9.tar.gz</a></font></font></div></div><di=
v><font size=3D"1"><br></font></div><div><div><div><font size=3D"1"><span s=
tyle=3D"font-family:monospace,monospace">linstor-client 1.0.9</span></font>=
</div><div><font size=3D"1"><span style=3D"font-family:monospace,monospace"=
>--------------------</span></font></div><div><font face=3D"monospace"><spa=
n style=3D"font-size:x-small">=C2=A0*</span><font size=3D"1">=C2=A0Removed =
storage-pool-definition commands</font></font></div></div><div><font face=
=3D"monospace"><font size=3D"1">=C2=A0* Unhide physical-storage commands</f=
ont></font></div><div><font face=3D"monospace"><font size=3D"1">=C2=A0* Add=
ed resource groups query-max-volume-size command</font></font></div><div><f=
ont face=3D"monospace"><font size=3D"1">=C2=A0* Added gross size flag for v=
olume definitions</font></font></div><div><br></div><div><font size=3D"1"><=
font face=3D"monospace, monospace"><a href=3D"https://www.linbit.com/downlo=
ads/linstor/linstor-client-1.0.9.tar.gz">https://www.linbit.com/downloads/l=
instor/linstor-client-1.0.9.tar.gz</a></font></font></div></div></div><div>=
<br></div><div>Linstor PPA:<br></div><div><div><a href=3D"https://launchpad=
.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=
=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stac=
k</a><br></div><div><br></div><div>Best regards,</div><div>Rene</div></div>=
</div></div>

--000000000000c04c52059c1b6f6b--
