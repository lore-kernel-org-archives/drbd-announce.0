Return-Path: <rene.peinthor@linbit.com>
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com
	[209.85.128.169])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 7D845420966
	for <drbd-announce@lists.linbit.com>;
	Thu, 26 Jan 2023 11:25:22 +0100 (CET)
Received: by mail-yw1-f169.google.com with SMTP id
	00721157ae682-4c131bede4bso17043457b3.5
	for <drbd-announce@lists.linbit.com>;
	Thu, 26 Jan 2023 02:25:22 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 26 Jan 2023 11:25:10 +0100
Message-ID: <CAHmn2DMXePw3Quf_vVFzC2cSV-WKK53obw_VYfq4Odt=VUGNVQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000087c1e305f3282a72"
Subject: [DRBD-announce] linstor-server 1.20.3 release
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

--00000000000087c1e305f3282a72
Content-Type: text/plain; charset="UTF-8"

Hi!

We fixed a few more minor bugs since the last patch release and thought it
is
worth it to release them before the next minor release.

Here are the changes:

### Changed

- pvdisplay now ignores drbd devices(lvm filter)
- Volume definition setSize checks now for out of bounds sizes

### Fixed

- Fixed typo in VDO slab size commandline argument
- Fixed peerslot check also counting diskless resources
- Fixed storage pool definition delete not checking if there are still
other storage pools
- Fixed resource definition create showing real exception because of a
followup exception
- Fixed resetting resource flags to now incompatible drbd resource flags

https://pkg.linbit.com//downloads/linstor/linstor-server-1.20.3.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--00000000000087c1e305f3282a72
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>We fixed a few more mino=
r bugs since the last patch release and thought it is</div><div>worth it to=
 release them before the next minor release.</div><div><br></div><div>Here =
are the changes:</div><div><br></div><div>### Changed<br><br>- pvdisplay no=
w ignores drbd devices(lvm filter)<br>- Volume definition setSize checks no=
w for out of bounds sizes<br><br>### Fixed<br><br>- Fixed typo in VDO slab =
size commandline argument<br>- Fixed peerslot check also counting diskless =
resources<br>- Fixed storage pool definition delete not checking if there a=
re still other storage pools<br>- Fixed resource definition create showing =
real exception because of a followup exception<br>- Fixed resetting resourc=
e flags to now incompatible drbd resource flags<br></div><div><br></div><di=
v><a href=3D"https://pkg.linbit.com//downloads/linstor/linstor-server-1.20.=
3.tar.gz">https://pkg.linbit.com//downloads/linstor/linstor-server-1.20.3.t=
ar.gz</a><br></div><div><br></div><div><br></div><div><div><div><div>Linsto=
r PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-d=
rbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~lin=
bit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div>C=
heers,<br></div><div>Rene</div></div></div></div>

--00000000000087c1e305f3282a72--
