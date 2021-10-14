Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B63FE420FE1
	for <drbd-announce@lists.linbit.com>;
	Thu, 14 Oct 2021 15:13:18 +0200 (CEST)
Received: by mail-ed1-f54.google.com with SMTP id y30so7588239edi.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 14 Oct 2021 06:13:18 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 14 Oct 2021 15:13:03 +0200
Message-ID: <CAHmn2DN8RUbumWH8sdK8gr3K5OYJ4cc0jeWp5m4gSUit_+pKhw@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000056407c05ce4fd797"
Subject: [DRBD-announce] linstor-server release candidate 1.16.0-rc.2
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

--00000000000056407c05ce4fd797
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is a new release candidate for the next feature Linstor version, this
version
brings support for Kubernetes Custom Resource Definitions as database
storage backend.
So the linstor-controller data can now be stored directly within Kubernetes.

linstor.toml:
[db]
  connection_url = "k8s"

For other changes see as usual the changes list:

linstor-server 1.16.0-rc.2
--------------------------
 * Added support for Kubernets CRD storage backend
 * Added /stats REST endpoint for object counts
 * Added snapshot support SPDK
 * Fixed deleting/recreating remotes
 * Fixed possible ACE using autoplacer JS selector
 * Fixed resource-group adjust-all without body fail
 * API-Version 1.11.0

https://pkg.linbit.com//downloads/linstor/linstor-server-1.16.0-rc.2.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--00000000000056407c05ce4fd797
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Here is a new release ca=
ndidate for the next feature Linstor version, this version</div><div>brings=
 support for Kubernetes Custom Resource Definitions as database storage bac=
kend.</div><div>So the linstor-controller data can now be stored directly w=
ithin Kubernetes.</div><div><br></div><div>linstor.toml:</div><div><font fa=
ce=3D"monospace">[db]<br>=C2=A0 connection_url =3D &quot;k8s&quot;<br></fon=
t></div><div><br></div><div>For other changes see as usual the changes list=
:</div><div><br></div><div><font face=3D"monospace">linstor-server 1.16.0-r=
c.2<br>--------------------------<br>=C2=A0* Added support for Kubernets CR=
D storage backend<br>=C2=A0* Added /stats REST endpoint for object counts<b=
r>=C2=A0* Added snapshot support SPDK<br>=C2=A0* Fixed deleting/recreating =
remotes<br>=C2=A0* Fixed possible ACE using autoplacer JS selector<br>=C2=
=A0* Fixed resource-group adjust-all without body fail<br>=C2=A0* API-Versi=
on 1.11.0</font><br></div><div><br></div><div><a href=3D"https://pkg.linbit=
.com//downloads/linstor/linstor-server-1.16.0-rc.2.tar.gz">https://pkg.linb=
it.com//downloads/linstor/linstor-server-1.16.0-rc.2.tar.gz</a><br></div><d=
iv><br></div><div><br></div><div><div><div><div>Linstor PPA:<br><a href=3D"=
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"no=
referrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/l=
inbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,<br></div><div>=
Rene</div></div></div></div>

--00000000000056407c05ce4fd797--
