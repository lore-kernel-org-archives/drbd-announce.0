Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 775F6420CF9
	for <drbd-announce@lists.linbit.com>;
	Wed, 23 Sep 2020 14:32:45 +0200 (CEST)
Received: by mail-wm1-f44.google.com with SMTP id k18so6920201wmj.5
	for <drbd-announce@lists.linbit.com>;
	Wed, 23 Sep 2020 05:32:45 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 23 Sep 2020 14:31:34 +0200
Message-ID: <CAHmn2DNh9j5yzu3wAAdx2HP2FowrYFAsFfeOXyGwdA1yT6RzPA@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000038b81105affa4475"
Subject: [DRBD-announce] linstor-server 1.9.0 release
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

--00000000000038b81105affa4475
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is a new minor Linstor release, this release contains more bug fixes
than new features.
Notable features are a new auto-unplace option, to reduce the replica-count
of resources
to the value set in the resource-group after a certain time. And
error-reports can now be deleted
from the REST-API (client).

linstor-server 1.9.0
--------------------
 * Added auto-"unplace", automatically removes resources if they exceed the
replica count if `DrbdOptions/auto-unplace` is set
 * Added error-report deletion API
 * Expose DRBD promotion_score and may_promote via REST-API and server sent
events
 * Prometheus metrics are now mostly cached and much faster to query
 * Send SD_NOTIFY READY to systemd if services are ready
 * OpenFlex resource are now correctly limited to 32 characters
 * Fix etcd modify net-interface (incorrect serialization)
 * Fix autoplacer also toggling diskless resources
 * Fix snapshot-shipping with more than 1 volume definitions
 * Fix zfs create options handling
 * Fixed recaching of lvm-filter
 * Fix missing client answer if drbd device doesn't become ready in
reasonable time
 * REST-API v1.4.0

https://www.linbit.com/downloads/linstor/linstor-server-1.9.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--00000000000038b81105affa4475
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Here is a new minor Linstor release=
, this release contains more bug fixes than new features.</div><div>Notable=
 features are a new auto-unplace option, to reduce the replica-count of res=
ources</div><div>to the value set in the resource-group after a certain tim=
e. And error-reports can now be deleted</div><div>from the REST-API (client=
).<br><div><br></div><div><font face=3D"monospace">linstor-server 1.9.0<br>=
--------------------<br>=C2=A0* Added auto-&quot;unplace&quot;, automatical=
ly removes resources if they exceed the replica count if `DrbdOptions/auto-=
unplace` is set<br>=C2=A0* Added error-report deletion API<br>=C2=A0* Expos=
e DRBD promotion_score and may_promote via REST-API and server sent events<=
br>=C2=A0* Prometheus metrics are now mostly cached and much faster to quer=
y<br>=C2=A0* Send SD_NOTIFY READY to systemd if services are ready<br>=C2=
=A0* OpenFlex resource are now correctly limited to 32 characters<br>=C2=A0=
* Fix etcd modify net-interface (incorrect serialization)<br>=C2=A0* Fix au=
toplacer also toggling diskless resources<br>=C2=A0* Fix snapshot-shipping =
with more than 1 volume definitions<br>=C2=A0* Fix zfs create options handl=
ing<br>=C2=A0* Fixed recaching of lvm-filter<br>=C2=A0* Fix missing client =
answer if drbd device doesn&#39;t become ready in reasonable time<br>=C2=A0=
* REST-API v1.4.0</font><br></div><div><br></div><div><div><font face=3D"mo=
nospace"><a href=3D"https://www.linbit.com/downloads/linstor/linstor-server=
-1.9.0.tar.gz" target=3D"_blank">https://www.linbit.com/downloads/linstor/l=
instor-server-1.9.0.tar.gz</a></font><br></div><div><br></div><div><div><di=
v>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/=
linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.=
net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></di=
v><div>Cheers,<br></div><div>Rene</div></div></div></div></div>

--00000000000038b81105affa4475--
