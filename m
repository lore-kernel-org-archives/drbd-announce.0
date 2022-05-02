Return-Path: <gabor.hernadi@linbit.com>
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com
	[209.85.210.181])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 8DE624201DB
	for <drbd-announce@lists.linbit.com>;
	Mon,  2 May 2022 16:54:56 +0200 (CEST)
Received: by mail-pf1-f181.google.com with SMTP id i24so12472541pfa.7
	for <drbd-announce@lists.linbit.com>;
	Mon, 02 May 2022 07:54:56 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?R8OhYm9yIEhlcm7DoWRp?= <gabor.hernadi@linbit.com>
Date: Mon, 2 May 2022 16:54:44 +0200
Message-ID: <CAL16tNbBsbo6D_-6uchBBhh0G8Y10rG+OsJZc0jfT1sFGDJ3rg@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000446ea005de0893cb"
Subject: [DRBD-announce] linstor-server release 1.18.1-rc.2
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

--000000000000446ea005de0893cb
Content-Type: text/plain; charset="UTF-8"

Hello,

This second release candidate is almost the same as the first, but with a
small bugfix regarding creating backups to S3, as well as whitelisting new
DRBD options available since drbd-utils 9.21.1

For completeness sake, here are the release notes from rc.1:
Starting with this version, users are able to temporarily mix storage pool
types to allow a migration of data to a different storage type. Please be
aware that mixing storage types can lead to various problems, and therefore
only use this feature when necessary.
Additionally, a few database-related bugs including some experimental
CRD-related issues have been found and removed.

linstor-server 1.18.1-rc.2
--------------------------
 * update drbd-options for drbd-utils 9.21.1
 * Fix s3 multipart upload bug involving unit mismatch
 * Allow mixing resource storage pool types for migration purposes
 * Several bug fixes related to the Kubernetes database driver
 * Small fixes in backup shipping
 * When the DB has an error, the controller will now also have an error and
stop running as the DB was empty/faulty
 * Log more information on startup
 * API Version 1.13.1

https://pkg.linbit.com//downloads/linstor/linstor-server-1.18.1-rc.2.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Gabor

--000000000000446ea005de0893cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>This second release c=
andidate is almost the same as the first, but with a small bugfix regarding=
 creating backups to S3, as well as whitelisting new DRBD options available=
 since drbd-utils 9.21.1</div><div><br></div><div>For completeness sake, he=
re are the release notes from rc.1:<br></div><div></div><div>Starting with =
this version, users are able to temporarily mix storage pool types to allow=
 a migration of data to a different storage type. Please be aware that mixi=
ng storage types can lead to various problems, and therefore only use this =
feature when necessary.<br>Additionally, a few database-related bugs includ=
ing some experimental CRD-related issues have been found and removed.<br><b=
r>linstor-server 1.18.1-rc.2<br>--------------------------</div><div>=C2=A0=
* update drbd-options for drbd-utils 9.21.1</div><div>=C2=A0* Fix s3 multip=
art upload bug involving unit mismatch</div><div>=C2=A0* Allow mixing resou=
rce storage pool types for migration purposes<br>=C2=A0* Several bug fixes =
related to the Kubernetes database driver<br>=C2=A0* Small fixes in backup =
shipping<br>=C2=A0* When the DB has an error, the controller will now also =
have an error and stop running as the DB was empty/faulty<br>=C2=A0* Log mo=
re information on startup<br>=C2=A0* API Version 1.13.1<br><br><a href=3D"h=
ttps://pkg.linbit.com//downloads/linstor/linstor-server-1.18.1-rc.2.tar.gz"=
>https://pkg.linbit.com//downloads/linstor/linstor-server-1.18.1-rc.2.tar.g=
z</a><br><br><br>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+=
archive/ubuntu/linbit-drbd9-stack">https://launchpad.net/~linbit/+archive/u=
buntu/linbit-drbd9-stack</a><br><br>Cheers,</div><div>Gabor</div></div>

--000000000000446ea005de0893cb--
