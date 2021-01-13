Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4D71C4203B5
	for <drbd-announce@lists.linbit.com>;
	Wed, 13 Jan 2021 14:43:34 +0100 (CET)
Received: by mail-wm1-f47.google.com with SMTP id y23so1660714wmi.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 13 Jan 2021 05:43:34 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 13 Jan 2021 14:43:24 +0100
Message-ID: <CAHmn2DPB_Bxatpt_VmEeP9XN93RL7xWm36FAnGD8JmSDNCsWXQ@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000005613c505b8c853f6"
Subject: [DRBD-announce] linstor-server 1.11.1 release
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

--0000000000005613c505b8c853f6
Content-Type: text/plain; charset="UTF-8"

Hi!

This is just a bug fix release, only thing that might be worth a notice is
that
resource toggle-disk will now try to resolve the correct storage pool from
its
neighbour resources.

linstor-server 1.11.1
---------------------
 * Improved error messages for incorrect property values
 * Fix incorrect triggers for auto-tiebreaker (adding node/delete node)
 * Fix auto-tiebreaker looking for wrong storage pools
 * Fix loading of resource if external metadata property is used
 * Fixed incorrect loading of property keys in ETCD-database
 * Toggle-disk now tries to resolve the storage pool from already deployed
resources
 * Fixed missing rollback if a resource-group spawn failed

https://www.linbit.com/downloads/linstor/linstor-server-1.11.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000005613c505b8c853f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>This is just a bug fix release, onl=
y thing that might be worth a notice is that</div><div>resource toggle-disk=
 will now try to resolve the correct storage pool from its</div><div>neighb=
our resources.</div><div><br></div><div><div><font face=3D"monospace">linst=
or-server 1.11.1<br>---------------------<br>=C2=A0* Improved error message=
s for incorrect property values<br>=C2=A0* Fix incorrect triggers for auto-=
tiebreaker (adding node/delete node)<br>=C2=A0* Fix auto-tiebreaker looking=
 for wrong storage pools<br>=C2=A0* Fix loading of resource if external met=
adata property is used<br>=C2=A0* Fixed incorrect loading of property keys =
in ETCD-database<br>=C2=A0* Toggle-disk now tries to resolve the storage po=
ol from already deployed resources<br>=C2=A0* Fixed missing rollback if a r=
esource-group spawn failed</font><br></div><div><br></div><div><div><font f=
ace=3D"monospace"><a href=3D"https://www.linbit.com/downloads/linstor/linst=
or-server-1.11.1.tar.gz" target=3D"_blank">https://www.linbit.com/downloads=
/linstor/linstor-server-1.11.1.tar.gz</a></font><br></div><div><br></div><d=
iv><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+arch=
ive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https:/=
/launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><d=
iv><br></div><div>Cheers,<br></div><div>Rene</div></div></div></div></div>

--0000000000005613c505b8c853f6--
