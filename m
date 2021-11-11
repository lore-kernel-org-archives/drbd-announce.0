Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id DC1994201EA
	for <drbd-announce@lists.linbit.com>;
	Thu, 11 Nov 2021 15:43:52 +0100 (CET)
Received: by mail-ed1-f46.google.com with SMTP id j21so24874908edt.11
	for <drbd-announce@lists.linbit.com>;
	Thu, 11 Nov 2021 06:43:52 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 11 Nov 2021 15:43:41 +0100
Message-ID: <CAHmn2DNeg8_9a+G5xu7hetTtou=3uYMnZNE589a2ZMeZGLxdqg@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000064daf05d0845f1f"
Subject: [DRBD-announce] linstor-server release 1.16.0
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

--000000000000064daf05d0845f1f
Content-Type: text/plain; charset="UTF-8"

Hi!

And here we have the final release of linstor-server.

As said in rc.2, the new feature of this release is being able to use
Kubernetes Custom Resource Definitions as a database storage backend.

Have your kubernetes config ready on the controller host and set the
following
in your linstor.toml:

[db]
  connection_url = "k8s"


We also have a bunch of bug fixes from the 1.15.0 release:


linstor-server 1.16.0
---------------------
 * Added support for Kubernets CRD storage backend
 * Added /stats REST endpoint for object counts
 * Added snapshot support SPDK
 * Satellite waits for drbd9 module now
 * LVM-Thin correctly set discard-zeroes-if-aligned
 * Fixed deleting/recreating remotes
 * Fixed possible ACE using autoplacer JS selector
 * Fixed resource-group adjust-all without body fail
 * Fixed clone status never finish if node count doesn't match resource
count
 * Fixed persistence of some transaction objects
 * Fixed backup shipping multiple volumes
 * Fixed backup shipping if ports are already used
 * API-Version 1.11.0

https://pkg.linbit.com//downloads/linstor/linstor-server-1.16.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000064daf05d0845f1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>And here we have the fin=
al release of linstor-server.</div><div><br></div><div>As said in rc.2, the=
 new feature of this release is being able to use</div><div>Kubernetes Cust=
om Resource Definitions as a database storage backend.</div><div><br></div>=
<div>Have your kubernetes config ready on the controller host and set the f=
ollowing</div><div>in your linstor.toml:</div><div><br></div><div><span sty=
le=3D"font-family:monospace">[db]</span><br style=3D"font-family:monospace"=
><span style=3D"font-family:monospace">=C2=A0 connection_url =3D &quot;k8s&=
quot;</span><br></div><div><br></div><div><br></div><div>We also have a bun=
ch of bug fixes from the 1.15.0 release:</div><div><br></div><div><br></div=
><div><font face=3D"monospace">linstor-server 1.16.0<br>-------------------=
--<br>=C2=A0* Added support for Kubernets CRD storage backend<br>=C2=A0* Ad=
ded /stats REST endpoint for object counts<br>=C2=A0* Added snapshot suppor=
t SPDK<br>=C2=A0* Satellite waits for drbd9 module now<br>=C2=A0* LVM-Thin =
correctly set discard-zeroes-if-aligned<br>=C2=A0* Fixed deleting/recreatin=
g remotes<br>=C2=A0* Fixed possible ACE using autoplacer JS selector<br>=C2=
=A0* Fixed resource-group adjust-all without body fail<br>=C2=A0* Fixed clo=
ne status never finish if node count doesn&#39;t match resource count<br>=
=C2=A0* Fixed persistence of some transaction objects<br>=C2=A0* Fixed back=
up shipping multiple volumes<br>=C2=A0* Fixed backup shipping if ports are =
already used<br>=C2=A0* API-Version 1.11.0</font><br></div><div><br></div><=
div><a href=3D"https://pkg.linbit.com//downloads/linstor/linstor-server-1.1=
6.0.tar.gz">https://pkg.linbit.com//downloads/linstor/linstor-server-1.16.0=
.tar.gz</a><br></div><div><br></div><div><br></div><div><div><div><div>Lins=
tor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit=
-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~l=
inbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div=
>Cheers,<br></div><div>Rene</div></div></div></div>

--000000000000064daf05d0845f1f--
