Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2A1654207A2
	for <drbd-announce@lists.linbit.com>;
	Mon,  9 Nov 2020 12:16:44 +0100 (CET)
Received: by mail-wm1-f45.google.com with SMTP id h62so7553200wme.3
	for <drbd-announce@lists.linbit.com>;
	Mon, 09 Nov 2020 03:16:44 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 9 Nov 2020 12:16:33 +0100
Message-ID: <CAHmn2DNFFSRwSG0XUe95h+cWX3tmJjyUoaH8NoJk94ucUqhrbA@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000008545cd05b3aab2e6"
Subject: [DRBD-announce] linstor-server 1.10.0 release
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

--0000000000008545cd05b3aab2e6
Content-Type: text/plain; charset="UTF-8"

Hi!

This release brings 2 new added features, auto-evict and configurable ETCD
prefixes:

Auto-Evict:
If a satellite has no connection to the controller for more than an hour,
the controller will mark that node as EVICTED and remove all its
DRBD-resources. Should this cause the total number of replicas for those
resources to fall below a user-set minimum, it will then try to place new
replicas on other satellites to keep enough replicas available.

ETCD-prefixes:
You can now configure the used ETCD prefix within the linstor.toml file, of
course this needs to be done before the first start of the controller.
As a little drawback(cleanup) of this change, it isn't possible anymore to
directly upgrade ETCD backed Linstor-Controller installation from a version
prior < 1.4.3. If you have such a situation
upgrade to 1.9.0 first and then to 1.10.0.

linstor-server 1.10.0
--------------------
 * Added auto-evict feature
 * ETCD prefix is now configurable (migration only works now starting from
version 1.4.3)
 * Block IO can now be throttled also by iops
 * Fixed REST-API single snapshot filtering
 * Fixed drbd-events2 parsing race condition
 * Fixed toggle-disk doesn't work if an unrelated node is offline
 * Fixed race-condition in auto-tiebreaker
 * Fixed usage of wait for snapshot-shipping
 * REST-API version 1.5.0

https://www.linbit.com/downloads/linstor/linstor-server-1.10.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000008545cd05b3aab2e6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>This release brings 2 new added fea=
tures, auto-evict and configurable ETCD prefixes:</div><div><br></div><div>=
Auto-Evict:</div><div>If a satellite has no connection to the controller fo=
r more than an hour, the controller will mark that node as EVICTED and remo=
ve all its DRBD-resources. Should this cause the total number of replicas f=
or those resources to fall below a user-set minimum, it will then try to pl=
ace new replicas on other satellites to keep enough replicas available.<br>=
</div><div><br></div><div>ETCD-prefixes:</div><div>You can now configure th=
e used ETCD prefix within the linstor.toml file, of course this needs to be=
 done before the first start of the controller.</div><div>As a little drawb=
ack(cleanup) of this change, it isn&#39;t possible anymore to directly upgr=
ade ETCD backed Linstor-Controller installation from a version prior &lt; 1=
.4.3. If you have such a situation</div><div>upgrade to 1.9.0 first and the=
n to 1.10.0.</div><div><br></div><div><div><font face=3D"monospace">linstor=
-server 1.10.0<br>--------------------<br>=C2=A0* Added auto-evict feature<=
br>=C2=A0* ETCD prefix is now configurable (migration only works now starti=
ng from version 1.4.3)<br>=C2=A0* Block IO can now be throttled also by iop=
s<br>=C2=A0* Fixed REST-API single snapshot filtering<br>=C2=A0* Fixed drbd=
-events2 parsing race condition<br>=C2=A0* Fixed toggle-disk doesn&#39;t wo=
rk if an unrelated node is offline<br>=C2=A0* Fixed race-condition in auto-=
tiebreaker<br>=C2=A0* Fixed usage of wait for snapshot-shipping<br>=C2=A0* =
REST-API version 1.5.0</font><br></div><div><br></div><div><div><font face=
=3D"monospace"><a href=3D"https://www.linbit.com/downloads/linstor/linstor-=
server-1.10.0.tar.gz">https://www.linbit.com/downloads/linstor/linstor-serv=
er-1.10.0.tar.gz</a></font><br></div><div><br></div><div><div><div>Linstor =
PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drb=
d9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbi=
t/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div>Che=
ers,<br></div><div>Rene</div></div></div></div></div>

--0000000000008545cd05b3aab2e6--
