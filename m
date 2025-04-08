Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
	[209.85.216.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 33D1916B8AE
	for <drbd-announce@lists.linbit.com>;
	Tue,  8 Apr 2025 13:29:55 +0200 (CEST)
Received: by mail-pj1-f52.google.com with SMTP id
	98e67ed59e1d1-30332dfc820so5715782a91.2
	for <drbd-announce@lists.linbit.com>;
	Tue, 08 Apr 2025 04:29:54 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 8 Apr 2025 13:29:42 +0200
Message-ID: <CAHmn2DNx2JExWOiFYJN-TkNYZyj=spAb3w_+aaLcwxVYB8t9kQ@mail.gmail.com>
Subject: linstor-server 1.31.0 release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000eaeefb063242ab21"
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

--000000000000eaeefb063242ab21
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is finally the final release of linstor 1.31.0, we noticed some design
deficits with the
new replication states, so had to rework them a bit, so it took a bit
longer after the last RC.
We also fixed a few smaller bugs we found while testing.

Some highlights of this release:
  * Fixed snapshot rollback
    Snapshot rollback only worked if the resource/node the snapshot was
made, did never
    get deleted or moved to another node. As the new node would never have
the origin
    snapshot. We came up with a node resync idea and for ZFS with a
renaming and refcounting
    method to make sure snapshot rollback always works.
  * Auto-quorum reworked
    The auto-quorum property was very special and hard to understand as it
didn't follow
    the Linstor principle of inheriting properties. It usually copied its
value into the on-no-quorum
    property and you had to change each of them, if you wanted to update
all of them.
    Now the property is gone and the behaviour will only be controlled by
the DRBD option
    quorum.
  * DRBD replication states are now sent to the linstor-controller
    These states are used in the balance resource task and also shown in
the client.

## [1.31.0] - 2025-04-08

### Changed

- Improved TCPConnector logging and only reconnect in client mode
- physical-storage-api: allow VDO with lvm-thin
- ETCD: Enabled DrbdOptions/auto-diskful-allow-cleanup on ctrl unless it
was already set
- ReplicationState design wasn't considering replication states per volume
connection.
  This has been reworked and now a map is used and returned to the client.

### Fixed

- Weird access to deleted resource bug on drbd down
- CreateNetIf didn't close current peer connection
- UpdateSpaceInfoTask did never commit() its allocation size updates
- Fix deleting of a drbd resource if it was already down

## [1.31.0-rc.2] - 2025-03-21

### Fixed

- Add missing migrations (etcd/crd) for ZFS rename
- Only satellite zfs migrate nodes that have a ZFS pool

## [1.31.0-rc.1] - 2025-03-19

### Added

- Notify controller about replication state changes in DRBD
- Notify controller about done percentage changes in DRBD
- Encryption-API: added a GET endpoint to ask for the master passphrase
status

### Changed

- BalanceResource: Ignore resources which are in a non-valid replication
state
- sos-report: include backup ship queue
- sos-report: syslog will only be gathered if messages was not available
- Clone: check that a resource name for the cloned resource is set
- Clone: fail clone if the source resource isn't UpToDate or has skip-disk
- Memory: Limit satellite to 2G max memory (-Xmx2G) and controller to 8G
- JVM: will now crash on OutOfMemoryError
- Limit reactor worker threads to 16
- DRBD .res file now contains the time the file was generated
- BalanceResource: Improved selection when deleting excess resource
- AutoDiskfulTask: Improved selection when deleting excess resource
- Tiebreaker: Improved decision making if a deleting resource should be
kept as tiebreaker
- Write a full documented linstor.toml and remove the linstor.toml-example
- Snapshot rollback now does internally a resource delete + snapshot restore
- ZFS resource can now be deleted while having ZFS snapshots (ZFS volumes
will be renamed)
- ZFS snapshots can now be deleted while having ZFS clones (ZFS snapshots
will be renamed)
- Auto-quorum: Reworked auto-quorum property behaviour, property was
removed and auto-quorum is now managed through
               the drbd option quorum. on-no-quorum properties will be
inherited.
- BackupShip: start next queued shipment immediately when sending fails

### Fixed

- Reconnect: Fixed rare race condition in DRBD version check
- Resource delete: Fixed rare race condition where a delayed DRBD event
causes "resource not found" ErrorReports
- Fixed possible UUID mismatch after deletion of last snapshot failed to
properly clean up satellite
- Fixed "resource not found" bug when restoring from a snapshot when the
source-resource was already deleted
- Satellite: Fixed rare "attempt to replace active transMgr" error
- SATELLITES_CAPACITY table NODE_NAME size was too short
- BackupShip: queued backups are now removed if the target cluster goes
offline
- BackupShip: do not use snapshots that are deleting as base for an
incremental backup
- BackupShip: remove snapshots from queued backups that have them as base
when deleting them

https://pkg.linbit.com//downloads/linstor/linstor-server-1.31.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000eaeefb063242ab21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Here is finally the final release o=
f linstor 1.31.0, we noticed some design deficits=C2=A0with the</div><div>n=
ew replication states, so had to rework them a bit, so it took a bit longer=
 after the last RC.</div><div>We also fixed a few smaller bugs we found whi=
le testing.</div><div><br></div><div>Some highlights of this release:</div>=
<div>=C2=A0 * Fixed snapshot rollback</div><div>=C2=A0 =C2=A0 Snapshot roll=
back only worked if the resource/node the snapshot was made, did never</div=
><div>=C2=A0 =C2=A0 get deleted or moved to another node. As the new node w=
ould never have the origin</div><div>=C2=A0 =C2=A0 snapshot. We came up wit=
h a node resync idea and for ZFS with a renaming and refcounting</div><div>=
=C2=A0 =C2=A0 method to make sure snapshot rollback always works.</div><div=
>=C2=A0 * Auto-quorum reworked</div><div>=C2=A0 =C2=A0 The auto-quorum prop=
erty was very special and hard to understand as it didn&#39;t follow</div><=
div>=C2=A0 =C2=A0 the Linstor principle of inheriting properties. It usuall=
y copied its value into the on-no-quorum</div><div>=C2=A0 =C2=A0 property a=
nd you had to change each of them, if you=C2=A0wanted to update all of them=
.</div><div>=C2=A0 =C2=A0 Now the property is gone and the behaviour will o=
nly be controlled by the DRBD option</div><div>=C2=A0 =C2=A0 quorum.</div><=
div>=C2=A0 * DRBD replication states are now sent to the linstor-controller=
</div><div>=C2=A0 =C2=A0 These states are used in the balance resource task=
 and also shown in the client.</div><div></div><div><br></div><div>## [1.31=
.0] - 2025-04-08<br><br>### Changed<br><br>- Improved TCPConnector logging =
and only reconnect in client mode<br>- physical-storage-api: allow VDO with=
 lvm-thin<br>- ETCD: Enabled DrbdOptions/auto-diskful-allow-cleanup on ctrl=
 unless it was already set<br>- ReplicationState design wasn&#39;t consider=
