Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id EACA1164D4E
	for <drbd-announce@lists.linbit.com>;
	Tue, 12 May 2026 09:58:35 +0200 (CEST)
Received: by mail-wr1-f41.google.com with SMTP id
	ffacd0b85a97d-43d75312379so3927110f8f.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 12 May 2026 00:58:35 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 12 May 2026 09:58:23 +0200
Message-ID: <CAHmn2DNE6p+K-8kWEssLL294QNOF2pryo5cuTTdZx=Y9d8DYGQ@mail.gmail.com>
Subject: linstor-server 1.33.2 release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000da05d806519a3ae7"
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

--000000000000da05d806519a3ae7
Content-Type: text/plain; charset="UTF-8"

Hi!

The change in DRBD thin-UpToDate setting caused a small problem that
triggered a full sync.
This is now fixed in this version and a full sync should no longer happen.

Apart from this there are another large number of bug fixes that were
addressed, while development for version 1.34.0 is going on.

## NOTE
With this release we also announce that we will remove etcd database
support with Linstor 1.34.0, until then you will have time to migrate to
(SQL or k8s-CRD) databases.
Heads up: Linstor 1.34.0 will switch to java-21, so be prepared to have
java-21 jre ready for the next minor upgrade

## [1.33.3] - 2026-05-11

### Added

- SOS report now includes drbd-reactor config files, logs, and status

### Changed

- AutoUnplacer now prefers non-UpToDate resources after
AP-settings-violating resources before choosing any.
- Improved error message for shrink operations
- Disabled DRBD shrink support (It didn't work correctly anyway)
- DRBD: Thin volumes are now set again as UpToDate

### Fixed

- Fixed the clone status check if no DRBD connection states have been
received yet
- Fixed volume set size (shrinking) never trigger the actual shrink
operation
- Only call "secondary" after an "mkfs" command if LINSTOR was the one that
set the DRBD resource primary
- Fixed only reset auto-verify-algo, if at least two nodes reported their
crypto entries
- Fixed set-plain-port, set-plain-listen in linstor-config tool using wrong
property instances
- Fixed unconditional 2-4s wait time between CRD migrations
- Fixed node properties not properly applied after LINSTOR's FullSync
- Fixed deletion of inactive shared storagepool resources
- Fixed cloning of shared storagepool resource definitions
- Fixed resource create if no .resource object was given
- Prevent NPE if make-available is tried on a resource-definition with no
active resources
- Properly reencrypt user-passphrase in VlmDfn during "backup ship"
- Better handle "null" value inputs for json body rest requests with
working defaults (nodes/{restore, evacuate), ...)

https://pkg.linbit.com//downloads/linstor/linstor-server-1.33.3.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000da05d806519a3ae7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>The change in DRBD thin-UpToDate se=
tting caused a small problem that triggered a full sync.</div><div>This is =
now fixed in this version and a full sync should no longer happen.</div><di=
v><br></div><div>Apart from this there are another large number of bug fixe=
s that were addressed,=C2=A0while=C2=A0development=C2=A0for version 1.34.0 =
is going on.</div><div><br></div><div>## NOTE<br>With this release we also =
announce that we will remove etcd database support with Linstor 1.34.0, unt=
il then you will have time to migrate to (SQL or k8s-CRD) databases.<br>Hea=
ds up: Linstor 1.34.0 will switch to java-21, so be prepared to have java-2=
1 jre ready for the next minor upgrade<br><br>## [1.33.3] - 2026-05-11<br><=
br>### Added<br><br>- SOS report now includes drbd-reactor config files, lo=
gs, and status<br><br>### Changed<br><br>- AutoUnplacer now prefers non-UpT=
oDate resources after AP-settings-violating resources before choosing any.<=
br>- Improved error message for shrink operations<br>- Disabled DRBD shrink=
 support (It didn&#39;t work correctly anyway)<br>- DRBD: Thin volumes are =
now set again as UpToDate<br><br>### Fixed<br><br>- Fixed the clone status =
check if no DRBD connection states have been received yet<br>- Fixed volume=
 set size (shrinking) never trigger the actual shrink operation<br>- Only c=
all &quot;secondary&quot; after an &quot;mkfs&quot; command if LINSTOR was =
the one that set the DRBD resource primary<br>- Fixed only reset auto-verif=
y-algo, if at least two nodes reported their crypto entries<br>- Fixed set-=
plain-port, set-plain-listen in linstor-config tool using wrong property in=
stances<br>- Fixed unconditional 2-4s wait time between CRD migrations<br>-=
 Fixed node properties not properly applied after LINSTOR&#39;s FullSync<br=
>- Fixed deletion of inactive shared storagepool resources<br>- Fixed cloni=
ng of shared storagepool resource definitions<br>- Fixed resource create if=
 no .resource object was given<br>- Prevent NPE if make-available is tried =
on a resource-definition with no active resources<br>- Properly reencrypt u=
ser-passphrase in VlmDfn during &quot;backup ship&quot;<br>- Better handle =
&quot;null&quot; value inputs for json body rest requests with working defa=
ults (nodes/{restore, evacuate), ...)</div><div><br></div><div><div><a href=
=3D"https://pkg.linbit.com//downloads/linstor/linstor-server-1.33.3.tar.gz"=
>https://pkg.linbit.com//downloads/linstor/linstor-server-1.33.3.tar.gz</a>=
<br></div><div><br></div><div><div><div><div>Linstor PPA:<br><a href=3D"htt=
ps://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noref=
errer" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linb=
it-drbd9-stack</a></div></div><div><br></div><div>Cheers,<br></div><div>Ren=
e</div></div></div></div></div>

--000000000000da05d806519a3ae7--
