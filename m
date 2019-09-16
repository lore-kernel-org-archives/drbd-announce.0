Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 05E3D4203B9
	for <drbd-announce@lists.linbit.com>;
	Mon, 16 Sep 2019 11:29:54 +0200 (CEST)
Received: by mail-wm1-f42.google.com with SMTP id i16so3358768wmd.3
	for <drbd-announce@lists.linbit.com>;
	Mon, 16 Sep 2019 02:29:54 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 16 Sep 2019 11:21:54 +0200
Message-ID: <CAHmn2DPLvXsY5B1fsybBC7=Xy6seCxdBirpf7ZM-_8zW0VZcGA@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000295a900592a823cd"
Subject: [DRBD-announce] linstor-server 1.1.2 release
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

--000000000000295a900592a823cd
Content-Type: text/plain; charset="UTF-8"

Hi!

Another bugfix release, that will fix loading of resource connection data,
this bug was introduced with 1.1.0 while database loading was restructured
to support
ETCD.

linstor-server 1.1.2
--------------------
 * Fixed database loading of node/resource/volume-connection data
 * Allow deleting resource that only has diskless resource in deleting state
 * Better error handling in resource group spawn api
 * Upgraded jackson-databind to latest version

https://www.linbit.com/downloads/linstor/linstor-server-1.1.2.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000295a900592a823cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Another bugfix release, that will f=
ix loading of resource connection data,</div><div>this bug was introduced w=
ith 1.1.0 while database loading was restructured to support</div><div>ETCD=
.</div><div><br></div><div><div><div><span style=3D"font-family:monospace,m=
onospace;font-size:x-small">linstor-server 1.1.2</span></div><div><div><div=
><font face=3D"monospace, monospace" size=3D"1">--------------------</font>=
</div><div><span style=3D"font-family:monospace,monospace;font-size:x-small=
">=C2=A0* Fixed database loading of node/resource/volume-connection data</s=
pan></div><div><span style=3D"font-family:monospace,monospace;font-size:x-s=
mall">=C2=A0* Allow deleting resource that only has diskless resource in de=
leting state</span></div><div><span style=3D"font-family:monospace,monospac=
e;font-size:x-small">=C2=A0* Better error handling in resource group spawn =
api</span></div><div><span style=3D"font-family:monospace,monospace;font-si=
ze:x-small">=C2=A0* Upgraded jackson-databind to latest version</span></div=
><div><br></div></div><div><font size=3D"1" face=3D"monospace"><a href=3D"h=
ttps://www.linbit.com/downloads/linstor/linstor-server-1.1.2.tar.gz">https:=
//www.linbit.com/downloads/linstor/linstor-server-1.1.2.tar.gz</a></font></=
div></div></div><div><br></div><div><div>Linstor PPA:<br><a href=3D"https:/=
/launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferre=
r" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-d=
rbd9-stack</a><br></div><div><br></div><div>Best regards,</div><div>Rene</d=
iv></div></div></div>

--000000000000295a900592a823cd--
