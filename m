Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com
	[209.85.215.174])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id A9724160912
	for <drbd-announce@lists.linbit.com>;
	Wed, 11 Jun 2025 15:03:59 +0200 (CEST)
Received: by mail-pg1-f174.google.com with SMTP id
	41be03b00d2f7-b2fca9dc5f8so474364a12.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 11 Jun 2025 06:03:59 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 11 Jun 2025 15:03:47 +0200
Message-ID: <CAHmn2DOtPJ6Qy6iTTnL=miizkgbu12u8rhybgUZ03PXp4AfiYw@mail.gmail.com>
Subject: linstor-server 1.31.2 release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000002f2ea606374b72c7"
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

--0000000000002f2ea606374b72c7
Content-Type: text/plain; charset="UTF-8"

Hi!

Another bugfix release for the 1.31 series, we noticed that you could end up
in a non-startable controller if you killed/stopped the controller while
it was doing a rollback of a snapshot, additionally we fixed a few other
smaller bugs.

## [1.31.2] - 2025-06-11

### Changed

- Snapshot rollback now allows and restores snapshots on nodes that don't
have a local snapshot (with DRBD)

### Fixed

- Fixed "access to deleted storpool" of remote storage pool after deleting
local storage pool
- Fixed AutoplaceTarget property being ignored on controller level
- Fixed AutoplaceTarget property that controller has higher priority than
node
- Fixed rare deadlock during shutdown
- Fixed toggle-disk for cache, writecache, bcache, luks and nvme resources
- Fixed order of resourceDefinitionConnected listener notifiers
- Fixed restore/deletion of the safety-snap-* if a snapshot rollback was
canceled too early

https://pkg.linbit.com//downloads/linstor/linstor-server-1.31.2.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000002f2ea606374b72c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Another bugfix release for the 1.31=
 series, we noticed that you could end up</div><div>in a non-startable cont=
roller if you killed/stopped the controller while</div><div>it was doing a =
rollback of a snapshot, additionally we fixed a few other smaller bugs.</di=
v><div></div><div><br></div><div>## [1.31.2] - 2025-06-11<br><br>### Change=
d<br><br>- Snapshot rollback now allows and restores snapshots on nodes tha=
t don&#39;t have a local snapshot (with DRBD)<br><br>### Fixed<br><br>- Fix=
ed &quot;access to deleted storpool&quot; of remote storage pool after dele=
ting local storage pool<br>- Fixed AutoplaceTarget property being ignored o=
n controller level<br>- Fixed AutoplaceTarget property that controller has =
higher priority than node<br>- Fixed rare deadlock during shutdown<br>- Fix=
ed toggle-disk for cache, writecache, bcache, luks and nvme resources<br>- =
Fixed order of resourceDefinitionConnected listener notifiers<br>- Fixed re=
store/deletion of the safety-snap-* if a snapshot rollback was canceled too=
 early</div><div><br></div><div><div><a href=3D"https://pkg.linbit.com//dow=
nloads/linstor/linstor-server-1.31.2.tar.gz">https://pkg.linbit.com//downlo=
ads/linstor/linstor-server-1.31.2.tar.gz</a><br></div><div><br></div><div><=
br></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.n=
et/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D=
"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</=
a></div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></div></d=
iv></div></div>

--0000000000002f2ea606374b72c7--
