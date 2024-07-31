Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id C8763420471
	for <drbd-announce@lists.linbit.com>;
	Wed, 31 Jul 2024 13:55:21 +0200 (CEST)
Received: by mail-pf1-f171.google.com with SMTP id
	d2e1a72fcca58-70d1876e748so645223b3a.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 31 Jul 2024 04:55:21 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 31 Jul 2024 13:55:09 +0200
Message-ID: <CAHmn2DPPHTk3Dypnq-apxM08kBqNrZuv53gZAnqR=sSJW0d+Bw@mail.gmail.com>
Subject: linstor-server 1.29.0 release
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000bcb711061e89c41b"
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

--000000000000bcb711061e89c41b
Content-Type: text/plain; charset="UTF-8"

Hi!

With this new version we bring 2 really big performance improvements:
1. All satellite read-only internal API calls now run concurrently.
    This means commands like linstor r l or v l don't need to wait for the
device manager
    to finish on a satellite and should always return within a few seconds.
    Before if a satellite had a high amount of resources and it needed to
adjust them all
    it could take a few minutes until the whole controller/satellite was
responsive again.
2. We reduced the amount of LVM command calls by around 45%.
    This helps on systems where there are a lot of logical volumes and LVM
begins to struggle.

There are also some minor fixes/tweaks which you can read below.

## [1.29.0] - 2024-07-31

### Changed

- Improved responsiveness: Allow some API calls to be executed concurrently
on the satellite
- Added a cache for lvs and vgs/pvs commands, reducing the need to call them
- Changed logback log format to include logid and full timestamp

### Fixed

- Snap, create: Fixed possible deadlock
- Incorrect resource definition already exists error message
- sos-report: Controller not always dumping full log content

https://pkg.linbit.com//downloads/linstor/linstor-server-1.29.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000bcb711061e89c41b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>With this new version we bring 2 re=
ally big performance improvements:</div><div>1. All satellite read-only int=
ernal API calls now run concurrently.<br>=C2=A0 =C2=A0 This means commands =
like linstor r l or v l don&#39;t need to wait for the device manager</div>=
<div>=C2=A0 =C2=A0 to finish on a satellite and should always return within=
 a few seconds.</div><div>=C2=A0 =C2=A0 Before if a satellite had a high am=
ount of resources and it needed to adjust them all</div><div>=C2=A0 =C2=A0 =
it could take a few minutes until the whole controller/satellite was respon=
sive again.</div><div>2. We reduced the amount of LVM command calls by arou=
nd 45%.</div><div>=C2=A0 =C2=A0 This helps on systems where there are a lot=
 of logical volumes and LVM begins to struggle.</div><div><br></div><div>Th=
ere are also some minor fixes/tweaks which you can read below.</div><div><b=
r></div><div>## [1.29.0] - 2024-07-31<br><br>### Changed<br><br>- Improved =
responsiveness: Allow some API calls to be executed concurrently on the sat=
ellite<br>- Added a cache for lvs and vgs/pvs commands, reducing the need t=
o call them<br>- Changed logback log format to include logid and full times=
tamp<br><br>### Fixed<br><br>- Snap, create: Fixed possible deadlock<br>- I=
ncorrect resource definition already exists error message<br>- sos-report: =
Controller not always dumping full log content<br></div><div><br></div><div=
><div><a href=3D"https://pkg.linbit.com//downloads/linstor/linstor-server-1=
.29.0.tar.gz">https://pkg.linbit.com//downloads/linstor/linstor-server-1.29=
.0.tar.gz</a><br></div><div><br></div><div><br></div><div><div><div><div>Li=
nstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linb=
it-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/=
~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><d=
iv>Cheers,<br></div><div>Rene</div></div></div></div></div>

--000000000000bcb711061e89c41b--
