Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
	[209.85.216.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 64F23162705
	for <drbd-announce@lists.linbit.com>;
	Mon, 18 Aug 2025 14:33:32 +0200 (CEST)
Received: by mail-pj1-f45.google.com with SMTP id
	98e67ed59e1d1-323267b98a4so3379152a91.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 18 Aug 2025 05:33:31 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 18 Aug 2025 14:33:19 +0200
Message-ID: <CAHmn2DMDmwa73zbBQKSDhWJu+BqwHue_PPjdgUcFUrbpug_hWw@mail.gmail.com>
Subject: python-linstor/linstor-client 1.26.0 release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000078d258063ca2f28c"
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

--00000000000078d258063ca2f28c
Content-Type: text/plain; charset="UTF-8"

Hi!

A new minor release with changes for the linstor-server 1.32.0 release.
For details read the changelog below:

## linstor-client
## [1.26.0] - 2025-08-18

### Added

- snapshot list and set property commands
- r l: optional --show-drbd-ports
- s rb: optional --zfs-rollback-strategy

### Changed

- rd l: Ports column now hidden by default (moved to resource level)

### Fixed

- Fixed incorrect unit in out of range error message

### Removed

- Removed "exos" commands
- Removed "snapshot ship" command. Use "backup ship" instead

https://pkg.linbit.com//downloads/linstor/linstor_client-1.26.0.tar.gz

## python-linstor
## [1.26.0] - 2025-08-18

### Added

- snapshot_dfn_modify() and properties to responses.SnapshotDefinition
- Add tcp_ports to DrbdResource
- snapshot_rollback(..., zfs_rollback_strategy=None)
- resource_dfn_clone() can now set and delete properties

### Fixed

- Error out if reading controller version fails

### Removed

- Removed deprecated EXOS methods
- Removed deprecated snapshot shipping methods. Use backup shipping instead

https://pkg.linbit.com//downloads/linstor/python_linstor-1.26.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--00000000000078d258063ca2f28c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi!</div><div><br></div><div>A new m=
inor release with changes for the linstor-server 1.32.0 release.</div><div>=
For details read the changelog below:</div><div><br></div><div>##=C2=A0lins=
tor-client</div><div>## [1.26.0] - 2025-08-18<br><br>### Added<br><br>- sna=
pshot list and set property commands<br>- r l: optional --show-drbd-ports<b=
r>- s rb: optional --zfs-rollback-strategy<br><br>### Changed<br><br>- rd l=
: Ports column now hidden by default (moved to resource level)<br><br>### F=
ixed<br><br>- Fixed incorrect unit in out of range error message<br><br>###=
 Removed<br><br>- Removed &quot;exos&quot; commands<br>- Removed &quot;snap=
shot ship&quot; command. Use &quot;backup ship&quot; instead</div><div><br>=
</div><div><a href=3D"https://pkg.linbit.com//downloads/linstor/linstor_cli=
ent-1.26.0.tar.gz" target=3D"_blank">https://pkg.linbit.com//downloads/lins=
tor/linstor_client-1.26.0.tar.gz</a><br></div><br><div>## python-linstor</d=
iv><div>## [1.26.0] - 2025-08-18<br><br>### Added<br><br>- snapshot_dfn_mod=
ify() and properties to responses.SnapshotDefinition<br>- Add tcp_ports to =
DrbdResource<br>- snapshot_rollback(..., zfs_rollback_strategy=3DNone)<br>-=
 resource_dfn_clone() can now set and delete properties<br><br>### Fixed<br=
><br>- Error out if reading controller version fails<br><br>### Removed<br>=
<br>- Removed deprecated EXOS methods<br>- Removed deprecated snapshot ship=
ping methods. Use backup shipping instead</div><div><br></div><div><a href=
=3D"https://pkg.linbit.com//downloads/linstor/python_linstor-1.26.0.tar.gz"=
 target=3D"_blank">https://pkg.linbit.com//downloads/linstor/python_linstor=
-1.26.0.tar.gz</a><br></div><div><br></div><div><div>Linstor=C2=A0PPA:<br><=
/div><div><div><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/lin=
bit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net=
/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><div><br></div><di=
v>Best regards,</div><div>Rene</div></div></div></div>
</div>

--00000000000078d258063ca2f28c--
