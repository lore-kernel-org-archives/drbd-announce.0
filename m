Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
	[209.85.216.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 6C4E1160917
	for <drbd-announce@lists.linbit.com>;
	Tue, 26 Aug 2025 16:36:15 +0200 (CEST)
Received: by mail-pj1-f50.google.com with SMTP id
	98e67ed59e1d1-3258cdb7253so2811509a91.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 26 Aug 2025 07:36:15 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 26 Aug 2025 16:36:02 +0200
Message-ID: <CAHmn2DPTjnSHdifu+Y8uGKFVX1OOsMUquA6LOmmBR2qzNwQgTw@mail.gmail.com>
Subject: linstor-server 1.32.0-rc.3 release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000000f8db5063d459824"
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

--0000000000000f8db5063d459824
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is the release candidate for 1.32.0 which brings a lot of performance
improvements for rather large installations (resource count > 500 per
node), but of course, also small installations will benefit from it. These
benefits come from a few changes of drbd adjust calls, we now try to only
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

https://pkg.linbit.com//downloads/linstor/linstor-server-1.32.0-rc.3.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000000f8db5063d459824
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Here is the release candidate for 1=
.32.0 which brings a lot of performance improvements=C2=A0for rather large =
installations (resource count &gt; 500 per node), but of course, also small=
 installations will benefit from it. These benefits come from a few changes=
 of drbd adjust calls, we now try to only</div><div>call drbdadm adjust now=
 if it is necessary, to fully benefit from this you will need drbd-utils 9.=
32.0.</div><div><br></div><div>To give some numbers, here is the start up t=
ime (until the satellite is fully ready) for a Satellite with 1000 resource=
s restart:</div><div><br></div><div>=C2=A0* 1.31.3 -&gt; 111.5s</div><div>=
=C2=A0* 1.32.0 -&gt;=C2=A0 =C2=A0 =C2=A08.6s</div><div><br></div><div>Addit=
ionally we changed a few other external command calls (zfs list, lsblk) to =
only target the currently interesting=C2=A0devices.</div><div><br></div><di=
v>We also optimized the data types for communication between Controller and=
 Satellite and could</div><div>reduce the=C2=A0FullSync package(one of the =
largest) by 35% in size.</div><div><br></div><div>Also note that the TCP po=
rt reservation for DRBD got moved from resource-definition level to individ=
ual resources,=C2=A0this allows=C2=A0for better port usage on large setups.=
</div><div><br></div><div>## NOTE</div><div>The long deprecated EXOS storag=
e driver and snapshot shipping have been finally removed from the code in t=
his release, for snapshot shipping please use backup shipping now.</div><di=
v><br></div><div>With this release we also announce that we will remove etc=
d database support with Linstor 1.34.0, until then you will have time to mi=
grate to (SQL or k8s-CRD) databases.=C2=A0</div><div></div><div><br></div><=
div>## [1.32.0-rc.3] - 2025-08-26<br><br>### Added<br><br>- Backup,schedule=
: Add --target-resource-definition. Only usable in combination with &quot;-=
-rd RD&quot;<br><br>### Fixed<br><br>- Drbd: Fixed bug with introduced drbd=
adm optimization (resize)<br>- Backup,restore: Properly set SnapVlmDfn size=
 to avoid issues after rollback/restore<br><br>### Removed<br><br>- parentI=
sVDO wasn&#39;t working anymore at all, as lsblk didn&#39;t report correctl=
y and is not used anymore with LVM-thin on VDO</div><div><br></div><div>## =
[1.32.0-rc.2] - 2025-08-18<br><br>### Fixed<br><br>- Missing volume device =
path if no DRBD adjust was necessary<br><br>## [1.32.0-rc.1] - 2025-08-18<b=
r><br>### Added<br><br>- Allow setting properties on snapshot definitions<b=
r>- Added override_props, delete_props and delete_namespaces to the clone r=
esource-definition endpoint<br>- Added property &quot;StorDriver/Zfs/Rollba=
ckStrategy&quot; to allow for old &quot;zfs rollback&quot; behavior<br>- Ad=
ded property &quot;StorDriver/Zfs/DeleteStrategy&quot; to fail instead of r=
ename ZVOLs if dependent snapshots exist<br><br>### Changed<br><br>- LVM-Th=
in snapshots are set to read-only now<br>- Cache drbdsetup status output fo=
r the device manager run<br>- DevMgr: Do not conf-test the new resource fil=
e, but instead restore the backup on failure<br>- Ask drbdadm for resources=
 that need to be adjusted instead of adjusting everything all the time<br>-=
 Snapshots are now automatically deleted during a &quot;node delete&quot; a=
ction (only from deleting node, not the peers)<br>- zfs list: will now most=
ly only ask for the devices it wants to check instead of a global zfs list<=
br>- lsblk output is now parsed with streaming<br>- parentIsVDO check: only=
 ask for PV member devices<br>- Improved data types in communication protoc=
ol between Controller and Satellite, reducing size by 35%<br><br>### Fixed<=
br><br>- Fixed possible &quot;attempt to replace active transaction Mgr&quo=
t; when updating free space<br>- Fixed race condition while cleaning up aft=
er cloning for ZFS resources<br>- Fixed resource definitions not allowing n=
ew resource (or rollback/restores) after &quot;backup ship .. --download-on=
ly&quot;<br><br>### Removed<br><br>- EXOS support<br>- Snapshot shipping (u=
se backup shipping instead!)</div><div><br></div><div><div><a href=3D"https=
://pkg.linbit.com//downloads/linstor/linstor-server-1.32.0-rc.3.tar.gz">htt=
ps://pkg.linbit.com//downloads/linstor/linstor-server-1.32.0-rc.3.tar.gz</a=
><br></div><div><br></div><div><br></div><div><div><div><div>Linstor PPA:<b=
r><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-sta=
ck" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+arc=
hive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,<b=
r></div><div>Rene</div></div></div></div></div>

--0000000000000f8db5063d459824--
