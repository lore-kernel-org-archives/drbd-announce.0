Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id F35994205FC
	for <drbd-announce@lists.linbit.com>;
	Thu,  4 Nov 2021 15:42:04 +0100 (CET)
Received: by mail-ed1-f46.google.com with SMTP id g14so22004897edz.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 04 Nov 2021 07:42:04 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 4 Nov 2021 15:41:44 +0100
Message-ID: <CAHmn2DMyAk6fJP8OnS82vGiq4ecg6n+DbF5ZZnmR0x=1UQwneQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000030ead805cff787b3"
Subject: [DRBD-announce] linstor-server release candidate 1.16.0-rc.3
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

--00000000000030ead805cff787b3
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is a new release candidate for the next feature Linstor version, with
2 more fixes:
 * Fixed clone status never finish if node count doesn't match resource
count
 * LVM-Thin correctly set discard-zeroes-if-aligned

We expect a final release of 1.16.0 next week.

For other changes see as usual the changes list:

linstor-server 1.16.0-rc.3
--------------------------
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
 * API-Version 1.11.0

https://pkg.linbit.com//downloads/linstor/linstor-server-1.16.0-rc.3.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--00000000000030ead805cff787b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Here is a new release ca=
ndidate for the next feature Linstor version, with 2 more fixes:</div><div>=
<span style=3D"font-family:monospace">=C2=A0* Fixed clone status never fini=
sh if node count doesn&#39;t match resource count</span><br></div><div><spa=
n style=3D"font-family:monospace">=C2=A0* LVM-Thin correctly set discard-ze=
roes-if-aligned</span><span style=3D"font-family:monospace"><br></span></di=
v><div><br></div><div>We expect a final release of 1.16.0 next week.</div><=
div><br></div><div>For other changes see as usual the changes list:</div><d=
iv><br></div><div><font face=3D"monospace">linstor-server 1.16.0-rc.3<br>--=
------------------------<br>=C2=A0* Added support for Kubernets CRD storage=
 backend<br>=C2=A0* Added /stats REST endpoint for object counts<br>=C2=A0*=
 Added snapshot support SPDK<br>=C2=A0* Satellite waits for drbd9 module no=
w<br>=C2=A0* LVM-Thin correctly set discard-zeroes-if-aligned<br>=C2=A0* Fi=
xed deleting/recreating remotes<br>=C2=A0* Fixed possible ACE using autopla=
cer JS selector<br>=C2=A0* Fixed resource-group adjust-all without body fai=
l<br>=C2=A0* Fixed clone status never finish if node count doesn&#39;t matc=
h resource count<br>=C2=A0* API-Version 1.11.0</font><br></div><div><br></d=
iv><div><a href=3D"https://pkg.linbit.com//downloads/linstor/linstor-server=
-1.16.0-rc.3.tar.gz">https://pkg.linbit.com//downloads/linstor/linstor-serv=
er-1.16.0-rc.3.tar.gz</a><br></div><div><br></div><div><br></div><div><div>=
<div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive=
/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://la=
unchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div>=
<br></div><div>Cheers,<br></div><div>Rene</div></div></div></div>

--00000000000030ead805cff787b3--
