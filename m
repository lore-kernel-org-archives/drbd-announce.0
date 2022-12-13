Return-Path: <rene.peinthor@linbit.com>
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com
	[209.85.128.175])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 0BC744210DE
	for <drbd-announce@lists.linbit.com>;
	Tue, 13 Dec 2022 15:41:07 +0100 (CET)
Received: by mail-yw1-f175.google.com with SMTP id
	00721157ae682-3f15a6f72d0so194500057b3.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 13 Dec 2022 06:41:07 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 13 Dec 2022 15:40:55 +0100
Message-ID: <CAHmn2DM+UGHSrEYGab51-WurDiz6zYiWNO1mpGXrQyJOGHQSvw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000002aa08d05efb69cff"
Subject: [DRBD-announce] linstor-server 1.20.1 release
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

--0000000000002aa08d05efb69cff
Content-Type: text/plain; charset="UTF-8"

Hi!

A new patch release for linstor-server that only has one tiny addition, and
that is the
possibility to create node drbd connections (similar to resource
connections).

Here are the other changes:

### Added
- Added NodeConnection API. Currently only used for path settings (similar
to rscCon, but on node level)

### Changed
- MKFS: always skip discard on ZFS backed volumes
- Client resource DRBD ready state as soon as 2 nodes are connected (before
it waited for all)
- ResourceGroup-Spawn: Always assume partial mode if resource group doesn't
have any volume groups
- Upgraded okhttp 3rd party library, to fix a IPv6 TLS bug
- Satellite now only deletes old .res files after controller established
connection (instead of after startup)

### Fixed
- Orphan StorPooDfn, KeyValueStores and SnapDfn are now deleted with all
their child objects
- ErrorReports delete ignored since parameter if no other was specified

https://pkg.linbit.com//downloads/linstor/linstor-server-1.20.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000002aa08d05efb69cff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>A new patch release for =
linstor-server that only has one tiny addition, and that is the</div><div>p=
ossibility to create node drbd connections (similar to resource connections=
).</div><div><br></div><div>Here are the other changes:</div><div><br></div=
><div>### Added<br>- Added NodeConnection API. Currently only used for path=
 settings (similar to rscCon, but on node level)<br><br>### Changed<br>- MK=
FS: always skip discard on ZFS backed volumes<br>- Client resource DRBD rea=
dy state as soon as 2 nodes are connected (before it waited for all)<br>- R=
esourceGroup-Spawn: Always assume partial mode if resource group doesn&#39;=
t have any volume groups<br>- Upgraded okhttp 3rd party library, to fix a I=
Pv6 TLS bug<br>- Satellite now only deletes old .res files after controller=
 established connection (instead of after startup)<br><br>### Fixed<br>- Or=
phan StorPooDfn, KeyValueStores and SnapDfn are now deleted with all their =
child objects<br>- ErrorReports delete ignored since parameter if no other =
was specified<br></div><div><br></div><div><a href=3D"https://pkg.linbit.co=
m//downloads/linstor/linstor-server-1.20.1.tar.gz">https://pkg.linbit.com//=
downloads/linstor/linstor-server-1.20.1.tar.gz</a><br></div><div><br></div>=
<div><br></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://launc=
hpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" tar=
get=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-s=
tack</a></div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></d=
iv></div></div>

--0000000000002aa08d05efb69cff--
