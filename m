Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 9D2954203D6
	for <drbd-announce@lists.linbit.com>;
	Thu,  5 Dec 2019 14:32:10 +0100 (CET)
Received: by mail-wm1-f48.google.com with SMTP id p9so3826878wmg.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 05 Dec 2019 05:32:10 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 5 Dec 2019 14:30:56 +0100
Message-ID: <CAHmn2DNwAwBUxEz3agjR--H3OLa5raTLRsj35K+Uw9FzCqNdBA@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000001c45d80598f4f127"
Subject: [DRBD-announce] linstor-server 1.3.1 release
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

--0000000000001c45d80598f4f127
Content-Type: text/plain; charset="UTF-8"

Hi!

After our Tuesday release we noticed that our modify(PUT) REST-API calls now
responded with 201 instead of the advertised 200
and this in turn broke the proxmox plugin.

This and a few other fixes made this release necessary.

Also a new feature made it in to this release an REST-API to create LVM or
ZFS
pool on empty physical drives, more info on that in the REST-API
documentation.
The REST-API stays at version 1.0.11 as the functionality was already in
the last version, but was held back for possible changes.

linstor-server 1.3.1
--------------------
 * Fixed incorrect PUT return codes
 * Fixed deletion of storage pools
 * Fixed missing deletion of net-interfaces if node was deleted
 * Added DB migration for orphaned drbd layer data
 * Added missing ETCD data migrations
 * SPKD: fixed creation of nvme namespaces

https://www.linbit.com/downloads/linstor/linstor-server-1.3.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000001c45d80598f4f127
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>After our Tuesday release we notice=
d that our modify(PUT) REST-API calls now</div><div>responded with 201 inst=
ead of the advertised 200</div><div>and this in turn broke the proxmox plug=
in.</div><div><br></div><div>This and a few other fixes made this release n=
ecessary.</div><div><br></div><div>Also a new feature made it in to this re=
lease an REST-API to create LVM or ZFS</div><div>pool on empty physical dri=
ves, more info on that in the REST-API documentation.</div><div>The REST-AP=
I stays at version 1.0.11 as the functionality was already in the last vers=
ion, but was held back for possible changes.</div><div><br></div><div><span=
 style=3D"font-family:monospace,monospace;font-size:x-small">linstor-server=
 1.3.1</span></div><div><div><div><font face=3D"monospace, monospace" size=
=3D"1">--------------------</font></div><div><span style=3D"font-family:mon=
ospace,monospace;font-size:x-small">=C2=A0* Fixed incorrect PUT return code=
s</span></div><div><span style=3D"font-family:monospace;font-size:x-small">=
=C2=A0* Fixed deletion of storage pools</span><br></div></div><div><span st=
yle=3D"font-size:x-small"><font face=3D"monospace">=C2=A0* Fixed missing de=
letion of net-interfaces if node was deleted</font></span></div><div><span =
style=3D"font-size:x-small"><font face=3D"monospace">=C2=A0* Added DB migra=
tion for orphaned drbd layer data</font></span></div><div><span style=3D"fo=
nt-size:x-small"><font face=3D"monospace">=C2=A0* Added missing ETCD data m=
igrations</font></span></div><div><span style=3D"font-size:x-small"><font f=
ace=3D"monospace">=C2=A0* SPKD: fixed creation of nvme namespaces</font></s=
pan></div><div><font face=3D"monospace" size=3D"1"><br></font></div><div><f=
ont size=3D"1" face=3D"monospace"><a href=3D"https://www.linbit.com/downloa=
ds/linstor/linstor-server-1.3.1.tar.gz" target=3D"_blank">https://www.linbi=
t.com/downloads/linstor/linstor-server-1.3.1.tar.gz</a></font></div></div><=
div><br></div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~l=
inbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_bla=
nk">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></d=
iv></div><div><br></div><div>Cheers,</div><div>Rene</div></div>

--0000000000001c45d80598f4f127--
