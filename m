Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com
	[209.85.215.171])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 03DF7160992
	for <drbd-announce@lists.linbit.com>;
	Wed, 18 Dec 2024 16:44:46 +0100 (CET)
Received: by mail-pg1-f171.google.com with SMTP id
	41be03b00d2f7-7f46d5d1ad5so4801496a12.3
	for <drbd-announce@lists.linbit.com>;
	Wed, 18 Dec 2024 07:44:46 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 18 Dec 2024 16:44:35 +0100
Message-ID: <CAHmn2DMNA3HyaHMU1Lv-G4MxYObDw-5RQXdcTUusd_Z2NBWCUA@mail.gmail.com>
Subject: linstor-server 1.30.2 release
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000000338fe06298d4b23"
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

--0000000000000338fe06298d4b23
Content-Type: text/plain; charset="UTF-8"

Hi!

We have found a missing SequenceNumber snapshot property migration and
double checked again if we migrated all of them now.

## [1.30.2] - 2024-12-18
### Fixed

- Migration: Fixed splitSnapProps bug not properly handling additional
properties

https://pkg.linbit.com//downloads/linstor/linstor-server-1.30.2.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000000338fe06298d4b23
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>We have found a missing SequenceNum=
ber snapshot property migration and</div><div>double checked again if we mi=
grated all of them now.</div><div></div><div><br></div><div>## [1.30.2] - 2=
024-12-18<br>### Fixed<br><br>- Migration: Fixed splitSnapProps bug not pro=
perly handling additional properties</div><div><br></div><div><div><a href=
=3D"https://pkg.linbit.com//downloads/linstor/linstor-server-1.30.2.tar.gz"=
>https://pkg.linbit.com//downloads/linstor/linstor-server-1.30.2.tar.gz</a>=
<br></div><div><br></div><div><br></div><div><div><div><div>Linstor PPA:<br=
><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stac=
k" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+arch=
ive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,<br=
></div><div>Rene</div></div></div></div></div>

--0000000000000338fe06298d4b23--
