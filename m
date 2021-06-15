Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 5C485420307
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Jun 2021 16:10:02 +0200 (CEST)
Received: by mail-wr1-f53.google.com with SMTP id y7so18493495wrh.7
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Jun 2021 07:10:02 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 15 Jun 2021 16:09:50 +0200
Message-ID: <CAHmn2DOf0x6sL=gv=B31MUuf-yRygK=hjfEUNnCzEnRfdyHZEQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000a324fd05c4ce87a2"
Subject: [DRBD-announce] linstor-server release candidate 1.13.0-rc.1
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

--000000000000a324fd05c4ce87a2
Content-Type: text/plain; charset="UTF-8"

Hi!

We decided to skip any further 1.12 release and just move forward to the
1.13 series,
but this time with a release candidate.
We reverted the somewhat dangerous fixed DRBD size patches and only included
safe bug fixes and a new feature that is BCache layer support, for
distributions that
support BCache.

If no serious bugs get reported, we will call this release final on next
Monday.

linstor-server 1.13.0rc1
---------------------
 * BCache support for kernel >= 5.x
 * Prometheus volume metrics now contain device_path label
 * Reverted potential dangerous fixed size volumes for DRBD
 * Updated to guice 5.0.1
 * Fixed incorrect resize conditions
 * Fixed finding active resource
 * Fixed deleting deleting resources with external metadata
 * API-Version 1.8.0

https://www.linbit.com/downloads/linstor/linstor-server-1.13.0-rc.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000a324fd05c4ce87a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>We decided to skip any f=
urther 1.12 release and just move forward to the 1.13 series,</div><div>but=
 this time with a release candidate.</div><div>We reverted the somewhat dan=
gerous fixed DRBD size patches and only included</div><div>safe bug fixes a=
nd a new feature that is BCache layer support, for distributions that</div>=
<div>support BCache.</div><div><br></div><div>If no serious bugs get report=
ed, we will call this release final on next Monday.</div><div><br></div><di=
v><font face=3D"monospace">linstor-server 1.13.0rc1<br>--------------------=
-<br>=C2=A0* BCache support for kernel &gt;=3D 5.x<br>=C2=A0* Prometheus vo=
lume metrics now contain device_path label<br>=C2=A0* Reverted potential da=
ngerous fixed size volumes for DRBD<br>=C2=A0* Updated to guice 5.0.1<br>=
=C2=A0* Fixed incorrect resize conditions<br>=C2=A0* Fixed finding active r=
esource<br>=C2=A0* Fixed deleting deleting resources with external metadata=
<br>=C2=A0* API-Version 1.8.0</font><br></div><div><font face=3D"monospace"=
><br></font></div><div><div><font face=3D"monospace"><a href=3D"https://www=
.linbit.com/downloads/linstor/linstor-server-1.13.0-rc.1.tar.gz">https://ww=
w.linbit.com/downloads/linstor/linstor-server-1.13.0-rc.1.tar.gz</a></font>=
<br></div><div><br></div><div><div><div>Linstor PPA:<br><a href=3D"https://=
launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer=
" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-dr=
bd9-stack</a></div></div><div><br></div><div>Cheers,<br></div><div>Rene</di=
v></div></div></div>

--000000000000a324fd05c4ce87a2--
