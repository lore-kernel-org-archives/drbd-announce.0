Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 0AD97420378
	for <drbd-announce@lists.linbit.com>;
	Fri, 30 Apr 2021 12:39:09 +0200 (CEST)
Received: by mail-wm1-f48.google.com with SMTP id
	t11-20020a05600c198bb02901476e13296aso820462wmq.0
	for <drbd-announce@lists.linbit.com>;
	Fri, 30 Apr 2021 03:39:09 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Fri, 30 Apr 2021 12:38:58 +0200
Message-ID: <CAHmn2DMsGKQ9xXh+9etEVaL1Zmc6oHtnN=_-xPSD3byhyiAk5g@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000cbb63105c12e3864"
Subject: [DRBD-announce] linstor-server release 1.12.1
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

--000000000000cbb63105c12e3864
Content-Type: text/plain; charset="UTF-8"

Hi!

Unfortunately, we had 2 serious bugs in the 1.12.0 release, which we just
noticed 1 day after doing the release (regression tests were added).
It also looks like our migration script from 1.12.0->1.12.1, for created
resource-groups in v1.12.0 didn't work as expected, so we might come up
with another migration fix release next week.
But resource-groups created before 1.12.0 and after(1.12.1) should work as
expected, if you created a resource group in 1.12.0 and can't restart your
controller we can provide a workaround.

linstor-server 1.12.1
---------------------
 * Fix resource group writing to database(resulting in restart errors)
 * Fixed deleting resource definition that had once snapshots created
 * Allow c-max-rate 0 as DRBD setting

https://www.linbit.com/downloads/linstor/linstor-server-1.12.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000cbb63105c12e3864
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Unfortunately, we had 2 serious bug=
s in the 1.12.0 release, which we just noticed 1 day after doing the releas=
e (regression tests were added).</div><div>It also looks like our migration=
 script from 1.12.0-&gt;1.12.1, for created resource-groups in v1.12.0 didn=
&#39;t work as expected, so we might come up with another migration fix rel=
ease next=C2=A0week.</div><div>But resource-groups created before 1.12.0 an=
d after(1.12.1) should work as expected, if you created a resource group in=
 1.12.0 and can&#39;t restart=C2=A0your controller we can provide a workaro=
und.</div><div><br></div><div><font face=3D"monospace">linstor-server 1.12.=
1<br>---------------------<br>=C2=A0* Fix resource group writing=C2=A0to da=
tabase(resulting in restart errors)<br>=C2=A0* Fixed deleting resource defi=
nition that had once snapshots created<br>=C2=A0* Allow c-max-rate 0 as DRB=
D setting</font><br></div><div><font face=3D"monospace"><br></font></div><d=
iv><div><font face=3D"monospace"><a href=3D"https://www.linbit.com/download=
s/linstor/linstor-server-1.12.1.tar.gz" target=3D"_blank">https://www.linbi=
t.com/downloads/linstor/linstor-server-1.12.1.tar.gz</a></font><br></div><d=
iv><br></div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.ne=
t/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"=
_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a=
></div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></div></di=
v></div>

--000000000000cbb63105c12e3864--
