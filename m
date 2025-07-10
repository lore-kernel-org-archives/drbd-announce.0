Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
	[209.85.216.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4E55716097C
	for <drbd-announce@lists.linbit.com>;
	Thu, 10 Jul 2025 09:25:01 +0200 (CEST)
Received: by mail-pj1-f53.google.com with SMTP id
	98e67ed59e1d1-313f68bc519so640585a91.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 10 Jul 2025 00:25:01 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 10 Jul 2025 09:24:49 +0200
Message-ID: <CAHmn2DNiEe5wssV8=QBr4ucdyKxbmN=VitJzLrfJLVONPM6kZg@mail.gmail.com>
Subject: linstor-server 1.31.3 release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000060865b06398e17cd"
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

--00000000000060865b06398e17cd
Content-Type: text/plain; charset="UTF-8"

Hi!

This bugfix release brings fixes in the snapshot rollback with resized
volumes and also a change in how offline nodes are handled. Now Linstor
will only warn if an offline node
was part of an action, if the action generally succeeded, this helps
plugins to still work
if a node is offline, e.g. maintenance.

## [1.31.3] - 2025-07-10

### Changed

- UUID mismatch will now trigger a System.exit(70) as the best way to
recover is to restart the satellite
- API: do not store error reports if user-named node/storage-pool/rg/...
was not found
- API: do not store error reports for invalid cron expressions
- Improve output of property changes messages
- Restart Satellite service on exit code 70 (critical error)
- Per default, most linstor operations will now only WARN instead of error
if a node is currently not ONLINE

### Fixed

- Fixed error-handling of snapshot-rollback to correctly restore the
safety-snap if an error occurs
- Fixed snapshot-rollback ignoring changes to the volume definitions that
also need to be reversed
- Fixed vlmDfn UUID mismatch occurring after deleting and later creating a
new one with the same vlmNr
- Fixed incorrect zfs-vlm renaming during vlmDfn delete
- Fixed deleting offline node causing "AccessToDeleted node" exception
- Fixed allVolumesUpToDate method while creating a snapshot for diskless
resources

https://pkg.linbit.com//downloads/linstor/linstor-server-1.31.3.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--00000000000060865b06398e17cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>This bugfix release brings fixes in=
 the snapshot rollback with resized volumes and also a change in how offlin=
e nodes are handled. Now Linstor will only warn if an offline node</div><di=
v>was part of an action, if the action generally succeeded, this helps plug=
ins to still work</div><div>if a node is offline, e.g. maintenance.</div><d=
iv></div><div><br></div><div>## [1.31.3] - 2025-07-10<br><br>### Changed<br=
><br>- UUID mismatch will now trigger a System.exit(70) as the best way to =
recover is to restart the satellite<br>- API: do not store error reports if=
 user-named node/storage-pool/rg/... was not found<br>- API: do not store e=
rror reports for invalid cron expressions<br>- Improve output of property c=
hanges messages<br>- Restart Satellite service on exit code 70 (critical er=
ror)<br>- Per default, most linstor operations will now only WARN instead o=
f error if a node is currently not ONLINE<br><br>### Fixed<br><br>- Fixed e=
rror-handling of snapshot-rollback to correctly restore the safety-snap if =
an error occurs<br>- Fixed snapshot-rollback ignoring changes to the volume=
 definitions that also need to be reversed<br>- Fixed vlmDfn UUID mismatch =
occurring after deleting and later creating a new one with the same vlmNr<b=
r>- Fixed incorrect zfs-vlm renaming during vlmDfn delete<br>- Fixed deleti=
ng offline node causing &quot;AccessToDeleted node&quot; exception<br>- Fix=
ed allVolumesUpToDate method while creating a snapshot for diskless resourc=
es</div><div><br></div><div><div><a href=3D"https://pkg.linbit.com//downloa=
ds/linstor/linstor-server-1.31.3.tar.gz">https://pkg.linbit.com//downloads/=
linstor/linstor-server-1.31.3.tar.gz</a><br></div><div><br></div><div><br><=
/div><div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~=
linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_bl=
ank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></=
div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></div></div><=
/div></div>

--00000000000060865b06398e17cd--
