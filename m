Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
	[209.85.214.171])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D2769420650
	for <drbd-announce@lists.linbit.com>;
	Tue,  2 Apr 2024 13:01:46 +0200 (CEST)
Received: by mail-pl1-f171.google.com with SMTP id
	d9443c01a7336-1e26dc2b7ceso1301505ad.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 02 Apr 2024 04:01:46 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 2 Apr 2024 13:01:34 +0200
Message-ID: <CAHmn2DN9sppQtLOB3Ffk4Jin1XwBaDKDTOdO_tzrTi4nY5-1fA@mail.gmail.com>
Subject: linstor-server 1.27.0 release
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000022aa4106151b08e3"
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

--00000000000022aa4106151b08e3
Content-Type: text/plain; charset="UTF-8"

Hi!

This new minor release introduces the ability to specify your own
passphrases
for encryption volumes and also modify them.
Other additions are a force-restore option for backup shipping and finally
better(more)
INFO logging for Linstor.
But the release is still more bug fixing related than introducing new
features.

## [1.27.0] - 2024-04-02

### Added

- Allow users to provide their own encryption passphrase for volumes
- Allow users to provide their own encryption passphrase after cloning
- Allow users to change the passphrase for a luks volume definition
- Backup ship, restore and scheduled backups now have a --force-restore
option
- Added more info logging
- Added "DrbdOptions/ExactSize" for migration purposes

### Changed

- Default configuration directory for linstor-database utility (export-db
and import-db) is now "/etc/linstor"
- Make-available will no longer return an error if an involved node is
offline (warn instead)

### Fixed

- rscDfn-props are no longer reset through --download-only backup restore
or if it has rscs deployed
- Fixed snapshot-rollback more than once on a resource
- Fixed re-/ordering issues within the AutoSnapshotTask
- Fixed backup restore not working if one of the backup-parts already
existed on the cluster
- Fixed K8s migrations to use correct generated DB table instances
- Deleted invalid SpaceHistory entries from K8s.
- Fixed left-over tiebreaker after evacuation of single DRBD resource
- Fixed negative result of an allocation granularity calculation
- Fixed infinite loop and limited range of power-of-2 calculations
- Workaround for connections where the attached peer object is missing
- Only show warnings of missing cgroup (v1) if the user actually tries to
use it
- Fixed undelete resources (also remove volume DELETE and DRBD_DELETE flags)

https://pkg.linbit.com//downloads/linstor/linstor-server-1.27.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--00000000000022aa4106151b08e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>This new minor release introduces t=
he ability to specify your own passphrases</div><div>for encryption volumes=
 and also modify them.</div><div>Other additions are a force-restore option=
 for backup shipping and finally better(more)</div><div>INFO logging for Li=
nstor.</div><div>But the release is still more bug fixing related than=C2=
=A0introducing=C2=A0new features.</div><div><br></div><div>## [1.27.0] - 20=
24-04-02<br><br>### Added<br><br>- Allow users to provide their own encrypt=
ion passphrase for volumes<br>- Allow users to provide their own encryption=
 passphrase after cloning<br>- Allow users to change the passphrase for a l=
uks volume definition<br>- Backup ship, restore and scheduled backups now h=
ave a --force-restore option<br>- Added more info logging<br>- Added &quot;=
DrbdOptions/ExactSize&quot; for migration purposes<br><br>### Changed<br><b=
r>- Default configuration directory for linstor-database utility (export-db=
 and import-db) is now &quot;/etc/linstor&quot;<br>- Make-available will no=
 longer return an error if an involved node is offline (warn instead)<br><b=
r>### Fixed<br><br>- rscDfn-props are no longer reset through --download-on=
ly backup restore or if it has rscs deployed<br>- Fixed snapshot-rollback m=
ore than once on a resource<br>- Fixed re-/ordering issues within the AutoS=
napshotTask<br>- Fixed backup restore not working if one of the backup-part=
s already existed on the cluster<br>- Fixed K8s migrations to use correct g=
enerated DB table instances<br>- Deleted invalid SpaceHistory entries from =
K8s.<br>- Fixed left-over tiebreaker after evacuation of single DRBD resour=
ce<br>- Fixed negative result of an allocation granularity calculation<br>-=
 Fixed infinite loop and limited range of power-of-2 calculations<br>- Work=
around for connections where the attached peer object is missing<br>- Only =
show warnings of missing cgroup (v1) if the user actually tries to use it<b=
r>- Fixed undelete resources (also remove volume DELETE and DRBD_DELETE fla=
gs)<br></div><div><br></div><div><div><a href=3D"https://pkg.linbit.com//do=
wnloads/linstor/linstor-server-1.27.0.tar.gz">https://pkg.linbit.com//downl=
oads/linstor/linstor-server-1.27.0.tar.gz</a><br></div><div><br></div><div>=
<br></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.=
net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=
=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stac=
k</a></div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></div>=
</div></div></div>

--00000000000022aa4106151b08e3--
