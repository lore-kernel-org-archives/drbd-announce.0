Return-Path: <philipp.reisner@linbit.com>
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com
	[209.85.166.172])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4877C4203E3
	for <drbd-announce@lists.linbit.com>;
	Mon,  8 Jun 2020 17:21:46 +0200 (CEST)
Received: by mail-il1-f172.google.com with SMTP id z2so17121321ilq.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 08 Jun 2020 08:21:45 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 8 Jun 2020 17:21:33 +0200
Message-ID: <CADGDV=WHmEEHA_vbDPUepBTGot+Jn-froEGz0JTtwAZ6mwAu-g@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000002cfd8f05a7942b1f"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.23-1
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

--0000000000002cfd8f05a7942b1f
Content-Type: text/plain; charset="UTF-8"

Hi,

it is out, finally! Upgrade from all 9.0.x versions to 9.0.23-1
recommended. A number of new tests were created while working on this
release.

9.0.23-1 (api:genl2/proto:86-116/transport:14)
--------
 * fix a deadlock (regression introduced in 9.0.22) that can happen when
   new current UUID is generated while a connection gets established
 * Do not create a new data generation if the node has
   'allow-remote-read = no' set, is primary, and the local disk fails
   (because it has no access to good data anyome)
 * fix a deadlock (regression introduced in 9.0.22) that can be
   triggered if a minor is added into a resource with an established
   connection
 * generate new UUID immediately if a primary loses a disk due to an IO
   error
 * fix read requests on diskless nodes that hit a read error on a
   diskful node; the retry on another diskful node works, but a bug
   could lead to a log-storm on the diskless node
 * fix removal of diskless nodes from clusters with quorum enabled
   (initiated from the diskless itself)
 * fix wrongly declined state changes if connections are established
   concurrently
 * fix continuation of initial resync; before that the initial resync
   always started from the beginning if it was interrupted
 * use rwsem _non_owner() operations to avoid false positives of
   lock-dep when running on a debug kernel
 * fix a sometimes missed resync if only a diskless node was primary
   since the day0 UUID
 * fix a corner case where a SyncSource node does not recognise
   that a SyncTarget node declared the resync as finished
 * update compat up to Linux 5.6

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.23-1.tar.gz
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack
https://github.com/LINBIT/drbd/commit/d16bfab7a4033024fed2d99d3b179aa6bb6eb300

best regards,
 Phil

--0000000000002cfd8f05a7942b1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br></div><div><br></div><div>it is out, finally! =
Upgrade from all 9.0.x versions to 9.0.23-1 recommended. A number of new te=
sts were created while working on this release.=C2=A0</div><div><br></div>9=
.0.23-1 (api:genl2/proto:86-116/transport:14)<br>--------<br>=C2=A0* fix a =
deadlock (regression introduced in 9.0.22) that can happen when<br>=C2=A0 =
=C2=A0new current UUID is generated while a connection gets established<br>=
=C2=A0* Do not create a new data generation if the node has<br>=C2=A0 =C2=
=A0&#39;allow-remote-read =3D no&#39; set, is primary, and the local disk f=
ails<br>=C2=A0 =C2=A0(because it has no access to good data anyome)<br>=C2=
=A0* fix a deadlock (regression introduced in 9.0.22) that can be<br>=C2=A0=
 =C2=A0triggered if a minor is added into a resource with an established<br=
>=C2=A0 =C2=A0connection<br>=C2=A0* generate new UUID immediately if a prim=
ary loses a disk due to an IO<br>=C2=A0 =C2=A0error<br>=C2=A0* fix read req=
uests on diskless nodes that hit a read error on a<br>=C2=A0 =C2=A0diskful =
node; the retry on another diskful node works, but a bug<br>=C2=A0 =C2=A0co=
uld lead to a log-storm on the diskless node<br>=C2=A0* fix removal of disk=
less nodes from clusters with quorum enabled<br>=C2=A0 =C2=A0(initiated fro=
m the diskless itself)<br>=C2=A0* fix wrongly declined state changes if con=
nections are established<br>=C2=A0 =C2=A0concurrently<br>=C2=A0* fix contin=
uation of initial resync; before that the initial resync<br>=C2=A0 =C2=A0al=
ways started from the beginning if it was interrupted<br>=C2=A0* use rwsem =
_non_owner() operations to avoid false positives of<br>=C2=A0 =C2=A0lock-de=
p when running on a debug kernel<br>=C2=A0* fix a sometimes missed resync i=
f only a diskless node was primary<br>=C2=A0 =C2=A0since the day0 UUID<br>=
=C2=A0* fix a corner case where a SyncSource node does not recognise<br>=C2=
=A0 =C2=A0that a SyncTarget node declared the resync as finished<br>=C2=A0*=
 update compat up to Linux 5.6<br><div><br></div><div><a href=3D"https://ww=
w.linbit.com/downloads/drbd/9.0/drbd-9.0.23-1.tar.gz">https://www.linbit.co=
m/downloads/drbd/9.0/drbd-9.0.23-1.tar.gz</a><br></div><div><a href=3D"http=
s://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack">https://launc=
hpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><div><a hr=
ef=3D"https://github.com/LINBIT/drbd/commit/d16bfab7a4033024fed2d99d3b179aa=
6bb6eb300">https://github.com/LINBIT/drbd/commit/d16bfab7a4033024fed2d99d3b=
179aa6bb6eb300</a><br></div><div><br></div><div>best regards,</div><div>=C2=
=A0Phil</div></div>

--0000000000002cfd8f05a7942b1f--
