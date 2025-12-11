Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
	[209.85.214.180])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 3FABF16312A
	for <drbd-announce@lists.linbit.com>;
	Thu, 11 Dec 2025 13:16:05 +0100 (CET)
Received: by mail-pl1-f180.google.com with SMTP id
	d9443c01a7336-298287a26c3so395865ad.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 11 Dec 2025 04:16:05 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 11 Dec 2025 13:15:53 +0100
Message-ID: <CAHmn2DP7KvMcs4bur6HLK05vN8gUjzX7mQAQvYVBUbmLBYudNw@mail.gmail.com>
Subject: linstor-server 1.33.0 final release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000d6adfe0645ac1b4d"
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

--000000000000d6adfe0645ac1b4d
Content-Type: text/plain; charset="UTF-8"

Hi!

After a month of testing and fixing issues here is the final 1.33.0 release.
The big new feature in this release is the possibility to ship already
existing snapshots to other Linstor clusters or a S3 remote.
Also the Linstor master passphrase can now be provided more securely with
systemd-creds.

Another noteworthy change is that the LS_KEEP_RES is now obsolete as
Linstor doesn't delete known .res files anymore and keeps them.

We also improved recovery from failed clone resources, so you should now be
able to finally delete them.

See the changelog below for all other changes and fixes.

## NOTE
* With this release we also announce that we will remove etcd database
support with Linstor 1.34.0, until then you will have time to migrate to
(SQL or k8s-CRD) databases.
* Heads up: Linstor 1.34.0 will switch to java-21, so be prepared to have
java-21 jre ready for the next minor upgrade

## [1.33.0] - 2025-12-11

### Changed

- Added checks if existing resources have enough peerSlots for a new peer

### Fixed

- Clone: Fixed wrong resource-counting for the peerSlots checks
- DrbdProxy: Fixed ignored DrbdProxy/AutoEnable property when set on
controller level
- Improved error logging on decryption errors

## [1.33.0-rc.2] - 2025-12-01

### Fixed

- AutoSnapshot: Fixed "Keep" property (regression introduced in 1.32.0)
- Fixed bug where clone no longer works with other min-io size than 512
- Fixed bug where "r c" fails with disabled auto-min-io on a 4k block-sized
SP
- Clone: cleanup source snapshot if cloning failed
- Clone: mark failed volumes with DELETE flags to allow to delete them
afterward
- Fixed --diskless-on-remaining not working with COMBINED nodes
- Fixed unnecessary restart of local DRBD peer right after the resource was
created
- ToggleDisk: Added missing free-space check
- Clone: Added missing free-space check
- Fixed very rare AccessToDeletedNode during a node-update from the
satellite
- Fixed possible NPE in DrbdLayer.hasMetaData
- If one resource fails during calculating gross/net size, other resources
should still be processed
- Check resource size on creation and resize
- Run autohelper.manage tasks after node fullsync (before only on node rc,
c, d)
- Autotiebreaker: do not delete tiebereaker if node is not online/fullsynced
- Cleanup clone task on satellite reconnect
- Clone: Fixed race conditions when starting multiple clones at once

## [1.33.0-rc.1] - 2025-11-11

### Added

- physical-storage-api: allow passing pv/vg/lv/zpool create arguments
- Encryption: Added systemd-creds support for masterpassphrase.
- DRBD: Added Linstor/Drbd/auto-block-size
- Backup: allow shipment of already existing snapshots
- Node,evacuate: Added --target and --do-not-target options

### Changed

- Removed keep_res regular expression pattern from options
- Instead of caching if a DRBD .res file exists, actually check if the file
exists
- Do not delete known Linstor drbd res files, LS_KEEP_RES is now obsolete
- Increase max packet size 16M -> 64M
- Increased timeout for tar during sos-report to an hour
- Removed flywaydb dependency and do migrations (as with other "db"s)
ourselves
- ReconnectorTask: changed logging levels and added more logging
- API: do not store error reports if required remote parameters are missing
- Node evacuate: By default node evacuate also evacuates existing snapshots

### Fixed

