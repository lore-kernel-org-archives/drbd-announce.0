Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
	[209.85.216.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 56CBD420356
	for <drbd-announce@lists.linbit.com>;
	Wed, 11 Oct 2023 12:45:16 +0200 (CEST)
Received: by mail-pj1-f43.google.com with SMTP id
	98e67ed59e1d1-27b35f5b157so628474a91.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 11 Oct 2023 03:45:16 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 11 Oct 2023 12:45:04 +0200
Message-ID: <CAHmn2DMmh2_4=jhWL=rQ=U3GgO=Wid97JVV_-dL6o+Q9n92wjQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000c7192706076e84c8"
Subject: [DRBD-announce] linstor-server 1.25.0-rc.1 release
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

--000000000000c7192706076e84c8
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is the new release candidate for the 1.25.0 release, The biggest
feature in this
release is that Linstor got aware of disk failures detected by DRBD.
If a disk fails now and DRBD switches the resource to a diskless, Linstor
will mark those
resource with a skip-disk flag and will add the --skip-disk argument to
drbd commands.
Without this feature Linstor would mostly fail on most commands because it
couldn't adjust
drbd resources and even unrelated resources might have become problematic.

We also added IP_TOS socket options to improve Linstor network
communication on congested networks.

Please test this RC and report any problems, if we don't get aware of
breaking issues, a final release is expected to happen next week.

## [1.25.0-rc.1] - 2023-10-11

### Added

- Added automated addition of --skip-disk to drbdadm adjust when a disk
failure is detected
- Added first version of "effective_props" (currently only used for
"DrbdOptions/SkipDisk", other props will follow)
- Added attempt in setting IP_TOS to LOW_DELAY (works in java11 or with
forced IPv4)
- Added creation time to ApiCallRc

### Changed

- Improved checks for "OtherController" response
- Do not send fetchFreeSpaces to diskless-only nodes
- Improved responses during tiebreaker takeover

### Fixed

- Fixed possible FileWatch leak
- Fixed toggle-disk now properly setting StorPoolName
- Delete node-connection when last property gets deleted
- Properly delete DRBD_DELETE flag during undelete ('r c' on a DELETING
resource)
- Fixed regex-pattern for parsing "dmsetup ls [--target TARGET]" command
- Fixed typo in /v1/action[s]/snapshot/multi
- Fixed incorrectly documented return type of "snapshot create-multi"
- Fixed NPE in schedules etcd driver

https://pkg.linbit.com//downloads/linstor/linstor-server-1.25.0-rc.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000c7192706076e84c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Here is the new release candidate=
=C2=A0for the 1.25.0 release, The biggest feature in this</div><div>release=
 is that Linstor got aware of disk failures detected by DRBD.</div><div>If =
a disk fails=C2=A0now and DRBD switches the resource to a diskless, Linstor=
 will mark those</div><div>resource with a skip-disk flag and will add the =
--skip-disk argument to drbd commands.</div><div>Without this feature Linst=
or would mostly fail on most commands because it couldn&#39;t adjust</div><=
div>drbd resources and even unrelated resources might have become problemat=
ic.</div><div><br></div><div>We also added IP_TOS socket options to improve=
 Linstor network communication on congested networks.</div><div><br></div><=
div>Please test this RC and report any problems, if we don&#39;t get aware =
of breaking issues, a final release is expected to happen next=C2=A0week.</=
div><div><br></div><div>## [1.25.0-rc.1] - 2023-10-11<br><br>### Added<br><=
br>- Added automated addition of --skip-disk to drbdadm adjust when a disk =
failure is detected<br>- Added first version of &quot;effective_props&quot;=
 (currently only used for &quot;DrbdOptions/SkipDisk&quot;, other props wil=
l follow)<br>- Added attempt in setting IP_TOS to LOW_DELAY (works in java1=
1 or with forced IPv4)<br>- Added creation time to ApiCallRc<br><br>### Cha=
nged<br><br>- Improved checks for &quot;OtherController&quot; response<br>-=
 Do not send fetchFreeSpaces to diskless-only nodes<br>- Improved responses=
 during tiebreaker takeover<br><br>### Fixed<br><br>- Fixed possible FileWa=
tch leak<br>- Fixed toggle-disk now properly setting StorPoolName<br>- Dele=
te node-connection when last property gets deleted<br>- Properly delete DRB=
D_DELETE flag during undelete (&#39;r c&#39; on a DELETING resource)<br>- F=
ixed regex-pattern for parsing &quot;dmsetup ls [--target TARGET]&quot; com=
mand<br>- Fixed typo in /v1/action[s]/snapshot/multi<br>- Fixed incorrectly=
 documented return type of &quot;snapshot create-multi&quot;<br>- Fixed NPE=
 in schedules etcd driver<br></div><div><br></div><div><div><a href=3D"http=
s://pkg.linbit.com//downloads/linstor/linstor-server-1.25.0-rc.1.tar.gz">ht=
tps://pkg.linbit.com//downloads/linstor/linstor-server-1.25.0-rc.1.tar.gz</=
a><br></div><div><br></div><div><br></div><div><div><div><div>Linstor PPA:<=
br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-st=
ack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+ar=
chive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,<=
br></div><div>Rene</div></div></div></div></div>

--000000000000c7192706076e84c8--
