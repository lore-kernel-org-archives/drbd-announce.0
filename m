Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
	[209.85.215.177])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 721AE16B819
	for <drbd-announce@lists.linbit.com>;
	Tue, 17 Dec 2024 17:06:31 +0100 (CET)
Received: by mail-pg1-f177.google.com with SMTP id
	41be03b00d2f7-7fbc65f6c72so4924163a12.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 17 Dec 2024 08:06:31 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 17 Dec 2024 17:06:19 +0100
Message-ID: <CAHmn2DNgor2aB1-wF67O6jE5FTFX7+9sYVQ2nUCtoGzkhCra6g@mail.gmail.com>
Subject: python-linstor/linstor-client 1.24.0 release
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000f121da0629797a7f"
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

--000000000000f121da0629797a7f
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is an update of the linstor-client, that brings arguments for the
clone options and
also some small updates to a few list commands.

## linstor-client
### Added

- Added options --target-resource-group and --force-move-resource-group to
backup ship, restore and schedule enable.
- Added --layer-list argument to resource-definition clone
- Added --resource-group argument to resource-definition clone
- Added layer-list to resource-definition list

### Changed

- Column order and coloring in volume list
- Show layer-list instead of ports column in resource-list
- resource/volume list show multiple primaries as yellow

https://pkg.linbit.com//downloads/linstor/linstor_client-1.24.0.tar.gz

## python-linstor
### Added

- Added options dst_rsc_grp and force_rsc_grp to BackupShip, BackupRestore
and BackupSchedule
- resource_definition_clone: add layer_list parameter
- resource_definition_clone: add resource_group parameter
- Added responses ResourdeDfnLayerData object and some mor layer_stack props

https://pkg.linbit.com//downloads/linstor/python_linstor-1.24.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000f121da0629797a7f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Here is an update of the=
 linstor-client, that brings arguments for the clone options and</div><div>=
also some small updates to a few list commands.</div><div><br></div><div>##=
=C2=A0linstor-client</div><div>### Added<br><br>- Added options --target-re=
source-group and --force-move-resource-group to backup ship, restore and sc=
hedule enable.<br>- Added --layer-list argument to resource-definition clon=
e<br>- Added --resource-group argument to resource-definition clone<br>- Ad=
ded layer-list to resource-definition list<br><br>### Changed<br><br>- Colu=
mn order and coloring in volume list<br>- Show layer-list instead of ports =
column in resource-list<br>- resource/volume list show multiple primaries a=
s yellow</div><div><br></div><div><a href=3D"https://pkg.linbit.com//downlo=
ads/linstor/linstor_client-1.24.0.tar.gz">https://pkg.linbit.com//downloads=
/linstor/linstor_client-1.24.0.tar.gz</a><br></div><br><div>## python-linst=
or</div><div>### Added<br><br>- Added options dst_rsc_grp and force_rsc_grp=
 to BackupShip, BackupRestore and BackupSchedule<br>- resource_definition_c=
lone: add layer_list parameter<br>- resource_definition_clone: add resource=
_group parameter<br>- Added responses ResourdeDfnLayerData object and some =
mor layer_stack props</div><div><br></div><div><a href=3D"https://pkg.linbi=
t.com//downloads/linstor/python_linstor-1.24.0.tar.gz">https://pkg.linbit.c=
om//downloads/linstor/python_linstor-1.24.0.tar.gz</a><br></div><div><br></=
div><div><div>Linstor=C2=A0PPA:<br></div><div><div><a href=3D"https://launc=
hpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" tar=
get=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-s=
tack</a><br></div><div><br></div><div>Best regards,</div><div>Rene</div></d=
iv></div></div>

--000000000000f121da0629797a7f--