- Attempt to fix race-condition "Received unknown storage resource from
satellite"
- Prometheus: fix using peerId as peer address in api call duration
statistics (GitHub #466)
- H2 db should no longer prematurely shutdown
- DRBD: recreate ext-metadata after backing disk needed to be re-created
- Fixed a bug where a failed clone leads to AccessToDeletedData bug
- Cache: Properly flush to origin device when suspending
- Fixed toggle-disk bug when evacuation target has already diskless resource
- Fixed possible NPE when a satellite updates a storage pool (capacity,
supports snapshots, etc)

https://pkg.linbit.com//downloads/linstor/linstor-server-1.33.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000d6adfe0645ac1b4d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>After a=C2=A0month of testing and=
=C2=A0fixing issues here is the final 1.33.0 release.</div><div>The big new=
 feature in this release is the possibility to ship already existing snapsh=
ots to other Linstor clusters or a S3 remote.</div><div>Also the Linstor ma=
ster passphrase can now be provided more securely with systemd-creds.</div>=
<div><br></div><div>Another noteworthy change is that the LS_KEEP_RES is no=
w obsolete=C2=A0as Linstor doesn&#39;t delete known .res files anymore and =
keeps them.</div><div><br></div><div>We also improved recovery from failed =
clone resources, so you should now be able to finally delete them.</div><di=
v><br></div><div>See the changelog below=C2=A0for all other changes and fix=
es.</div><div><br></div><div>## NOTE</div><div>* With this release we also =
announce that we will remove etcd database support with Linstor 1.34.0, unt=
il then you will have time to migrate to (SQL or k8s-CRD) databases.<br>* H=
eads up: Linstor 1.34.0 will switch to java-21, so be prepared to have java=
-21 jre ready for the next minor upgrade</div><div></div><div><br></div><di=
v>## [1.33.0] - 2025-12-11<br><br>### Changed<br><br>- Added checks if exis=
ting resources have enough peerSlots for a new peer<br><br>### Fixed<br><br=
>- Clone: Fixed wrong resource-counting for the peerSlots checks<br>- DrbdP=
roxy: Fixed ignored DrbdProxy/AutoEnable property when set on controller le=
vel<br>- Improved error logging on decryption errors<br><br>## [1.33.0-rc.2=
] - 2025-12-01<br><br>### Fixed<br><br>- AutoSnapshot: Fixed &quot;Keep&quo=
t; property (regression introduced in 1.32.0)<br>- Fixed bug where clone no=
 longer works with other min-io size than 512<br>- Fixed bug where &quot;r =
c&quot; fails with disabled auto-min-io on a 4k block-sized SP<br>- Clone: =
cleanup source snapshot if cloning failed<br>- Clone: mark failed volumes w=
ith DELETE flags to allow to delete them afterward<br>- Fixed --diskless-on=
-remaining not working with COMBINED nodes<br>- Fixed unnecessary restart o=
f local DRBD peer right after the resource was created<br>- ToggleDisk: Add=
ed missing free-space check<br>- Clone: Added missing free-space check<br>-=
 Fixed very rare AccessToDeletedNode during a node-update from the satellit=
e<br>- Fixed possible NPE in DrbdLayer.hasMetaData<br>- If one resource fai=
ls during calculating gross/net size, other resources should still be proce=
ssed<br>- Check resource size on creation and resize<br>- Run autohelper.ma=
nage tasks after node fullsync (before only on node rc, c, d)<br>- Autotieb=
reaker: do not delete tiebereaker if node is not online/fullsynced<br>- Cle=
anup clone task on satellite reconnect<br>- Clone: Fixed race conditions wh=
en starting multiple clones at once</div><div><br></div><div>## [1.33.0-rc.=
1] - 2025-11-11<br><br>### Added<br><br>- physical-storage-api: allow passi=
ng pv/vg/lv/zpool create arguments<br>- Encryption: Added systemd-creds sup=
port for masterpassphrase.<br>- DRBD: Added Linstor/Drbd/auto-block-size<br=
>- Backup: allow shipment of already existing snapshots<br>- Node,evacuate:=
 Added --target and --do-not-target options<br><br>### Changed<br><br>- Rem=
oved keep_res regular expression pattern from options<br>- Instead of cachi=
ng if a DRBD .res file exists, actually check if the file exists<br>- Do no=
t delete known Linstor drbd res files, LS_KEEP_RES is now obsolete<br>- Inc=
rease max packet size 16M -&gt; 64M<br>- Increased timeout for tar during s=
os-report to an hour<br>- Removed flywaydb dependency and do migrations (as=
 with other &quot;db&quot;s) ourselves<br>- ReconnectorTask: changed loggin=
g levels and added more logging<br>- API: do not store error reports if req=
uired remote parameters are missing<br>- Node evacuate: By default node eva=
cuate also evacuates existing snapshots<br><br>### Fixed<br><br>- Attempt t=
o fix race-condition &quot;Received unknown storage resource from satellite=
&quot;<br>- Prometheus: fix using peerId as peer address in api call durati=
on statistics (GitHub #466)<br>- H2 db should no longer prematurely shutdow=
n<br>- DRBD: recreate ext-metadata after backing disk needed to be re-creat=
ed<br>- Fixed a bug where a failed clone leads to AccessToDeletedData bug<b=
r>- Cache: Properly flush to origin device when suspending<br>- Fixed toggl=
e-disk bug when evacuation target has already diskless resource<br>- Fixed =
possible NPE when a satellite updates a storage pool (capacity, supports sn=
apshots, etc)</div><div><br></div><div><div><a href=3D"https://pkg.linbit.c=
om//downloads/linstor/linstor-server-1.33.0.tar.gz">https://pkg.linbit.com/=
/downloads/linstor/linstor-server-1.33.0.tar.gz</a><br></div><div><br></div=
><div><br></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://laun=
chpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" ta=
rget=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-=
stack</a></div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></=
div></div></div></div>

--000000000000d6adfe0645ac1b4d--
