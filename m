Return-Path: <rene.peinthor@linbit.com>
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com
	[209.85.128.174])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 30A484203DB
	for <drbd-announce@lists.linbit.com>;
	Mon, 17 Apr 2023 16:14:29 +0200 (CEST)
Received: by mail-yw1-f174.google.com with SMTP id
	00721157ae682-54c0c86a436so538304347b3.6
	for <drbd-announce@lists.linbit.com>;
	Mon, 17 Apr 2023 07:14:29 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 17 Apr 2023 16:14:17 +0200
Message-ID: <CAHmn2DPABwygi78iwd+8Pzpzqh-_bX92Rr_6ioNpqUprhhZ7ow@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000000eef2805f988cf81"
Subject: [DRBD-announce] python-linstor/linstor-client 1.18.0 release
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

--0000000000000eef2805f988cf81
Content-Type: text/plain; charset="UTF-8"

Hi,

as usual a accompanying linstor-client release to linstor-server 1.22.0.


## linstor-client
### Added

- Subcommand for snapshots create-multiple

### Changed

- drbd-options(opts) now correctly handle sector units

### Fixed

- RscDfn create do not ignore peerslots
- NodeCon fixed issues with path list

https://pkg.linbit.com//downloads/linstor/linstor-client-1.18.0.tar.gz

## python-linstor
### Added

- Added snapshot_create_multi method to create snapshots of multiple
resources

### Changed

- SizeCalc now supports sector units

### Fixed

- RscDfn create doesn't ignore peerslot

https://pkg.linbit.com//downloads/linstor/python-linstor-1.18.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--0000000000000eef2805f988cf81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>as usual a accompanying=
=C2=A0linstor-client release to linstor-server 1.22.0.</div><div><br></div>=
<div><br></div><div>## linstor-client</div><div>### Added<br><br>- Subcomma=
nd for snapshots create-multiple<br><br>### Changed<br><br>- drbd-options(o=
pts) now correctly handle sector units<br><br>### Fixed<br><br>- RscDfn cre=
ate do not ignore peerslots<br>- NodeCon fixed issues with path list<br></d=
iv><div><br></div><div><a href=3D"https://pkg.linbit.com//downloads/linstor=
/linstor-client-1.18.0.tar.gz">https://pkg.linbit.com//downloads/linstor/li=
nstor-client-1.18.0.tar.gz</a><br></div><br><div>## python-linstor</div><di=
v>### Added<br><br>- Added snapshot_create_multi method to create snapshots=
 of multiple resources<br><br>### Changed<br><br>- SizeCalc now supports se=
ctor units<br><br>### Fixed<br><br>- RscDfn create doesn&#39;t ignore peers=
lot<br></div><div><br></div><div><a href=3D"https://pkg.linbit.com//downloa=
ds/linstor/python-linstor-1.18.0.tar.gz">https://pkg.linbit.com//downloads/=
linstor/python-linstor-1.18.0.tar.gz</a><br></div><div><br></div><div><div>=
Linstor PPA:<br></div><div><div><a href=3D"https://launchpad.net/~linbit/+a=
rchive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">http=
s://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><=
div><br></div><div>Best regards,</div><div>Rene</div></div></div></div>

--0000000000000eef2805f988cf81--
