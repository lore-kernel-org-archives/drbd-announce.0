Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 8DC1C4203DE
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Jan 2020 16:52:30 +0100 (CET)
Received: by mail-wm1-f45.google.com with SMTP id p9so14400783wmc.2
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Jan 2020 07:52:30 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 14 Jan 2020 16:42:04 +0100
Message-ID: <CAHmn2DOJSNDz0T3vsMa+SxA8JtDVjKrmTAj4O-vM5fQzcLeerg@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000b0a979059c1b6f73"
Subject: [DRBD-announce] linstor-server 1.4.0 release
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

--000000000000b0a979059c1b6f73
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is the final release of 1.4 after 2 release candidates, it adds
support for device mapper write-cache and DRBD over NVMe.
We also improved the internal handling of snapshot objects which in turn
fixed a few snapshot related bugs and enabled support for external metadata
snapshots.

linstor-server 1.4.0
--------------------
 * Added write-cache layer
 * Split DISKLESS into DRBD_DISKLESS and NVME_INITIATOR
 * Allow DRBD over NVMe
 * Unified resource and snapshot handling and fixing snapshot related bugs
 * Support snapshots of DRBD with external meta-data
 * Dropped support for swordfish
 * Added new volume-definition flag for allocating GROSS_SIZE
 * Added query-max-volume-size for resource groups API
 * Fix for etcd connection drop outs
 * REST-API version 1.0.12

https://www.linbit.com/downloads/linstor/linstor-server-1.4.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000b0a979059c1b6f73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Here is the final release of 1.4 af=
ter 2 release candidates, it adds support for device mapper write-cache=C2=
=A0and DRBD over NVMe.</div><div>We also improved the internal handling of =
snapshot objects which in turn fixed a few snapshot related bugs and enable=
d support for external metadata snapshots.</div><div><br></div><div><span s=
tyle=3D"font-family:monospace,monospace;font-size:x-small">linstor-server 1=
.4.0</span></div><div><div><div><font face=3D"monospace, monospace" size=3D=
"1">--------------------</font></div><div><span style=3D"font-family:monosp=
ace,monospace;font-size:x-small">=C2=A0* Added write-cache layer</span></di=
v><div><span style=3D"font-family:monospace;font-size:x-small">=C2=A0* Spli=
t DISKLESS into DRBD_DISKLESS and NVME_INITIATOR</span><br></div></div><div=
><span style=3D"font-family:monospace;font-size:x-small">=C2=A0* Allow DRBD=
 over NVMe</span></div><div><span style=3D"font-size:x-small"><font face=3D=
"monospace">=C2=A0* Unified resource and snapshot=C2=A0handling and fixing =
snapshot related bugs</font></span></div><div><span style=3D"font-size:x-sm=
all"><font face=3D"monospace">=C2=A0* Support snapshots of DRBD with extern=
al meta-data</font></span></div><div><span style=3D"font-size:x-small"><fon=
t face=3D"monospace">=C2=A0* Dropped support for swordfish</font></span></d=
iv><div><span style=3D"font-size:x-small"><font face=3D"monospace">=C2=A0* =
Added new volume-definition flag for allocating GROSS_SIZE</font></span></d=
iv><div><span style=3D"font-size:x-small"><font face=3D"monospace">=C2=A0* =
Added query-max-volume-size for resource groups API</font></span></div><div=
><span style=3D"font-size:x-small"><font face=3D"monospace">=C2=A0* Fix for=
 etcd connection drop outs</font></span></div><div><span style=3D"font-size=
:x-small"><font face=3D"monospace">=C2=A0* REST-API version 1.0.12</font></=
span></div><div><font face=3D"monospace" size=3D"1"><br></font></div><div><=
font size=3D"1" face=3D"monospace"><a href=3D"https://www.linbit.com/downlo=
ads/linstor/linstor-server-1.4.0.tar.gz">https://www.linbit.com/downloads/l=
instor/linstor-server-1.4.0.tar.gz</a></font></div></div><div><br></div><di=
v><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ub=
untu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launc=
hpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div><br=
></div><div>Cheers,</div><div>Rene</div></div>

--000000000000b0a979059c1b6f73--
