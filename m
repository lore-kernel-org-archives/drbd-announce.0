Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
	[209.85.216.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2905616091D
	for <drbd-announce@lists.linbit.com>;
	Thu, 20 Mar 2025 09:36:03 +0100 (CET)
Received: by mail-pj1-f54.google.com with SMTP id
	98e67ed59e1d1-2ff615a114bso2491571a91.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 20 Mar 2025 01:36:03 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 20 Mar 2025 09:35:51 +0100
Message-ID: <CAHmn2DMqtXLM5HxGJ88MD=bgOrvGsJ6xHUfj4fVHcZFfn439PA@mail.gmail.com>
Subject: linstor-server 1.31.0-rc.1 release
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000003307d40630c2075c"
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

--0000000000003307d40630c2075c
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is the first release candidate for the upcoming 1.31.0 minor release,
as you will see below this release has a huge amount of changes, why we
will have at least a 2 week RC phase and maybe an additional RC release.

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

https://pkg.linbit.com//downloads/linstor/linstor-server-1.31.0-rc.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000003307d40630c2075c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi!<div><br></div><div>H=
ere is the first release candidate for the upcoming 1.31.0 minor release,</=
div><div>as you will see below this release has a huge amount of changes, w=
hy we will have at least a 2 week RC phase and maybe an additional RC relea=
se.</div><div><br></div><div>Some highlights of this release:</div><div>=C2=
=A0 * Fixed snapshot rollback</div><div>=C2=A0 =C2=A0 Snapshot rollback onl=
y worked if the resource/node the snapshot was made, did never</div><div>=
=C2=A0 =C2=A0 get deleted or moved to another node. As the new node would n=
ever have the origin</div><div>=C2=A0 =C2=A0 snapshot. We came up with a no=
de resync idea and for ZFS with a renaming and refcounting</div><div>=C2=A0=
 =C2=A0 method to make sure snapshot rollback always works.</div><div>=C2=
=A0 * Auto-quorum reworked</div><div>=C2=A0 =C2=A0 The auto-quorum property=
 was very special and hard to understand as it didn&#39;t follow</div><div>=
=C2=A0 =C2=A0 the Linstor principle of inheriting properties. It usually co=
pied its value into the on-no-quorum</div><div>=C2=A0 =C2=A0 property and y=
ou had to change each of them, if you=C2=A0wanted to update all of them.</d=
iv><div>=C2=A0 =C2=A0 Now the property is gone and the behaviour will only =
be controlled by the DRBD option</div><div>=C2=A0 =C2=A0 quorum.</div><div>=
</div><div><br></div><div>## [1.31.0-rc.1] - 2025-03-19<br><br>### Added<br=
><br>- Notify controller about replication state changes in DRBD<br>- Notif=
y controller about done percentage changes in DRBD<br>- Encryption-API: add=
ed a GET endpoint to ask for the master passphrase status<br><br>### Change=
d<br><br>- BalanceResource: Ignore resources which are in a non-valid repli=
cation state<br>- sos-report: include backup ship queue<br>- sos-report: sy=
slog will only be gathered if messages was not available<br>- Clone: check =
that a resource name for the cloned resource is set<br>- Clone: fail clone =
if the source resource isn&#39;t UpToDate or has skip-disk<br>- Memory: Lim=
it satellite to 2G max memory (-Xmx2G) and controller to 8G<br>- JVM: will =
now crash on OutOfMemoryError<br>- Limit reactor worker threads to 16<br>- =
DRBD .res file now contains the time the file was generated<br>- BalanceRes=
ource: Improved selection when deleting excess resource<br>- AutoDiskfulTas=
k: Improved selection when deleting excess resource<br>- Tiebreaker: Improv=
ed decision making if a deleting resource should be kept as tiebreaker<br>-=
 Write a full documented linstor.toml and remove the linstor.toml-example<b=
r>- Snapshot rollback now does internally a resource delete + snapshot rest=
ore<br>- ZFS resource can now be deleted while having ZFS snapshots (ZFS vo=
lumes will be renamed)<br>- ZFS snapshots can now be deleted while having Z=
FS clones (ZFS snapshots will be renamed)<br>- Auto-quorum: Reworked auto-q=
uorum property behaviour, property was removed and auto-quorum is now manag=
ed through<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0the dr=
bd option quorum. on-no-quorum properties will be inherited.<br>- BackupShi=
p: start next queued shipment immediately when sending fails<br><br>### Fix=
ed<br><br>- Reconnect: Fixed rare race condition in DRBD version check<br>-=
 Resource delete: Fixed rare race condition where a delayed DRBD event caus=
es &quot;resource not found&quot; ErrorReports<br>- Fixed possible UUID mis=
match after deletion of last snapshot failed to properly clean up satellite=
<br>- Fixed &quot;resource not found&quot; bug when restoring from a snapsh=
ot when the source-resource was already deleted<br>- Satellite: Fixed rare =
&quot;attempt to replace active transMgr&quot; error<br>- SATELLITES_CAPACI=
TY table NODE_NAME size was too short<br>- BackupShip: queued backups are n=
ow removed if the target cluster goes offline<br>- BackupShip: do not use s=
napshots that are deleting as base for an incremental backup<br>- BackupShi=
p: remove snapshots from queued backups that have them as base when deletin=
g them</div><div><br></div><div><div><a href=3D"https://pkg.linbit.com//dow=
nloads/linstor/linstor-server-1.31.0-rc.1.tar.gz">https://pkg.linbit.com//d=
ownloads/linstor/linstor-server-1.31.0-rc.1.tar.gz</a><br></div><div><br></=
div><div><br></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://l=
aunchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer"=
 target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drb=
d9-stack</a></div></div><div><br></div><div>Cheers,<br></div><div>Rene</div=
></div></div></div></div>
</div>
</div>

--0000000000003307d40630c2075c--
