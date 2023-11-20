Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
	[209.85.216.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 07CA14202AD
	for <drbd-announce@lists.linbit.com>;
	Mon, 20 Nov 2023 12:58:19 +0100 (CET)
Received: by mail-pj1-f41.google.com with SMTP id
	98e67ed59e1d1-280b06206f7so789596a91.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 20 Nov 2023 03:58:19 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 20 Nov 2023 12:58:07 +0100
Message-ID: <CAHmn2DN8mL+yAfLFKa7RhMtMgHA2unt_OXW_-Y=ZGtMuS7WfyA@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000a895b2060a943385"
Subject: [DRBD-announce] linstor-server 1.25.1 release
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

--000000000000a895b2060a943385
Content-Type: text/plain; charset="UTF-8"

Hi All!

Bugfix release, which mainly fixes 2 annoying bugs, one that linstor shows
a warning in the
storage pool list for offline nodes and another that should show old
satellites as VERSION_MISMATCH.
More bug fixes see below:

## [1.25.1] - 2023-11-20

### Fixed

- Fixed version mismatch check between new satellites and a pre v1.25.0
controller
- Fixed "node restore" to try to (re-) create tiebreaker resources if needed
- Fixed "node evacuate" no longer keeps diskless resource as a tiebreaker
(in evacuating, but never deleting state)
- Fixed "sp l" showing spurious warning that a diskless SP is offline (due
to caching bug)
- Fixed potential null pointer exception in AutoDiskfulTask
- Fixed "r c --drbd-diskless" falsely requiring free peer-slot
- Fixed bug where FILE/-THIN provider did not properly find existing
snapshots (thus also not deleting them properly)

https://pkg.linbit.com//downloads/linstor/linstor-server-1.25.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000a895b2060a943385
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All!<div><br></div><div>Bugfix release, which mainly fi=
xes 2 annoying=C2=A0bugs, one that linstor shows a warning in the</div><div=
>storage pool list for offline nodes and another that should show old satel=
lites as VERSION_MISMATCH.</div><div>More bug fixes see below:</div><div><b=
r></div><div><div>## [1.25.1] - 2023-11-20<br><br>### Fixed<br><br>- Fixed =
version mismatch check between new satellites and a pre v1.25.0 controller<=
br>- Fixed &quot;node restore&quot; to try to (re-) create tiebreaker resou=
rces if needed<br>- Fixed &quot;node evacuate&quot; no longer keeps diskles=
s resource as a tiebreaker (in evacuating, but never deleting state)<br>- F=
ixed &quot;sp l&quot; showing spurious warning that a diskless SP is offlin=
e (due to caching bug)<br>- Fixed potential null pointer exception in AutoD=
iskfulTask<br>- Fixed &quot;r c --drbd-diskless&quot; falsely requiring fre=
e peer-slot<br>- Fixed bug where FILE/-THIN provider did not properly find =
existing snapshots (thus also not deleting them properly)<br></div><div><br=
></div><div><div><a href=3D"https://pkg.linbit.com//downloads/linstor/linst=
or-server-1.25.1.tar.gz">https://pkg.linbit.com//downloads/linstor/linstor-=
server-1.25.1.tar.gz</a><br></div><div><br></div><div><br></div><div><div><=
div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/=
ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://lau=
nchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div><=
br></div><div>Cheers,<br></div><div>Rene</div></div></div></div></div></div=
>

--000000000000a895b2060a943385--
