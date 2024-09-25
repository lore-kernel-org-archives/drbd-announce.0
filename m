Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
	[209.85.215.172])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D22C1420233
	for <drbd-announce@lists.linbit.com>;
	Wed, 25 Sep 2024 10:58:14 +0200 (CEST)
Received: by mail-pg1-f172.google.com with SMTP id
	41be03b00d2f7-7e6bb2aa758so542674a12.2
	for <drbd-announce@lists.linbit.com>;
	Wed, 25 Sep 2024 01:58:14 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 25 Sep 2024 10:58:02 +0200
Message-ID: <CAHmn2DNnr2XqvGrpiJgK6jDHC1FpPfQuvK7CCCRmunn0AstQwQ@mail.gmail.com>
Subject: linstor-server 1.29.1 release
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000006c8cbb0622edd2e3"
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

--0000000000006c8cbb0622edd2e3
Content-Type: text/plain; charset="UTF-8"

Hi!

After the LVM command improvements in 1.29.0 we still were not happy with
performance
on large LVM-THIN pool cluster > 1200 LV's and so we decided to further
build on the
caching system and also implemented a time based caching, per default it
caches
10s or until a cache invalidate is forcefully needed (e.g. a
resource create).
The cache can be configured or disable with the StorDriver/SizesCacheTime
property.

Other than that we have fixes for nasty bugs like deleting a resource if it
was stuck resizing state or a display bug in the storage pool list.

## [1.29.1] - 2024-09-24

### Changed

- sedutils-cli calls will now resolve given paths before using them (as
sedutils-cli only allows /dev/nvme*)
- resource-definition properties are now included in drbd connection net
section
- Attempt to delete LV during DELETE flag even if SkipDisk is enabled
(suppressing error reports)
- SOS: Additionally collect journal-based dmesg from multiple previous
boots if necessary

### Fixed

- storage-pool list reporting offline nodes even though everything is
connected
- SED setup using same password for all drives
- Fixed stuck deletion of resource during failed / failing resize
- Fixed failing rsc-dfn-update-chain when updating rsc-grp
- Fixed rare race-condition during snapshot create
- Fixed dateformatting with offsets

https://pkg.linbit.com//downloads/linstor/linstor-server-1.29.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000006c8cbb0622edd2e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>After the LVM command improvements=
=C2=A0in 1.29.0 we still were not happy with performance</div><div>on large=
 LVM-THIN pool cluster &gt; 1200 LV&#39;s and so we decided to further buil=
d on the</div><div>caching system and also implemented a time based caching=
, per default it caches</div><div>10s or until a cache invalidate is forcef=
ully=C2=A0needed (e.g. a resource=C2=A0create).</div><div>The cache can be =
configured or disable with the=C2=A0StorDriver/SizesCacheTime property.</di=
v><div><br></div><div>Other than=C2=A0that we have fixes for nasty bugs lik=
e deleting a resource if it was stuck resizing state or a display bug in th=
e storage pool list.</div><div><br></div><div>## [1.29.1] - 2024-09-24<br><=
br>### Changed<br><br>- sedutils-cli calls will now resolve given paths bef=
ore using them (as sedutils-cli only allows /dev/nvme*)<br>- resource-defin=
ition properties are now included in drbd connection net section<br>- Attem=
pt to delete LV during DELETE flag even if SkipDisk is enabled (suppressing=
 error reports)<br>- SOS: Additionally collect journal-based dmesg from mul=
tiple previous boots if necessary<br><br>### Fixed<br><br>- storage-pool li=
st reporting offline nodes even though everything is connected<br>- SED set=
up using same password for all drives<br>- Fixed stuck deletion of resource=
 during failed / failing resize<br>- Fixed failing rsc-dfn-update-chain whe=
n updating rsc-grp<br>- Fixed rare race-condition during snapshot create<br=
>- Fixed dateformatting with offsets<br></div><div><br></div><div><div><a h=
ref=3D"https://pkg.linbit.com//downloads/linstor/linstor-server-1.29.1.tar.=
gz">https://pkg.linbit.com//downloads/linstor/linstor-server-1.29.1.tar.gz<=
/a><br></div><div><br></div><div><br></div><div><div><div><div>Linstor PPA:=
<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-s=
tack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+a=
rchive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,=
<br></div><div>Rene</div></div></div></div></div>

--0000000000006c8cbb0622edd2e3--
