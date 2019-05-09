Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 291FA1028A61
	for <drbd-announce@lists.linbit.com>;
	Thu,  9 May 2019 13:13:05 +0200 (CEST)
Received: by mail-wm1-f54.google.com with SMTP id h11so2631367wmb.5
	for <drbd-announce@lists.linbit.com>;
	Thu, 09 May 2019 04:13:05 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 9 May 2019 13:12:53 +0200
Message-ID: <CAHmn2DPoMk7FBHyyFh24KEwyA0yTjkMEpgivOUD+TzYtoNPs1A@mail.gmail.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000b0e5b405887288b5"
Subject: [DRBD-announce] Linstor-server v0.9.7
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

--000000000000b0e5b405887288b5
Content-Type: text/plain; charset="UTF-8"

Hi!

This linstor release is mostly a bug fix release, some bugs in the new NVME
layer were fixed and some small additions and fixes in the REST-API, more
details below.

linstor-server 0.9.7
--------------------
 * Fixed: Volume definitions not deleted on satellite
 * Fixed: Race condition while creating volume definitions too fast
 * Fixed: Minor bug in NVME layer
 * Fixed: NVME issues if drbd-utils have not been installed
 * NVME: Added creating and deleting volumes while resource is up
 * NVME: Added storage pools to prio props for NVME PrefNic property
 * REST: updated to version 1.0.2, added /v1/storage-pool-definitions,
minor fixes
 * REST: default bind interface is now `::` ipv6 and ipv4
 * Use better default JVM memory options

https://www.linbit.com/downloads/linstor/linstor-server-0.9.7.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000b0e5b405887288b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>This linstor release is =
mostly a bug fix release, some bugs in the new NVME layer were fixed and so=
me small additions and fixes in the REST-API, more details below.</div><div=
><br></div><div><div><span style=3D"font-family:monospace,monospace;font-si=
ze:x-small">linstor-server 0.9.7</span></div><div><div><div><font face=3D"m=
onospace, monospace" size=3D"1">--------------------</font></div><div><span=
 style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Fixed:=
 Volume definitions not deleted on satellite</span></div><div><span style=
=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Fixed: Race =
condition while creating volume definitions too fast</span></div><div><span=
 style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Fixed:=
 Minor bug in NVME layer</span></div><div><span style=3D"font-family:monosp=
ace,monospace;font-size:x-small">=C2=A0* Fixed: NVME issues if drbd-utils h=
ave not been installed</span></div><div><span style=3D"font-family:monospac=
e,monospace;font-size:x-small">=C2=A0* NVME: Added creating and deleting vo=
lumes while resource is up</span></div><div><span style=3D"font-family:mono=
space,monospace;font-size:x-small">=C2=A0* NVME: Added storage pools to pri=
o props for NVME PrefNic property</span></div><div><span style=3D"font-fami=
ly:monospace,monospace;font-size:x-small">=C2=A0* REST: updated to version =
1.0.2, added /v1/storage-pool-definitions, minor fixes</span></div><div><sp=
an style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* REST=
: default bind interface is now `::` ipv6 and ipv4</span></div><div><span s=
tyle=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Use bett=
er default JVM memory options</span></div><div><br></div></div><div><font s=
ize=3D"1"><a href=3D"https://www.linbit.com/downloads/linstor/linstor-serve=
r-0.9.7.tar.gz">https://www.linbit.com/downloads/linstor/linstor-server-0.9=
.7.tar.gz</a></font></div></div></div><div><br></div><div>Linstor PPA:<br><=
a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack"=
 rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archiv=
e/ubuntu/linbit-drbd9-stack</a><br></div><div><br></div>Best regards,<div>R=
ene</div></div>

--000000000000b0e5b405887288b5--
