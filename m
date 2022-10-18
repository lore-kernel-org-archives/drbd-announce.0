Return-Path: <rene.peinthor@linbit.com>
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com
	[209.85.128.170])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D26F84202EF
	for <drbd-announce@lists.linbit.com>;
	Tue, 18 Oct 2022 15:04:44 +0200 (CEST)
Received: by mail-yw1-f170.google.com with SMTP id
	00721157ae682-3321c2a8d4cso136404597b3.5
	for <drbd-announce@lists.linbit.com>;
	Tue, 18 Oct 2022 06:04:44 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 18 Oct 2022 15:04:32 +0200
Message-ID: <CAHmn2DNvFHguoosp6DfnZJFCMOUBtM+0mNMe_2sRnCLh-Txirg@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000005da95c05eb4ebcb2"
Subject: [DRBD-announce] python-linstor/linstor-client 1.15.1 release
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

--0000000000005da95c05eb4ebcb2
Content-Type: text/plain; charset="UTF-8"

Hi,

Small bugfix release for the python libs and linstor-client.

## linstor-client
### Added

- Snap,EBS: Added State message
- Added column for storage spaces thin for node info

### Fixed

- node info: also ignore underliners in table headers

https://pkg.linbit.com//downloads/linstor/linstor-client-1.15.1.tar.gz

## python-linstor
### Added

- SnapVlm: Add response object for state

### Fixed

- Fixed sos_report_create and sos_report_download since parameter
concatenation

https://pkg.linbit.com//downloads/linstor/python-linstor-1.15.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--0000000000005da95c05eb4ebcb2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Small bugfix release for=
 the python libs and linstor-client.</div><div><br></div><div>## linstor-cl=
ient</div><div>### Added<br><br>- Snap,EBS: Added State message<br>- Added =
column for storage spaces thin for node info<br><br>### Fixed<br><br>- node=
 info: also ignore underliners in table headers<br></div><div><br></div><di=
v><a href=3D"https://pkg.linbit.com//downloads/linstor/linstor-client-1.15.=
1.tar.gz">https://pkg.linbit.com//downloads/linstor/linstor-client-1.15.1.t=
ar.gz</a><br></div><br><div>## python-linstor</div><div>### Added<br><br>- =
SnapVlm: Add response object for state<br><br>### Fixed<br><br>- Fixed sos_=
report_create and sos_report_download since parameter concatenation<br></di=
v><div><br></div><div><a href=3D"https://pkg.linbit.com//downloads/linstor/=
python-linstor-1.15.1.tar.gz">https://pkg.linbit.com//downloads/linstor/pyt=
hon-linstor-1.15.1.tar.gz</a><br></div><div><br></div><div><div>Linstor PPA=
:<br></div><div><div><a href=3D"https://launchpad.net/~linbit/+archive/ubun=
tu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchp=
ad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><div><br></d=
iv><div>Best regards,</div><div>Rene</div></div></div></div>

--0000000000005da95c05eb4ebcb2--
