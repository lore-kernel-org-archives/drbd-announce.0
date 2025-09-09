Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
	[209.85.216.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 7F6DF16090F
	for <drbd-announce@lists.linbit.com>;
	Tue,  9 Sep 2025 11:56:39 +0200 (CEST)
Received: by mail-pj1-f54.google.com with SMTP id
	98e67ed59e1d1-32da35469f7so560075a91.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 09 Sep 2025 02:56:39 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 9 Sep 2025 11:56:26 +0200
Message-ID: <CAHmn2DPyAkg40uvwZv7ToDMHxRL2HwSTQdtk99uvmeKuG3qcYQ@mail.gmail.com>
Subject: linstor-server 1.32.0 final release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000edb8ca063e5b51a2"
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

--000000000000edb8ca063e5b51a2
Content-Type: text/plain; charset="UTF-8"

Hi!

So and here is the final release for 1.32.0 which brings a lot of
performance improvements for rather large installations (resource count >
500 per node), but of course, also small installations will benefit from
it. These benefits come from a few changes of drbd adjust calls, we now try
to only
call drbdadm adjust now if it is necessary, to fully benefit from this you
will need drbd-utils 9.32.0.

To give some numbers, here is the start up time (until the satellite is
fully ready) for a Satellite with 1000 resources restart:

 * 1.31.3 -> 111.5s
 * 1.32.0 ->     8.6s

Additionally we changed a few other external command calls (zfs list,
lsblk) to only target the currently interesting devices.

We also optimized the data types for communication between Controller and
Satellite and could
reduce the FullSync package(one of the largest) by 35% in size.

Also note that the TCP port reservation for DRBD got moved from
resource-definition level to individual resources, this allows for better
port usage on large setups.

## NOTE
The long deprecated EXOS storage driver and snapshot shipping have been
finally removed from the code in this release, for snapshot shipping please
use backup shipping now.

With this release we also announce that we will remove etcd database
support with Linstor 1.34.0, until then you will have time to migrate to
(SQL or k8s-CRD) databases.

## [1.32.0] - 2025-09-09

### Changed

- Improved INFO logging on auto-diskful and delete resources
- Try to keep tiebreaker on auto-diskful delete excessive resources

### Fixed

- SQL: SET SCHEMA statement triggered an early transaction start before any
data was manipulated
- ScopeRunner: start DB transaction after scope locks are acquired
- mkfs: also use nodiscard for thick volumes, as a fullsync is done anyway
- replication-state-events: ignore events for nodes that are currently
unknown
- quickWipe could have been tried with a null device path

## [1.32.0-rc.3] - 2025-08-26

### Added

- Backup,schedule: Add --target-resource-definition. Only usable in
combination with "--rd RD"

### Fixed

- Drbd: Fixed bug with introduced drbdadm optimization (resize)
- Backup,restore: Properly set SnapVlmDfn size to avoid issues after
rollback/restore

### Removed

- parentIsVDO wasn't working anymore at all, as lsblk didn't report
correctly and is not used anymore with LVM-thin on VDO

## [1.32.0-rc.2] - 2025-08-18

### Fixed

- Missing volume device path if no DRBD adjust was necessary

## [1.32.0-rc.1] - 2025-08-18

### Added

- Allow setting properties on snapshot definitions
- Added override_props, delete_props and delete_namespaces to the clone
resource-definition endpoint
- Added property "StorDriver/Zfs/RollbackStrategy" to allow for old "zfs
rollback" behavior
- Added property "StorDriver/Zfs/DeleteStrategy" to fail instead of rename
ZVOLs if dependent snapshots exist

### Changed

- LVM-Thin snapshots are set to read-only now
- Cache drbdsetup status output for the device manager run
- DevMgr: Do not conf-test the new resource file, but instead restore the
backup on failure
- Ask drbdadm for resources that need to be adjusted instead of adjusting
everything all the time
- Snapshots are now automatically deleted during a "node delete" action
(only from deleting node, not the peers)
- zfs list: will now mostly only ask for the devices it wants to check
instead of a global zfs list
- lsblk output is now parsed with streaming
- parentIsVDO check: only ask for PV member devices
- Improved data types in communication protocol between Controller and
Satellite, reducing size by 35%

### Fixed

- Fixed possible "attempt to replace active transaction Mgr" when updating
free space
- Fixed race condition while cleaning up after cloning for ZFS resources
- Fixed resource definitions not allowing new resource (or
rollback/restores) after "backup ship .. --download-only"

### Removed

- EXOS support
- Snapshot shipping (use backup shipping instead!)

https://pkg.linbit.com//downloads/linstor/linstor-server-1.32.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000edb8ca063e5b51a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>So and here is the final release fo=
r 1.32.0 which brings a lot of performance improvements=C2=A0for rather lar=
ge installations (resource count &gt; 500 per node), but of course, also sm=
all installations will benefit from it. These benefits come from a few chan=
ges of drbd adjust calls, we now try to only</div><div>call drbdadm adjust =
now if it is necessary, to fully benefit from this you will need drbd-utils=
 9.32.0.</div><div><br></div><div>To give some numbers, here is the start u=
p time (until the satellite is fully ready) for a Satellite with 1000 resou=
rces restart:</div><div><br></div><div>=C2=A0* 1.31.3 -&gt; 111.5s</div><di=
v>=C2=A0* 1.32.0 -&gt;=C2=A0 =C2=A0 =C2=A08.6s</div><div><br></div><div>Add=
itionally we changed a few other external command calls (zfs list, lsblk) t=
o only target the currently interesting=C2=A0devices.</div><div><br></div><=
div>We also optimized the data types for communication between Controller a=
nd Satellite and could</div><div>reduce the=C2=A0FullSync package(one of th=
e largest) by 35% in size.</div><div><br></div><div>Also note that the TCP =
port reservation for DRBD got moved from resource-definition level to indiv=
idual resources,=C2=A0this allows=C2=A0for better port usage on large setup=
s.</div><div><br></div><div>## NOTE</div><div>The long deprecated EXOS stor=
age driver and snapshot shipping have been finally removed from the code in=
 this release, for snapshot shipping please use backup shipping now.</div><=
div><br></div><div>With this release we also announce that we will remove e=
tcd database support with Linstor 1.34.0, until then you will have time to =
migrate to (SQL or k8s-CRD) databases.=C2=A0</div><div></div><div><br></div=
><div>## [1.32.0] - 2025-09-09<br><br>### Changed<br><br>- Improved INFO lo=
gging on auto-diskful and delete resources<br>- Try to keep tiebreaker on a=
uto-diskful delete excessive resources<br><br>### Fixed<br><br>- SQL: SET S=
CHEMA statement triggered an early transaction start before any data was ma=
nipulated<br>- ScopeRunner: start DB transaction after scope locks are acqu=
ired<br>- mkfs: also use nodiscard for thick volumes, as a fullsync is done=
 anyway<br>- replication-state-events: ignore events for nodes that are cur=
rently unknown<br>- quickWipe could have been tried with a null device path=
<br><br>## [1.32.0-rc.3] - 2025-08-26<br><br>### Added<br><br>- Backup,sche=
dule: Add --target-resource-definition. Only usable in combination with &qu=
ot;--rd RD&quot;<br><br>### Fixed<br><br>- Drbd: Fixed bug with introduced =
drbdadm optimization (resize)<br>- Backup,restore: Properly set SnapVlmDfn =
size to avoid issues after rollback/restore<br><br>### Removed<br><br>- par=
entIsVDO wasn&#39;t working anymore at all, as lsblk didn&#39;t report corr=
ectly and is not used anymore with LVM-thin on VDO<br><br>## [1.32.0-rc.2] =
- 2025-08-18<br><br>### Fixed<br><br>- Missing volume device path if no DRB=
D adjust was necessary<br><br>## [1.32.0-rc.1] - 2025-08-18<br><br>### Adde=
d<br><br>- Allow setting properties on snapshot definitions<br>- Added over=
ride_props, delete_props and delete_namespaces to the clone resource-defini=
tion endpoint<br>- Added property &quot;StorDriver/Zfs/RollbackStrategy&quo=
t; to allow for old &quot;zfs rollback&quot; behavior<br>- Added property &=
quot;StorDriver/Zfs/DeleteStrategy&quot; to fail instead of rename ZVOLs if=
 dependent snapshots exist<br><br>### Changed<br><br>- LVM-Thin snapshots a=
re set to read-only now<br>- Cache drbdsetup status output for the device m=
anager run<br>- DevMgr: Do not conf-test the new resource file, but instead=
 restore the backup on failure<br>- Ask drbdadm for resources that need to =
be adjusted instead of adjusting everything all the time<br>- Snapshots are=
 now automatically deleted during a &quot;node delete&quot; action (only fr=
om deleting node, not the peers)<br>- zfs list: will now mostly only ask fo=
r the devices it wants to check instead of a global zfs list<br>- lsblk out=
put is now parsed with streaming<br>- parentIsVDO check: only ask for PV me=
mber devices<br>- Improved data types in communication protocol between Con=
troller and Satellite, reducing size by 35%<br><br>### Fixed<br><br>- Fixed=
 possible &quot;attempt to replace active transaction Mgr&quot; when updati=
ng free space<br>- Fixed race condition while cleaning up after cloning for=
 ZFS resources<br>- Fixed resource definitions not allowing new resource (o=
r rollback/restores) after &quot;backup ship .. --download-only&quot;<br><b=
r>### Removed<br><br>- EXOS support<br>- Snapshot shipping (use backup ship=
ping instead!)</div><div><br></div><div><div><a href=3D"https://pkg.linbit.=
com//downloads/linstor/linstor-server-1.32.0.tar.gz">https://pkg.linbit.com=
//downloads/linstor/linstor-server-1.32.0.tar.gz</a><br></div><div><br></di=
v><div><br></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://lau=
nchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" t=
arget=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9=
-stack</a></div></div><div><br></div><div>Cheers,<br></div><div>Rene</div><=
/div></div></div></div>

--000000000000edb8ca063e5b51a2--
