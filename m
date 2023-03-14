Return-Path: <rene.peinthor@linbit.com>
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com
	[209.85.219.175])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id A1AF64210D5
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Mar 2023 19:26:14 +0100 (CET)
Received: by mail-yb1-f175.google.com with SMTP id i6so16641635ybu.8
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Mar 2023 11:26:14 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 14 Mar 2023 19:26:03 +0100
Message-ID: <CAHmn2DONFwD37CLE3N9xhg282knHNat=HMvAoEWt1sw-2hexMw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000d02ed005f6e05c1a"
Subject: [DRBD-announce] python-linstor/linstor-client 1.17.0 release
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

--000000000000d02ed005f6e05c1a
Content-Type: text/plain; charset="UTF-8"

Hi,

A rather small minor release, with only a new command the
newer/better resource-group query volume size API.

## linstor-client
### Added

- Added rg query-size-info command
- volume list: added --show-props option

### Changed

- NodeCon,RscCon: Remove DrbdOptions subcommand

### Fixed

- Improved broken pipe error handling

https://pkg.linbit.com//downloads/linstor/linstor-client-1.17.0.tar.gz

## python-linstor
### Added

- Added resource_group_query_size_info() method

https://pkg.linbit.com//downloads/linstor/python-linstor-1.17.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000d02ed005f6e05c1a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>A rather small minor rel=
ease, with only a new command the</div><div>newer/better resource-group que=
ry volume size API.</div><div><br></div><div>## linstor-client</div><div>##=
# Added<br><br>- Added rg query-size-info command<br>- volume list: added -=
-show-props option<br><br>### Changed<br><br>- NodeCon,RscCon: Remove DrbdO=
ptions subcommand<br><br>### Fixed<br><br>- Improved broken pipe error hand=
ling<br></div><div><br></div><div><a href=3D"https://pkg.linbit.com//downlo=
ads/linstor/linstor-client-1.17.0.tar.gz">https://pkg.linbit.com//downloads=
/linstor/linstor-client-1.17.0.tar.gz</a><br></div><br><div>## python-linst=
or</div><div>### Added<br><br>- Added resource_group_query_size_info() meth=
od<br></div><div><br></div><div><a href=3D"https://pkg.linbit.com//download=
s/linstor/python-linstor-1.17.0.tar.gz">https://pkg.linbit.com//downloads/l=
instor/python-linstor-1.17.0.tar.gz</a><br></div><div><br></div><div><div>L=
instor PPA:<br></div><div><div><a href=3D"https://launchpad.net/~linbit/+ar=
chive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https=
://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><d=
iv><br></div><div>Best regards,</div><div>Rene</div></div></div></div>

--000000000000d02ed005f6e05c1a--
