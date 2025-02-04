Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
	[209.85.214.177])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4F012160644
	for <drbd-announce@lists.linbit.com>;
	Tue,  4 Feb 2025 09:50:39 +0100 (CET)
Received: by mail-pl1-f177.google.com with SMTP id
	d9443c01a7336-216728b1836so90048075ad.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 04 Feb 2025 00:50:39 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 4 Feb 2025 09:50:27 +0100
Message-ID: <CAHmn2DPo_7NKt87Ty_h0_F46XMgnetwBqrx8NPHrYX3uqK2BaQ@mail.gmail.com>
Subject: linstor-server 1.30.4 release
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000061f4ae062d4d1af7"
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

--00000000000061f4ae062d4d1af7
Content-Type: text/plain; charset="UTF-8"

Hi!

Another smaller patch release, to mainly fix a potential incorrect
resource-group property migration.

## [1.30.4] - 2025-02-03

### Changed

- Changed ext-tool-check command for "drbd-proxy" from "-v" to "--version"
to support v3 and v4

### Fixed

- Reconnect: Fixed rare NoSuchFileException triggered by multiple
reconnects in quick succession
- BackupShip: Fixed bug where shipment was not executed when previous
shipping node was unavailable
- Migration: Fixed incorrect usage of rscGrp's instanceName
- VlmDfn,Resize: Only allow resize if all peers are online and UpToDate

https://pkg.linbit.com//downloads/linstor/linstor-server-1.30.4.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--00000000000061f4ae062d4d1af7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Another smaller patch release, to m=
ainly fix a potential incorrect resource-group property migration.</div><di=
v></div><div><br></div><div>## [1.30.4] - 2025-02-03<br><br>### Changed<br>=
<br>- Changed ext-tool-check command for &quot;drbd-proxy&quot; from &quot;=
-v&quot; to &quot;--version&quot; to support v3 and v4<br><br>### Fixed<br>=
<br>- Reconnect: Fixed rare NoSuchFileException triggered by multiple recon=
nects in quick succession<br>- BackupShip: Fixed bug where shipment was not=
 executed when previous shipping node was unavailable<br>- Migration: Fixed=
 incorrect usage of rscGrp&#39;s instanceName<br>- VlmDfn,Resize: Only allo=
w resize if all peers are online and UpToDate</div><div><br></div><div><div=
><a href=3D"https://pkg.linbit.com//downloads/linstor/linstor-server-1.30.4=
.tar.gz">https://pkg.linbit.com//downloads/linstor/linstor-server-1.30.4.ta=
r.gz</a><br></div><div><br></div><div><br></div><div><div><div><div>Linstor=
 PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-dr=
bd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linb=
it/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div>Ch=
eers,<br></div><div>Rene</div></div></div></div></div>

--00000000000061f4ae062d4d1af7--
