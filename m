Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
	[209.85.216.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 19D6D420900
	for <drbd-announce@lists.linbit.com>;
	Wed, 25 Sep 2024 11:05:40 +0200 (CEST)
Received: by mail-pj1-f50.google.com with SMTP id
	98e67ed59e1d1-2da4e84c198so4545691a91.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 25 Sep 2024 02:05:40 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 25 Sep 2024 11:05:28 +0200
Message-ID: <CAHmn2DMcSo3z1AtT6TxyEp4qBG6tPZ_EHfUY4gQDMksdxNVGeQ@mail.gmail.com>
Subject: python-linstor/linstor-client 1.23.1 release
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000009d2a10622eded82"
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

--00000000000009d2a10622eded82
Content-Type: text/plain; charset="UTF-8"

Hi,

## linstor-client
### Changed
- Added info text for SkipDisk scenarios
- error-report delete: allow 5d or 3d10h strings to be used for --to and
--since

### Fixed
- parse_time_str/since argument: better wrong input handling

https://pkg.linbit.com//downloads/linstor/linstor-client-1.23.1.tar.gz

## python-linstor

### Changed
- updated linstor-common properties

https://pkg.linbit.com//downloads/linstor/python-linstor-1.23.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--00000000000009d2a10622eded82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>##=C2=A0linstor-client</=
div><div>### Changed<br>- Added info text for SkipDisk scenarios<br>- error=
-report delete: allow 5d or 3d10h strings to be used for --to and --since<b=
r><br>### Fixed<br>- parse_time_str/since argument: better wrong input hand=
ling<br></div><div><br></div><div><a href=3D"https://pkg.linbit.com//downlo=
ads/linstor/linstor-client-1.23.1.tar.gz">https://pkg.linbit.com//downloads=
/linstor/linstor-client-1.23.1.tar.gz</a><br></div><br><div>## python-linst=
or</div><div><br></div><div>### Changed<br>- updated linstor-common propert=
ies<br></div><div><br></div><div><a href=3D"https://pkg.linbit.com//downloa=
ds/linstor/python-linstor-1.23.1.tar.gz">https://pkg.linbit.com//downloads/=
linstor/python-linstor-1.23.1.tar.gz</a><br></div><div><br></div><div><div>=
Linstor=C2=A0PPA:<br></div><div><div><a href=3D"https://launchpad.net/~linb=
it/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank"=
>https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></=
div><div><br></div><div>Best regards,</div><div>Rene</div></div></div></div=
>

--00000000000009d2a10622eded82--
