Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 0E0324203ED
	for <drbd-announce@lists.linbit.com>;
	Mon, 13 Jul 2020 10:35:34 +0200 (CEST)
Received: by mail-wm1-f50.google.com with SMTP id 17so12300430wmo.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 13 Jul 2020 01:35:34 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 13 Jul 2020 10:35:23 +0200
Message-ID: <CAHmn2DNz188o542M7P--fBpwkhEEZnxb4XQLtj_aPyXGztaJLQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000ffe26605aa4e92df"
Subject: [DRBD-announce] linstor-server 1.7.2 release
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

--000000000000ffe26605aa4e92df
Content-Type: text/plain; charset="UTF-8"

Hi All!

Before a big new feature release 1.8.0 will come, we decided to do another
bug fix 1.7.2 release
with cherry-picked fixes from master branch, anyway the 1.8.0 release
SHOULD be ready in 1 or 2 weeks.

linstor-server 1.7.2
--------------------
 * Fixed dm-cache, losetup module dependencies
 * Prevent storage pool deletion if it has snapshots
 * Fix NPE on controller changes
 * Improve SSLTcpConnector exception handling
 * resume-io even if a snapshots fails, to prevent blocked resources
 * LVM also activates it LV's now
 * try to fix another TCP-connector dead-lock
 * add missing etcd storage-pool auto-select migration
 * allow mixing of external meta-data and data volume driver kinds
 * skip initial sync on VDO storage

https://www.linbit.com/downloads/linstor/linstor-server-1.7.2.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000ffe26605aa4e92df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All!<div><br></div><div>Before a big new feature releas=
e 1.8.0 will come, we decided to do another bug fix 1.7.2 release</div><div=
>with cherry-picked fixes from master branch, anyway the 1.8.0 release SHOU=
LD be ready in 1 or 2 weeks.</div><div><br></div><div><font face=3D"monospa=
ce">linstor-server 1.7.2<br>--------------------<br>=C2=A0* Fixed dm-cache,=
 losetup module dependencies<br>=C2=A0* Prevent storage pool deletion if it=
 has snapshots<br>=C2=A0* Fix NPE on controller changes<br>=C2=A0* Improve =
SSLTcpConnector exception handling<br>=C2=A0* resume-io even if a snapshots=
 fails, to prevent blocked resources<br>=C2=A0* LVM also activates it LV&#3=
9;s now<br>=C2=A0* try to fix another TCP-connector dead-lock<br>=C2=A0* ad=
d missing etcd storage-pool auto-select migration<br>=C2=A0* allow mixing o=
f external meta-data and data volume driver kinds<br>=C2=A0* skip initial s=
ync on VDO storage<br></font></div><div><font face=3D"monospace"><br></font=
></div><div><a href=3D"https://www.linbit.com/downloads/linstor/linstor-ser=
ver-1.7.2.tar.gz"><font face=3D"monospace">https://www.linbit.com/downloads=
/linstor/linstor-server-1.7.2.tar.gz</font></a><br></div><div><br></div><di=
v><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archi=
ve/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://=
launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><di=
v><br></div><div>Cheers,</div><div>Rene</div></div></div>

--000000000000ffe26605aa4e92df--
