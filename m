Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
	[209.85.215.181])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id AA4E54205C9
	for <drbd-announce@lists.linbit.com>;
	Thu, 22 Feb 2024 09:01:30 +0100 (CET)
Received: by mail-pg1-f181.google.com with SMTP id
	41be03b00d2f7-58962bf3f89so2259240a12.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 22 Feb 2024 00:01:30 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 22 Feb 2024 09:01:18 +0100
Message-ID: <CAHmn2DOB8xWx7nj=2+wSamHOV2j=wMx3gYz8bEvR086uRmyr=w@mail.gmail.com>
Subject: python-linstor/linstor-client 1.21.1 release
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000ccf1700611f3d9f4"
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

--000000000000ccf1700611f3d9f4
Content-Type: text/plain; charset="UTF-8"

Hi!

This release actually just has a few client fixes/changes.

## linstor-client
### Added

- PhysicalStorageCreate: Allow zfsthin as provider kind
- Added node connectionstatus MISSING_EXT_TOOLS handler

### Fixed

- Do not hide evicted resources in volume list

### Removed

- OpenFlex commands removed

https://pkg.linbit.com//downloads/linstor/linstor-client-1.21.1.tar.gz

## python-linstor
### Changed

- Updated linstor-common reference

https://pkg.linbit.com//downloads/linstor/python-linstor-1.21.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000ccf1700611f3d9f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>This release actually ju=
st has a few client fixes/changes.</div><div><br></div><div>##=C2=A0linstor=
-client</div><div>### Added<br><br>- PhysicalStorageCreate: Allow zfsthin a=
s provider kind<br>- Added node connectionstatus MISSING_EXT_TOOLS handler<=
br><br>### Fixed<br><br>- Do not hide evicted resources in volume list<br><=
br>### Removed<br><br>- OpenFlex commands removed<br></div><div><br></div><=
div><a href=3D"https://pkg.linbit.com//downloads/linstor/linstor-client-1.2=
1.1.tar.gz">https://pkg.linbit.com//downloads/linstor/linstor-client-1.21.1=
.tar.gz</a><br></div><br><div>## python-linstor</div><div>### Changed<br><b=
r>- Updated linstor-common reference<br></div><div><br></div><div><a href=
=3D"https://pkg.linbit.com//downloads/linstor/python-linstor-1.21.1.tar.gz"=
>https://pkg.linbit.com//downloads/linstor/python-linstor-1.21.1.tar.gz</a>=
<br></div><div><br></div><div><div>Linstor=C2=A0PPA:<br></div><div><div><a =
href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" r=
el=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/=
ubuntu/linbit-drbd9-stack</a><br></div><div><br></div><div>Best regards,</d=
iv><div>Rene</div></div></div></div>

--000000000000ccf1700611f3d9f4--