ing replication states per volume connection.<br>=C2=A0 This has been rewor=
ked and now a map is used and returned to the client.<br><br>### Fixed<br><=
br>- Weird access to deleted resource bug on drbd down<br>- CreateNetIf did=
n&#39;t close current peer connection<br>- UpdateSpaceInfoTask did never co=
mmit() its allocation size updates<br>- Fix deleting of a drbd resource if =
it was already down<br><br>## [1.31.0-rc.2] - 2025-03-21<br><br>### Fixed<b=
r><br>- Add missing migrations (etcd/crd) for ZFS rename<br>- Only satellit=
e zfs migrate nodes that have a ZFS pool<br><br>## [1.31.0-rc.1] - 2025-03-=
19<br><br>### Added<br><br>- Notify controller about replication state chan=
ges in DRBD<br>- Notify controller about done percentage changes in DRBD<br=
>- Encryption-API: added a GET endpoint to ask for the master passphrase st=
atus<br><br>### Changed<br><br>- BalanceResource: Ignore resources which ar=
e in a non-valid replication state<br>- sos-report: include backup ship que=
ue<br>- sos-report: syslog will only be gathered if messages was not availa=
ble<br>- Clone: check that a resource name for the cloned resource is set<b=
r>- Clone: fail clone if the source resource isn&#39;t UpToDate or has skip=
-disk<br>- Memory: Limit satellite to 2G max memory (-Xmx2G) and controller=
 to 8G<br>- JVM: will now crash on OutOfMemoryError<br>- Limit reactor work=
er threads to 16<br>- DRBD .res file now contains the time the file was gen=
erated<br>- BalanceResource: Improved selection when deleting excess resour=
ce<br>- AutoDiskfulTask: Improved selection when deleting excess resource<b=
r>- Tiebreaker: Improved decision making if a deleting resource should be k=
ept as tiebreaker<br>- Write a full documented linstor.toml and remove the =
linstor.toml-example<br>- Snapshot rollback now does internally a resource =
delete + snapshot restore<br>- ZFS resource can now be deleted while having=
 ZFS snapshots (ZFS volumes will be renamed)<br>- ZFS snapshots can now be =
deleted while having ZFS clones (ZFS snapshots will be renamed)<br>- Auto-q=
uorum: Reworked auto-quorum property behaviour, property was removed and au=
to-quorum is now managed through<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0the drbd option quorum. on-no-quorum properties will be in=
herited.<br>- BackupShip: start next queued shipment immediately when sendi=
ng fails<br><br>### Fixed<br><br>- Reconnect: Fixed rare race condition in =
DRBD version check<br>- Resource delete: Fixed rare race condition where a =
delayed DRBD event causes &quot;resource not found&quot; ErrorReports<br>- =
Fixed possible UUID mismatch after deletion of last snapshot failed to prop=
erly clean up satellite<br>- Fixed &quot;resource not found&quot; bug when =
restoring from a snapshot when the source-resource was already deleted<br>-=
 Satellite: Fixed rare &quot;attempt to replace active transMgr&quot; error=
<br>- SATELLITES_CAPACITY table NODE_NAME size was too short<br>- BackupShi=
p: queued backups are now removed if the target cluster goes offline<br>- B=
ackupShip: do not use snapshots that are deleting as base for an incrementa=
l backup<br>- BackupShip: remove snapshots from queued backups that have th=
em as base when deleting them</div><div><br></div><div><div><a href=3D"http=
s://pkg.linbit.com//downloads/linstor/linstor-server-1.31.0.tar.gz">https:/=
/pkg.linbit.com//downloads/linstor/linstor-server-1.31.0.tar.gz</a><br></di=
v><div><br></div><div><br></div><div><div><div><div>Linstor PPA:<br><a href=
=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=
=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/ub=
untu/linbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,<br></div=
><div>Rene</div></div></div></div></div>

--000000000000eaeefb063242ab21--
