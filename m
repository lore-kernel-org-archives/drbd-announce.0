Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
	[209.85.216.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 1872842061C
	for <drbd-announce@lists.linbit.com>;
	Mon,  7 Aug 2023 15:31:19 +0200 (CEST)
Received: by mail-pj1-f54.google.com with SMTP id
	98e67ed59e1d1-268f6ba57b5so649732a91.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 07 Aug 2023 06:31:19 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 7 Aug 2023 15:31:07 +0200
Message-ID: <CAHmn2DMh0VmKnaLNReR81FJzja62BsnMeCWqSFnKjzHPHd5zcw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000ea70e9060255423b"
Subject: [DRBD-announce] linstor-server 1.24.0
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

--000000000000ea70e9060255423b
Content-Type: text/plain; charset="UTF-8"

Hi!

So here is the huge 1.24.0 release of LINSTOR, down below is the combine
changelog
of all release candidates and changes since 1.23.0

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


## [1.24.0] - 2023-08-07

### Fixed

- Restore invisible key-value stores, after an old broken migration
- Cleanup orphaned ACL's in database
- Remove java.xml.bind dependency, that didn't work with java-17
- BCache suspend is not supported and wait for device to be created
- Schedules: use correct DB driver for maxretries field
- /metrics: error-report fetching exceptions always handled as timeouts
- RscDfn, peer-slots: fix incorrect cast of peer-slots when modifying
resource definitions
- Volume: fix NPE on getApiData if no volumeProvider and no compatStorpool

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

https://pkg.linbit.com//downloads/linstor/linstor-server-1.24.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000ea70e9060255423b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>So here is the huge 1.24.0 release =
of LINSTOR, down below=C2=A0is the combine changelog</div><div>of all relea=
se candidates and changes since 1.23.0</div><div><br></div><div>* Java-11 r=
equirement and java-17 support<br>We moved forward and now require at least=
 java-11 for running LINSTOR, with this</div><div>change we also made sure =
java-17 is supported. As this is the default jre in debian bookworm now. Wi=
th this change also a lot of 3rd party libraries needed to be upgraded.</di=
v><div><br></div><div>* linstor-database tool</div><div>A new tool was adde=
d that enables you to convert/migrate from/to different LINSTOR database ty=
pes.</div><div>Most interesting case is probably migrating from etcd to the=
 crd backend.</div><div>See linstor-database command line=C2=A0help on how =
to export/import the database, for this</div><div>release we require the LI=
NSTOR-controller to be offline while doing the export/import.</div><div><br=
></div><div>* LINSTOR for Windows</div><div>LINSTOR has now basic support f=
or Microsoft Windows and their=C2=A0storage spaces as storage backend. Inst=
allers for that will be provided for our WinDrbd customers.</div><div><br><=
/div><div>* Backupshipping queue<br>There is now a property &quot;BackupShi=
pping/MaxConcurrentBackupsPerNode&quot; (on controller or node) which limit=
s how many concurrent backup shipments a node is allowed to have.<br>This c=
an be used to decrease network load during scheduled backups for example.<b=
r></div><div><br></div><div><br></div><div>## [1.24.0] - 2023-08-07<br><br>=
### Fixed<br><br>- Restore invisible key-value stores, after an old broken =
migration<br>- Cleanup orphaned ACL&#39;s in database<br>- Remove java.xml.=
bind dependency, that didn&#39;t work with java-17<br>- BCache suspend is n=
ot supported and wait for device to be created<br>- Schedules: use correct =
DB driver for maxretries field<br>- /metrics: error-report fetching excepti=
ons always handled as timeouts<br>- RscDfn, peer-slots: fix incorrect cast =
of peer-slots when modifying resource definitions<br>- Volume: fix NPE on g=
etApiData if no volumeProvider and no compatStorpool<br><br>## [1.24.0-rc.2=
] - 2023-07-24<br><br>### Fixed<br><br>- Force all database DATA objects to=
 be comparable<br><br>## [1.24.0-rc.1] - 2023-07-20<br><br>### Added<br><br=
>- Added support for Microsoft Windows (storagespaces)<br>- Added queues fo=
r backup shipping<br>- Added linstor-database tool to migrate from/to diffe=
rent database types<br>- Allow drbd-option properties for node-connections<=
br>- Added support for java-17<br><br>### Changed<br><br>- Update of nearly=
 all 3rd party libraries<br>- Minimal required java version is now java-11<=
br>- Improved suspend-io &quot;downtime&quot; for snapshots <br>- Improved =
default INFO logging level<br><br>### Fixed<br><br>- Fixed UID-mismatch whe=
n creating rollback entries in K8s/CRD<br>- Resync-After: Update entries af=
ter vlm definition delete<br>- Resync-After: Ignore diskless resources<br>-=
 Enforce s3-remotes for backup create and linstor-remotes for backup ship<b=
r>- Allow node-connection drbd options<br>- Several fixes in backup-shippin=
g<br>- Storpools can only be deleted without snapshots in addition to witho=
ut volumes<br>- Evacuating nodes no longer create snapshots<br>- Resources =
can not be created within a resource-definition that is currently restoring=
 a backup<br></div><div><br></div><div><div><a href=3D"https://pkg.linbit.c=
om//downloads/linstor/linstor-server-1.24.0.tar.gz">https://pkg.linbit.com/=
/downloads/linstor/linstor-server-1.24.0.tar.gz</a><br></div><div><br></div=
><div><br></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://laun=
chpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" ta=
rget=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-=
stack</a></div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></=
div></div></div></div>

--000000000000ea70e9060255423b--
