Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2F04E42021A
	for <drbd-announce@lists.linbit.com>;
	Tue,  4 May 2021 12:55:52 +0200 (CEST)
Received: by mail-wm1-f53.google.com with SMTP id s82so5095782wmf.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 04 May 2021 03:55:52 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 4 May 2021 12:55:42 +0200
Message-ID: <CAHmn2DNbB+4Ww3gmVrqfS97fiTo+g+0hA0Zw-XTw1+bpMy-1Fg@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000f858ac05c17eeb53"
Subject: [DRBD-announce] linstor-server release 1.12.2
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

--000000000000f858ac05c17eeb53
Content-Type: text/plain; charset="UTF-8"

Hi!

Another little bugfix release, postgresql DB upgrade didn't work as
expected and there was another migration script that forgot about resources
with suffix volumes (e.g. external metadata)

linstor-server 1.12.2
---------------------
 * Fix migration on postgresql
 * Fixed db migration of resource with suffix volumes (e.g. ext-metadata)

https://www.linbit.com/downloads/linstor/linstor-server-1.12.2.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000f858ac05c17eeb53
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Another little bugfix re=
lease, postgresql DB upgrade didn&#39;t work as expected and there was anot=
her migration script that forgot about resources with suffix volumes (e.g. =
external metadata)</div><div><br></div><div><font face=3D"monospace">linsto=
r-server 1.12.2<br>---------------------<br>=C2=A0* Fix migration on postgr=
esql<br>=C2=A0* Fixed db migration of resource with suffix volumes (e.g. ex=
t-metadata)</font><br></div><div><font face=3D"monospace"><br></font></div>=
<div><div><font face=3D"monospace"><a href=3D"https://www.linbit.com/downlo=
ads/linstor/linstor-server-1.12.2.tar.gz" target=3D"_blank">https://www.lin=
bit.com/downloads/linstor/linstor-server-1.12.2.tar.gz</a></font><br></div>=
<div><br></div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.=
net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=
=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stac=
k</a></div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></div>=
</div></div>

--000000000000f858ac05c17eeb53--
