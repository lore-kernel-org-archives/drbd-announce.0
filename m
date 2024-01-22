Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
	[209.85.215.182])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id CD48842020F
	for <drbd-announce@lists.linbit.com>;
	Mon, 22 Jan 2024 12:28:28 +0100 (CET)
Received: by mail-pg1-f182.google.com with SMTP id
	41be03b00d2f7-5cfb8126375so253404a12.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 22 Jan 2024 03:28:28 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 22 Jan 2024 12:28:16 +0100
Message-ID: <CAHmn2DO9Cpiv3h9CCmvN42hnrV9Esz6Uhr=BBN7NO-FrrN8bLw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000e94da1060f872057"
Subject: [DRBD-announce] linstor-server 1.26.0-rc.1 release
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

--000000000000e94da1060f872057
Content-Type: text/plain; charset="UTF-8"

Hi!

Initially, this RC was planned to be released before Christmas, but we
found some issues
with one change in this release and had to postpone it into the new year.

This release has one highlight feature:

* BalanceResourcesTask
   There is now a recurring Linstor task that tries to keep your set
place-count
   from the resource-group to all resources belonging to this group.

If you want to disable this behaviour, set the `BalanceResourcesEnabled`
property
on either controller or resource-group to false.

If there are no major bugs found in this RC, a final release can be
expected to happen next week.

## [1.26.0-rc.1] - 2024-01-22

### Added

- ResourceDefinition/VolumeDefinition to prometheus /metrics
- Added PeerSlots to ResourceGroups (create, modify and spawn)
- Added additional oversubscription calculation
- Added new oversubscription ratios to QSI result
- Prometheus/metrics added storage_pool to volume labels
- Added BalanceResourcesTask that in the first version tries to keep the
resource-group place-count for resources
- Added MathUtils methods for integer-based square root, exponentiation,
prime factorization, LCM and GCD calculation
- Added new checkExtFiles-API
- Schedule enable and snapshot restore now have a --storpool-rename option
- /metrics/scrape-target endpoint with drbd-reactor scrape targets

### Changed

- Added copy of GenDbTables to GenCrdV* classes for migrations
- Escape executed commands in logs, making them paste-able
- Oversubscription now takes minimum of old and of new calculation
- Autoplace API answer now contains object refs to nodes and storagepools
- Make-Available will now retry auto-place with no restrictions on diskless
resources
- StoragePoolMixing is now based on extent-sizes and thin/thick. Also
changed implementation
- Autoplacer now also allows for mixed storage pools if the corresponding
property allows
- Backup ship now uses the --target-storpool as a default storpool name
- ZFS and ZFS_THIN provider now report REFER for thin-volumes and snapshots
and VOLSIZE for thick-volumes
- Remember node-ids for a later "forget-peer" when SkipDisk is enabled

### Fixed

- Do not allow setting resource-groups with place-count 0
- Small DB resource leak in health check
- Fixed unrecoverable state with failed rollback of deleting snapshot
- Fixed race condition between node lost and backup queue cleanup
- NetCom SSL reimplementation: Fixed buffer handling, SSL
handshake/negotiation/renegotiation
- Prohibit disk accesses in DrbdLayer while SkipDisk is set

### Removed

- Support for OpenFlex

https://pkg.linbit.com//downloads/linstor/linstor-server-1.26.0-rc.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000e94da1060f872057
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Initially, this RC was planned to b=
e released before Christmas, but we found some issues</div><div>with one ch=
ange in this release and had to postpone it into the new year.</div><div><b=
r></div><div>This release has one highlight feature:</div><div><br></div><d=
iv>* BalanceResourcesTask<br></div><div>=C2=A0 =C2=A0There is now a recurri=
ng=C2=A0Linstor task that tries to keep your set place-count</div><div>=C2=
=A0 =C2=A0from the resource-group to all resources belonging to this group.=
</div><div><br></div><div>If you want to disable this behaviour, set the `B=
alanceResourcesEnabled` property</div><div>on either controller or resource=
-group to false.</div><div><br></div><div>If there are no major bugs found =
in this RC, a final release can be expected to happen next week.</div><div>=
<br></div><div>## [1.26.0-rc.1] - 2024-01-22<br><br>### Added<br><br>- Reso=
urceDefinition/VolumeDefinition to prometheus /metrics<br>- Added PeerSlots=
 to ResourceGroups (create, modify and spawn)<br>- Added additional oversub=
scription calculation<br>- Added new oversubscription ratios to QSI result<=
br>- Prometheus/metrics added storage_pool to volume labels<br>- Added Bala=
nceResourcesTask that in the first version tries to keep the resource-group=
 place-count for resources<br>- Added MathUtils methods for integer-based s=
quare root, exponentiation, prime factorization, LCM and GCD calculation<br=
>- Added new checkExtFiles-API<br>- Schedule enable and snapshot restore no=
w have a --storpool-rename option<br>- /metrics/scrape-target endpoint with=
 drbd-reactor scrape targets<br><br>### Changed<br><br>- Added copy of GenD=
bTables to GenCrdV* classes for migrations<br>- Escape executed commands in=
 logs, making them paste-able<br>- Oversubscription now takes minimum of ol=
d and of new calculation<br>- Autoplace API answer now contains object refs=
 to nodes and storagepools<br>- Make-Available will now retry auto-place wi=
th no restrictions on diskless resources<br>- StoragePoolMixing is now base=
d on extent-sizes and thin/thick. Also changed implementation<br>- Autoplac=
er now also allows for mixed storage pools if the corresponding property al=
lows<br>- Backup ship now uses the --target-storpool as a default storpool =
name<br>- ZFS and ZFS_THIN provider now report REFER for thin-volumes and s=
napshots and VOLSIZE for thick-volumes<br>- Remember node-ids for a later &=
quot;forget-peer&quot; when SkipDisk is enabled<br><br>### Fixed<br><br>- D=
o not allow setting resource-groups with place-count 0<br>- Small DB resour=
ce leak in health check<br>- Fixed unrecoverable state with failed rollback=
 of deleting snapshot<br>- Fixed race condition between node lost and backu=
p queue cleanup<br>- NetCom SSL reimplementation: Fixed buffer handling, SS=
L handshake/negotiation/renegotiation<br>- Prohibit disk accesses in DrbdLa=
yer while SkipDisk is set<br><br>### Removed<br><br>- Support for OpenFlex<=
br></div><div><br></div><div><div><a href=3D"https://pkg.linbit.com//downlo=
ads/linstor/linstor-server-1.26.0-rc.1.tar.gz">https://pkg.linbit.com//down=
loads/linstor/linstor-server-1.26.0-rc.1.tar.gz</a><br></div><div><br></div=
><div><br></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://laun=
chpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" ta=
rget=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-=
stack</a></div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></=
div></div></div></div>

--000000000000e94da1060f872057--
