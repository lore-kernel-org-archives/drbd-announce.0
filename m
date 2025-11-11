Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
	[209.85.214.178])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 069051608F2
	for <drbd-announce@lists.linbit.com>;
	Tue, 11 Nov 2025 15:40:25 +0100 (CET)
Received: by mail-pl1-f178.google.com with SMTP id
	d9443c01a7336-297e264528aso31777845ad.2
	for <drbd-announce@lists.linbit.com>;
	Tue, 11 Nov 2025 06:40:25 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 11 Nov 2025 15:40:13 +0100
Message-ID: <CAHmn2DPanAHkpNOBzT6EMz1BACy78a03Sw_jDyuQJoc=xarefw@mail.gmail.com>
Subject: linstor-server 1.33.0-rc.1 release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000cfea88064352a0d1"
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

--000000000000cfea88064352a0d1
Content-Type: text/plain; charset="UTF-8"

Hi!

After some delay here is the first release candidate of the next minor
Linstor release.
The big new feature in this release is the possibility to ship already
existing snapshots to other Linstor clusters or a S3 remote.
Also the Linstor master passphrase can now be provided more securely with
systemd-creds.

Another noteworthy change is that the LS_KEEP_RES is now obsolete as
Linstor doesn't delete known .res files anymore and keeps them.

See the changelog below for all other changes and fixes.

## NOTE
With this release we also announce that we will remove etcd database
support with Linstor 1.34.0, until then you will have time to migrate to
(SQL or k8s-CRD) databases.

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

https://pkg.linbit.com//downloads/linstor/linstor-server-1.33.0-rc.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000cfea88064352a0d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi!<div><br></div><div>After some delay=
=C2=A0here is the first release candidate=C2=A0of the next minor Linstor re=
lease.</div><div>The big new feature in this release is the possibility to =
ship already existing snapshots to other Linstor clusters or a S3 remote.</=
div><div>Also the Linstor master passphrase can now be provided more secure=
ly with systemd-creds.</div><div><br></div><div>Another noteworthy change i=
s that the LS_KEEP_RES is now obsolete=C2=A0as Linstor doesn&#39;t delete k=
nown .res files anymore and keeps them.</div><div><br></div><div>See the ch=
angelog below=C2=A0for all other changes and fixes.</div><div><br></div><di=
v>## NOTE</div><div>With this release we also announce that we will remove =
etcd database support with Linstor 1.34.0, until then you will have time to=
 migrate to (SQL or k8s-CRD) databases.=C2=A0</div><div></div><div><br></di=
v><div>## [1.33.0-rc.1] - 2025-11-11<br><br>### Added<br><br>- physical-sto=
rage-api: allow passing pv/vg/lv/zpool create arguments<br>- Encryption: Ad=
ded systemd-creds support for masterpassphrase.<br>- DRBD: Added Linstor/Dr=
bd/auto-block-size<br>- Backup: allow shipment of already existing snapshot=
s<br>- Node,evacuate: Added --target and --do-not-target options<br><br>###=
 Changed<br><br>- Removed keep_res regular expression pattern from options<=
br>- Instead of caching if a DRBD .res file exists, actually check if the f=
ile exists<br>- Do not delete known Linstor drbd res files, LS_KEEP_RES is =
now obsolete<br>- Increase max packet size 16M -&gt; 64M<br>- Increased tim=
eout for tar during sos-report to an hour<br>- Removed flywaydb dependency =
and do migrations (as with other &quot;db&quot;s) ourselves<br>- Reconnecto=
rTask: changed logging levels and added more logging<br>- API: do not store=
 error reports if required remote parameters are missing<br>- Node evacuate=
: By default node evacuate also evacuates existing snapshots<br><br>### Fix=
ed<br><br>- Attempt to fix race-condition &quot;Received unknown storage re=
source from satellite&quot;<br>- Prometheus: fix using peerId as peer addre=
ss in api call duration statistics (GitHub #466)<br>- H2 db should no longe=
r prematurely shutdown<br>- DRBD: recreate ext-metadata after backing disk =
needed to be re-created<br>- Fixed a bug where a failed clone leads to Acce=
ssToDeletedData bug<br>- Cache: Properly flush to origin device when suspen=
ding<br>- Fixed toggle-disk bug when evacuation target has already diskless=
 resource<br>- Fixed possible NPE when a satellite updates a storage pool (=
capacity, supports snapshots, etc)</div><div><br></div><div><div><a href=3D=
"https://pkg.linbit.com//downloads/linstor/linstor-server-1.33.0-rc.1.tar.g=
z" target=3D"_blank">https://pkg.linbit.com//downloads/linstor/linstor-serv=
er-1.33.0-rc.1.tar.gz</a><br></div><div><br></div><div><br></div><div><div>=
<div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive=
/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://la=
unchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div>=
<br></div><div>Cheers,<br></div><div>Rene</div></div></div></div></div>
</div>

--000000000000cfea88064352a0d1--
