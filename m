Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
	[209.85.218.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 093B4420372
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Mar 2022 14:15:21 +0100 (CET)
Received: by mail-ej1-f41.google.com with SMTP id bi12so41269363ejb.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Mar 2022 06:15:21 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 15 Mar 2022 14:15:10 +0100
Message-ID: <CAHmn2DMp+VeSt+kAEdpYyWp6cOf8B9kSEjRuPq2jo+hswVi_Lw@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000ceeba205da4196b3"
Subject: [DRBD-announce] linstor-opennebula v2.0.0 release
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

--000000000000ceeba205da4196b3
Content-Type: text/plain; charset="UTF-8"

Hi!

Some time passed since the last linstor-opennebula release,
mainly because this release was waiting for some features in Linstor to be
finished.

Version 2.0.0 now uses the Linstor clone API to create new VM's from
templates,
this means less code in the plugin and Linstor decides which copy mode it
has to take.
The biggest improvements this brings is in combination with ZFS, as Linstor
now uses
zfs clone where possible making this a nearly instant operation.

But this change also means, a very recent Linstor version is needed, to be
exact the just released version 1.18.0.
Also deprecated LINSTOR_ attributes have been removed from the plugin and
will be ignored and datastores will now only work with a specified
resource-group.

linstor-opennebula 2.0.0
------------------------
  * Removed deprecated LINSTOR_ attributes
  * Use linstor clone API (requiring LINSTOR 1.18.0+)
  * Fixed incorrect place-count if prefer-node was used

https://github.com/LINBIT/addon-linstor/archive/refs/tags/v2.0.0.tar.gz

Best regards,
Rene

[1] https://docs.linbit.com/docs/linstor-guide/#ch-opennebula-linstor

--000000000000ceeba205da4196b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Some time passed since the last lin=
stor-opennebula release,</div><div>mainly because this release was waiting =
for some features in Linstor to be finished.</div><div><br></div><div>Versi=
on 2.0.0 now uses the Linstor clone API to create new VM&#39;s from templat=
es,</div><div>this means less code in the plugin and Linstor decides which =
copy mode it has to take.</div><div>The biggest improvements this brings is=
 in combination with ZFS, as Linstor now uses</div><div>zfs clone where pos=
sible making this a nearly instant operation.</div><div><br></div><div>But =
this change also means, a very recent Linstor version is needed, to be exac=
t the just released version 1.18.0.</div><div>Also deprecated LINSTOR_ attr=
ibutes have been removed from the plugin and will be ignored and datastores=
 will now only work with a specified resource-group.</div><div><br></div><d=
iv><div><font face=3D"monospace">linstor-opennebula 2.0.0<br>--------------=
----------<br>=C2=A0 * Removed deprecated LINSTOR_ attributes<br>=C2=A0 * U=
se linstor clone API (requiring LINSTOR 1.18.0+)<br>=C2=A0 * Fixed incorrec=
t place-count if prefer-node was used</font><br></div><div><font face=3D"mo=
nospace, monospace" size=3D"1"><br></font></div><div><a href=3D"https://git=
hub.com/LINBIT/addon-linstor/archive/refs/tags/v2.0.0.tar.gz">https://githu=
b.com/LINBIT/addon-linstor/archive/refs/tags/v2.0.0.tar.gz</a><font face=3D=
"monospace, monospace" size=3D"1"><br></font></div><br></div><div>Best rega=
rds,</div><div>Rene</div><div><br></div><div>[1]=C2=A0<a href=3D"https://do=
cs.linbit.com/docs/linstor-guide/#ch-opennebula-linstor" target=3D"_blank">=
https://docs.linbit.com/docs/linstor-guide/#ch-opennebula-linstor</a></div>=
</div>

--000000000000ceeba205da4196b3--
