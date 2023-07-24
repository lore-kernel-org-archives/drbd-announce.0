Return-Path: <rene.peinthor@linbit.com>
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id EDD204201CC
	for <drbd-announce@lists.linbit.com>;
	Mon, 24 Jul 2023 10:32:02 +0200 (CEST)
Received: by mail-oi1-f176.google.com with SMTP id
	5614622812f47-3a3e7376f38so375571b6e.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 24 Jul 2023 01:32:02 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 24 Jul 2023 10:31:51 +0200
Message-ID: <CAHmn2DPiSGx24GewJ13iih-cM5ZoOsTLRfJR4iw57zvvgPG1FQ@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000dad871060137722e"
Subject: [DRBD-announce] linstor-server 1.24.0-rc.2 release
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

--000000000000dad871060137722e
Content-Type: text/plain; charset="UTF-8"

Hi!

1.24.0 will be a huge release with a lot of changes and therefore comes
first as RCs.
I'll explain the highlights of this release:

* Java-11 requirement and java-17 support
We moved forward and now require at least java-11 for running LINSTOR, with
this
change we also made sure java-17 is supported. As this is the default jre
in debian bookworm now. With this change also a lot of 3rd party libraries
needed to be upgraded.

* linstor-database tool
A new tool was added that enables you to convert/migrate from/to different
LINSTOR database types.
Most interesting case is probably migrating from etcd to the crd backend.
See linstor-database command line help on how to export/import the
database, for this
release we require the LINSTOR-controller to be offline while doing the
export/import.

* LINSTOR for Windows
LINSTOR has now basic support for Microsoft Windows and their storage
spaces as storage backend. Installers for that will be provided for our
WinDrbd customers.

* Backupshipping queue
There is now a property "BackupShipping/MaxConcurrentBackupsPerNode" (on
controller or node) which limits how many concurrent backup shipments a
node is allowed to have.
This can be used to decrease network load during scheduled backups for
example.


## [1.24.0-rc.2] - 2023-07-24

### Fixed

- Force all database DATA objects to be comparable

## [1.24.0-rc.1] - 2023-07-20

### Added

- Added support for Microsoft Windows (storagespaces)
- Added queues for backup shipping
- Added linstor-database tool to migrate from/to different database types
- Allow drbd-option properties for node-connections
- Added support for java-17

### Changed

- Update of nearly all 3rd party libraries
- Minimal required java version is now java-11
- Improved suspend-io "downtime" for snapshots
- Improved default INFO logging level

### Fixed

- Fixed UID-mismatch when creating rollback entries in K8s/CRD
- Resync-After: Update entries after vlm definition delete
- Resync-After: Ignore diskless resources
- Enforce s3-remotes for backup create and linstor-remotes for backup ship
- Allow node-connection drbd options
- Several fixes in backup-shipping
- Storpools can only be deleted without snapshots in addition to without
volumes
- Evacuating nodes no longer create snapshots
- Resources can not be created within a resource-definition that is
currently restoring a backup

https://pkg.linbit.com//downloads/linstor/linstor-server-1.24.0-rc.2.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000dad871060137722e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>1.24.0 will be a huge release with =
a lot of changes and therefore comes first as RCs.</div><div>I&#39;ll expla=
in the highlights of this release:</div><div><br></div><div>* Java-11 requi=
rement and java-17 support<br>We moved forward and now require at least jav=
a-11 for running LINSTOR, with this</div><div>change we also made sure java=
-17 is supported. As this is the default jre in debian bookworm now. With t=
his change also a lot of 3rd party libraries needed to be upgraded.</div><d=
iv><br></div><div>* linstor-database tool</div><div>A new tool was added th=
at enables you to convert/migrate from/to different LINSTOR database types.=
</div><div>Most interesting case is probably migrating from etcd to the crd=
 backend.</div><div>See linstor-database command line=C2=A0help on how to e=
xport/import the database, for this</div><div>release we require the LINSTO=
R-controller to be offline while doing the export/import.</div><div><br></d=
iv><div>* LINSTOR for Windows</div><div>LINSTOR has now basic support for M=
icrosoft Windows and their=C2=A0storage spaces as storage backend. Installe=
rs for that will be provided for our WinDrbd customers.</div><div><br></div=
><div>* Backupshipping queue<br>There is now a property &quot;BackupShippin=
g/MaxConcurrentBackupsPerNode&quot; (on controller or node) which limits ho=
w many concurrent backup shipments a node is allowed to have. <br>This can =
be used to decrease network load during scheduled backups for example.<br><=
/div><div><br></div><div><br></div><div>## [1.24.0-rc.2] - 2023-07-24<br><b=
r>### Fixed<br><br>- Force all database DATA objects to be comparable<br><b=
r>## [1.24.0-rc.1] - 2023-07-20<br><br>### Added<br><br>- Added support for=
 Microsoft Windows (storagespaces)<br>- Added queues for backup shipping<br=
>- Added linstor-database tool to migrate from/to different database types<=
br>- Allow drbd-option properties for node-connections<br>- Added support f=
or java-17<br><br>### Changed<br><br>- Update of nearly all 3rd party libra=
ries<br>- Minimal required java version is now java-11<br>- Improved suspen=
d-io &quot;downtime&quot; for snapshots <br>- Improved default INFO logging=
 level<br><br>### Fixed<br><br>- Fixed UID-mismatch when creating rollback =
entries in K8s/CRD<br>- Resync-After: Update entries after vlm definition d=
elete<br>- Resync-After: Ignore diskless resources<br>- Enforce s3-remotes =
for backup create and linstor-remotes for backup ship<br>- Allow node-conne=
ction drbd options<br>- Several fixes in backup-shipping<br>- Storpools can=
 only be deleted without snapshots in addition to without volumes<br>- Evac=
uating nodes no longer create snapshots<br>- Resources can not be created w=
ithin a resource-definition that is currently restoring a backup<br></div><=
div><br></div><div><div><a href=3D"https://pkg.linbit.com//downloads/linsto=
r/linstor-server-1.24.0-rc.2.tar.gz">https://pkg.linbit.com//downloads/lins=
tor/linstor-server-1.24.0-rc.2.tar.gz</a><br></div><div><br></div><div><br>=
</div><div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/=
~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_b=
lank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><=
/div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></div></div>=
</div></div>

--000000000000dad871060137722e--
