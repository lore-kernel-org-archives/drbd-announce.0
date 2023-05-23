Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
	[209.85.216.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 0BBE9420620
	for <drbd-announce@lists.linbit.com>;
	Tue, 23 May 2023 10:22:21 +0200 (CEST)
Received: by mail-pj1-f50.google.com with SMTP id
	98e67ed59e1d1-25374bda99dso610493a91.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 23 May 2023 01:22:21 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 23 May 2023 10:22:09 +0200
Message-ID: <CAHmn2DPkxF8oMDt6=Y2faNrOJ+yZaKwxRoDCG_hCgcfgncLGZw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000004d46105fc581605"
Subject: [DRBD-announce] linstor-server 1.23.0 release
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

--00000000000004d46105fc581605
Content-Type: text/plain; charset="UTF-8"

Hi!

This release has a lot more bug fixes than new features, but we try to stick
to semantic versioning and so it is a new minor release.

## [1.23.0] - 2023-05-23

### Added

- query-all-size-info API to query-size-info for all currently available
resource groups

### Changed

- SOS-Report has now a parent directory in the tgz file
- SharedSPName have now a less strict name checking
- Improved error handling with broken storage pools

### Fixed

- MakeAvailable: Fix incorrect deletion of TIE_BREAKER flag
- SOS-Report missing some rolling .log.zip files
- Offline satellite: Fixed handling of offline satellites
- Rsc,Delete,Takeover: Fix possible double tiebreaker scenarios
- Fixed DRBD config for nodes with purely numerical host names
- Remove/ignore auto-verify-algo property if disabled on controller

https://pkg.linbit.com//downloads/linstor/linstor-server-1.23.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--00000000000004d46105fc581605
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>This release has a lot more bug fix=
es than new features, but we try to stick</div><div>to semantic versioning =
and so it is a new minor release.</div><div><br></div><div>## [1.23.0] - 20=
23-05-23<br><br>### Added<br><br>- query-all-size-info API to query-size-in=
fo for all currently available resource groups<br><br>### Changed<br><br>- =
SOS-Report has now a parent directory in the tgz file<br>- SharedSPName hav=
e now a less strict name checking<br>- Improved error handling with broken =
storage pools<br><br>### Fixed<br><br>- MakeAvailable: Fix incorrect deleti=
on of TIE_BREAKER flag<br>- SOS-Report missing some rolling .log.zip files<=
br>- Offline satellite: Fixed handling of offline satellites<br>- Rsc,Delet=
e,Takeover: Fix possible double tiebreaker scenarios<br>- Fixed DRBD config=
 for nodes with purely numerical host names<br>- Remove/ignore auto-verify-=
algo property if disabled on controller<br></div><div><br></div><div><div><=
a href=3D"https://pkg.linbit.com//downloads/linstor/linstor-server-1.23.0.t=
ar.gz">https://pkg.linbit.com//downloads/linstor/linstor-server-1.23.0.tar.=
gz</a><br></div><div><br></div><div><br></div><div><div><div><div>Linstor P=
PA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd=
9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit=
/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div>Chee=
rs,<br></div><div>Rene</div></div></div></div></div>

--00000000000004d46105fc581605--
