Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
	[209.85.208.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 097E64205A5
	for <drbd-announce@lists.linbit.com>;
	Tue, 20 Sep 2022 16:02:21 +0200 (CEST)
Received: by mail-ed1-f47.google.com with SMTP id e18so4019532edj.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 20 Sep 2022 07:02:21 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 20 Sep 2022 16:02:00 +0200
Message-ID: <CAHmn2DOm8VX5apOXh7T9q+Mihckajvmo_v92GTcVcVKvq7ii3A@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000a6fed705e91c46e1"
Subject: [DRBD-announce] python-linstor/linstor-client 1.15.0 release
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

--000000000000a6fed705e91c46e1
Content-Type: text/plain; charset="UTF-8"

Hi,

For the linstor-server rc, here are the new python library and linstor
client:

## linstor-client
### Added

* Added autoplace-options to resource-group spawn command
* Added `--show-props` option to all possible list commands to add custom
props columns
* Added commands for the key-value-store API
* Added SED support in the physical-storage-create command
* Added EBS support/commands
* Advise added too many replicas issue and filtering by issue type

### Fixed

* Fixed typos in vd help

https://pkg.linbit.com//downloads/linstor/linstor-client-1.15.0.tar.gz

## python-linstor
### Added

* Added autoplace-options to resource-group spawn method
* Added SED support for physical-storage create
* Added EBS support

### Changed

* linstor-common: update
* Compatible to API Version 1.15.0

https://pkg.linbit.com//downloads/linstor/python-linstor-1.15.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000a6fed705e91c46e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>For the linstor-server r=
c, here are the new python library and linstor client:</div><div><br></div>=
<div>## linstor-client</div><div>### Added<br></div><div><br>* Added autopl=
ace-options to resource-group spawn command<br>* Added `--show-props` optio=
n to all possible list commands to add custom props columns<br>* Added comm=
ands for the key-value-store API<br>* Added SED support in the physical-sto=
rage-create command<br>* Added EBS support/commands<br>* Advise added too m=
any replicas issue and filtering by issue type<br><br>### Fixed<br><br>* Fi=
xed typos in vd help<br></div><div><br></div><div><a href=3D"https://pkg.li=
nbit.com//downloads/linstor/linstor-client-1.15.0.tar.gz">https://pkg.linbi=
t.com//downloads/linstor/linstor-client-1.15.0.tar.gz</a><br></div><br><div=
>## python-linstor</div><div>### Added<br><br>* Added autoplace-options to =
resource-group spawn method<br>* Added SED support for physical-storage cre=
ate<br>* Added EBS support<br><br>### Changed<br><br>* linstor-common: upda=
te<br>* Compatible to API Version 1.15.0<br></div><div><br></div><div><a hr=
ef=3D"https://pkg.linbit.com//downloads/linstor/python-linstor-1.15.0.tar.g=
z">https://pkg.linbit.com//downloads/linstor/python-linstor-1.15.0.tar.gz</=
a><br></div><div><br></div><div><div>Linstor PPA:<br></div><div><div><a hre=
f=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=
=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/ub=
untu/linbit-drbd9-stack</a><br></div><div><br></div><div>Best regards,</div=
><div>Rene</div></div></div></div>

--000000000000a6fed705e91c46e1--
