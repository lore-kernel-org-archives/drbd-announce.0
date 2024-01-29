Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
	[209.85.216.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 1308342021C
	for <drbd-announce@lists.linbit.com>;
	Mon, 29 Jan 2024 10:40:34 +0100 (CET)
Received: by mail-pj1-f49.google.com with SMTP id
	98e67ed59e1d1-2904c81f26eso482899a91.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 29 Jan 2024 01:40:34 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 29 Jan 2024 10:40:22 +0100
Message-ID: <CAHmn2DNO-EOCSWs29cRe=1nrg3XNC4JZM3sQhv_k29W-_JXGEw@mail.gmail.com>
Subject: linstor-server 1.26.0 release
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000ebdfb00610126f8c"
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

--000000000000ebdfb00610126f8c
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is the final 1.26.0 release, only changes since the rc.1 is that we
forgot to mention the deprecation of EXOS storage driver.

Rest is copied from the rc.1 announcement.

This release has one highlight feature:

* BalanceResourcesTask
   There is now a recurring Linstor task that tries to keep your set
place-count
   from the resource-group to all resources belonging to this group.

If you want to disable this behaviour, set the `BalanceResourcesEnabled`
property
on either controller or resource-group to false.
This can make sense on resource-definitions as well if those resources has
read-only openers
(CDROM images on a cloud plugin)

## [1.26.0] - 2024-01-29

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

### Deprecated

- Support for EXOS

### Removed

- Support for OpenFlex

https://pkg.linbit.com//downloads/linstor/linstor-server-1.26.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000ebdfb00610126f8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Here is the final 1.26.0 release, o=
nly changes since the rc.1 is that we</div><div>forgot to mention the depre=
cation of EXOS storage driver.</div><div><br></div><div>Rest is copied from=
 the rc.1 announcement.</div><div><br></div><div>This release has one highl=
ight feature:</div><div><br></div><div>* BalanceResourcesTask<br></div><div=
>=C2=A0 =C2=A0There is now a recurring=C2=A0Linstor task that tries to keep=
 your set place-count</div><div>=C2=A0 =C2=A0from the resource-group to all=
 resources belonging to this group.</div><div><br></div><div>If you want to=
 disable this behaviour, set the `BalanceResourcesEnabled` property</div><d=
iv>on either controller or resource-group to false.</div><div>This can make=
 sense on resource-definitions as well if those resources has read-only ope=
ners</div><div>(CDROM images on a cloud plugin)</div><div><br></div><div>##=
 [1.26.0] - 2024-01-29<br></div><div><br>### Added<br><br>- ResourceDefinit=
ion/VolumeDefinition to prometheus /metrics<br>- Added PeerSlots to Resourc=
eGroups (create, modify and spawn)<br>- Added additional oversubscription c=
alculation<br>- Added new oversubscription ratios to QSI result<br>- Promet=
heus/metrics added storage_pool to volume labels<br>- Added BalanceResource=
sTask that in the first version tries to keep the resource-group place-coun=
t for resources<br>- Added MathUtils methods for integer-based square root,=
 exponentiation, prime factorization, LCM and GCD calculation<br>- Added ne=
w checkExtFiles-API<br>- Schedule enable and snapshot restore now have a --=
storpool-rename option<br>- /metrics/scrape-target endpoint with drbd-react=
or scrape targets<br><br>### Changed<br><br>- Added copy of GenDbTables to =
GenCrdV* classes for migrations<br>- Escape executed commands in logs, maki=
ng them paste-able<br>- Oversubscription now takes minimum of old and of ne=
w calculation<br>- Autoplace API answer now contains object refs to nodes a=
nd storagepools<br>- Make-Available will now retry auto-place with no restr=
ictions on diskless resources<br>- StoragePoolMixing is now based on extent=
-sizes and thin/thick. Also changed implementation<br>- Autoplacer now also=
 allows for mixed storage pools if the corresponding property allows<br>- B=
ackup ship now uses the --target-storpool as a default storpool name<br>- Z=
FS and ZFS_THIN provider now report REFER for thin-volumes and snapshots an=
d VOLSIZE for thick-volumes<br>- Remember node-ids for a later &quot;forget=
-peer&quot; when SkipDisk is enabled<br><br>### Fixed<br><br>- Do not allow=
 setting resource-groups with place-count 0<br>- Small DB resource leak in =
health check<br>- Fixed unrecoverable state with failed rollback of deletin=
g snapshot<br>- Fixed race condition between node lost and backup queue cle=
anup<br>- NetCom SSL reimplementation: Fixed buffer handling, SSL handshake=
/negotiation/renegotiation<br>- Prohibit disk accesses in DrbdLayer while S=
kipDisk is set<br><br>### Deprecated<br><br>- Support for EXOS<br><br>### R=
emoved<br><br>- Support for OpenFlex<br></div><div><br></div><div><div><a h=
ref=3D"https://pkg.linbit.com//downloads/linstor/linstor-server-1.26.0.tar.=
gz" target=3D"_blank">https://pkg.linbit.com//downloads/linstor/linstor-ser=
ver-1.26.0.tar.gz</a><br></div><div><br></div><div><br></div><div><div><div=
><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubu=
ntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launch=
pad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div><br>=
</div><div>Cheers,<br></div><div>Rene</div></div></div></div></div>

--000000000000ebdfb00610126f8c--
