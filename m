Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E8C764201EA
	for <drbd-announce@lists.linbit.com>;
	Thu, 12 May 2022 14:55:51 +0200 (CEST)
Received: by mail-ed1-f49.google.com with SMTP id t5so6073141edw.11
	for <drbd-announce@lists.linbit.com>;
	Thu, 12 May 2022 05:55:51 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 12 May 2022 14:55:40 +0200
Message-ID: <CAHmn2DNDef1VUBvaQX93Bw3_CpN+JOk2upWVSW5nsyeY-oeCPg@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000ddefcf05ded01333"
Subject: [DRBD-announce] linstor-server release 1.18.1
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

--000000000000ddefcf05ded01333
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is the final release of version 1.18.1, a few more bug fixes were
added since rc.2, but nothing additional was added since then.

Starting with this version, users are able to temporarily mix storage pool
types to allow a migration of data to a different storage type. Please be
aware that mixing storage types can lead to various problems, and therefore
only use this feature when necessary.
Use the AllowMixingStoragePoolDriver property to enable this.

Additionally, a few database-related bugs including some experimental
CRD-related issues have been found and removed.

linstor-server 1.18.1
---------------------
 * update drbd-options for drbd-utils 9.21.1
 * Fix s3 multipart upload bug involving unit mismatch
 * Allow mixing resource storage pool types for migration purposes
 * Several bug fixes related to the Kubernetes database driver
 * Small fixes in backup shipping
 * When the DB has an error, the controller will now also have an error and
stop running as the DB was empty/faulty
 * Log more information on startup
 * Fix local IP finding on controller
 * Fix zfs snapshot restore duplicate zpool name
 * Fix volume-group properties not correctly handled
 * Extend rs-discard-granularity automatic checks
 * Fix Node modify node-type port
 * Fixes in TaskScheduler(race-conditions, exceptions)
 * API Version 1.13.1

https://pkg.linbit.com//downloads/linstor/linstor-server-1.18.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000ddefcf05ded01333
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Here is the final releas=
e of version 1.18.1, a few more bug fixes=C2=A0were added since rc.2, but n=
othing additional was added since then.</div><div><br></div><div>Starting w=
ith this version, users are able to temporarily mix storage pool types to a=
llow a migration of data to a different storage type. Please be aware that =
mixing storage types can lead to various problems, and therefore only use t=
his feature when necessary.</div><div>Use the AllowMixingStoragePoolDriver =
property to enable this.</div><div><br>Additionally, a few database-related=
 bugs including some experimental CRD-related issues have been found and re=
moved.<br></div><div><br></div><div><font face=3D"monospace">linstor-server=
 1.18.1<br>---------------------<br>=C2=A0* update drbd-options for drbd-ut=
ils 9.21.1<br>=C2=A0* Fix s3 multipart upload bug involving unit mismatch<b=
r>=C2=A0* Allow mixing resource storage pool types for migration purposes<b=
r>=C2=A0* Several bug fixes related to the Kubernetes database driver<br>=
=C2=A0* Small fixes in backup shipping<br>=C2=A0* When the DB has an error,=
 the controller will now also have an error and stop running as the DB was =
empty/faulty<br>=C2=A0* Log more information on startup<br>=C2=A0* Fix loca=
l IP finding on controller<br>=C2=A0* Fix zfs snapshot restore duplicate zp=
ool name<br>=C2=A0* Fix volume-group properties not correctly handled<br>=
=C2=A0* Extend rs-discard-granularity automatic checks<br>=C2=A0* Fix Node =
modify node-type port<br>=C2=A0* Fixes in TaskScheduler(race-conditions, ex=
ceptions)<br>=C2=A0* API Version 1.13.1</font><br></div><div><br></div><div=
><a href=3D"https://pkg.linbit.com//downloads/linstor/linstor-server-1.18.1=
.tar.gz">https://pkg.linbit.com//downloads/linstor/linstor-server-1.18.1.ta=
r.gz</a><br></div><div><br></div><div><br></div><div><div><div><div>Linstor=
 PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-dr=
bd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linb=
it/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div>Ch=
eers,<br></div><div>Rene</div></div></div></div>

--000000000000ddefcf05ded01333--
