Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
	[209.85.216.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id A594D1627FC
	for <drbd-announce@lists.linbit.com>;
	Mon,  1 Dec 2025 19:59:00 +0100 (CET)
Received: by mail-pj1-f43.google.com with SMTP id
	98e67ed59e1d1-3436cbb723fso3802271a91.2
	for <drbd-announce@lists.linbit.com>;
	Mon, 01 Dec 2025 10:59:00 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 1 Dec 2025 19:58:48 +0100
Message-ID: <CAHmn2DORjhHF=L+hZo7jF-K9PFxqQwSxBvUbNF0pP1pLKK1mEQ@mail.gmail.com>
Subject: linstor-server 1.33.0-rc.2 release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000005c30c80644e892d6"
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

--0000000000005c30c80644e892d6
Content-Type: text/plain; charset="UTF-8"

Hi!

Early after the rc1 we found some issues with the new min-io size picker
for DRBD and after that and some more testing we were able to fix ~ 17
issues with this rc.

## NOTE
With this release we also announce that we will remove etcd database
support with Linstor 1.34.0, until then you will have time to migrate to
(SQL or k8s-CRD) databases.

## [1.33.0-rc.2] - 2025-12-01

### Fixed

- AutoSnapshot: Fixed "Keep" property (regression introduced in 1.32.0)
- Fixed bug where clone no longer works with other min-io size than 512
- Fixed bug where "r c" fails with disabled auto-min-io on a 4k block-sized
SP
- Clone: cleanup source snapshot if cloning failed
- Clone: mark failed volumes with DELETE flags to allow to delete them
afterward
- Fixed --diskless-on-remaining not working with COMBINED nodes
- Fixed unnecessary restart of local DRBD peer right after the resource was
created
- ToggleDisk: Added missing free-space check
- Clone: Added missing free-space check
- Fixed very rare AccessToDeletedNode during a node-update from the
satellite
- Fixed possible NPE in DrbdLayer.hasMetaData
- If one resource fails during calculating gross/net size, other resources
should still be processed
- Check resource size on creation and resize
- Run autohelper.manage tasks after node fullsync (before only on node rc,
c, d)
- Autotiebreaker: do not delete tiebereaker if node is not online/fullsynced
- Cleanup clone task on satellite reconnect
- Clone: Fixed race conditions when starting multiple clones at once

https://pkg.linbit.com//downloads/linstor/linstor-server-1.33.0-rc.2.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000005c30c80644e892d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Early=C2=A0after the rc1 we found s=
ome issues with the new min-io size picker for DRBD and after that and some=
 more testing we were able to fix ~ 17 issues with this rc.</div><div><br><=
/div><div>## NOTE</div><div>With this release we also announce that we will=
 remove etcd database support with Linstor 1.34.0, until then you will have=
 time to migrate to (SQL or k8s-CRD) databases.=C2=A0</div><div></div><div>=
<br></div><div>## [1.33.0-rc.2] - 2025-12-01<br><br>### Fixed<br><br>- Auto=
Snapshot: Fixed &quot;Keep&quot; property (regression introduced in 1.32.0)=
<br>- Fixed bug where clone no longer works with other min-io size than 512=
<br>- Fixed bug where &quot;r c&quot; fails with disabled auto-min-io on a =
4k block-sized SP<br>- Clone: cleanup source snapshot if cloning failed<br>=
- Clone: mark failed volumes with DELETE flags to allow to delete them afte=
rward<br>- Fixed --diskless-on-remaining not working with COMBINED nodes<br=
>- Fixed unnecessary restart of local DRBD peer right after the resource wa=
s created<br>- ToggleDisk: Added missing free-space check<br>- Clone: Added=
 missing free-space check<br>- Fixed very rare AccessToDeletedNode during a=
 node-update from the satellite<br>- Fixed possible NPE in DrbdLayer.hasMet=
aData<br>- If one resource fails during calculating gross/net size, other r=
esources should still be processed<br>- Check resource size on creation and=
 resize<br>- Run autohelper.manage tasks after node fullsync (before only o=
n node rc, c, d)<br>- Autotiebreaker: do not delete tiebereaker if node is =
not online/fullsynced<br>- Cleanup clone task on satellite reconnect<br>- C=
lone: Fixed race conditions when starting multiple clones at once<br></div>=
<div><br></div><div><div><a href=3D"https://pkg.linbit.com//downloads/linst=
or/linstor-server-1.33.0-rc.2.tar.gz">https://pkg.linbit.com//downloads/lin=
stor/linstor-server-1.33.0-rc.2.tar.gz</a><br></div><div><br></div><div><br=
></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net=
/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_=
blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a>=
</div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></div></div=
></div></div>

--0000000000005c30c80644e892d6--
