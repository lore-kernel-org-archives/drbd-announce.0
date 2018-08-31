Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id ABC5C101AC56
	for <drbd-announce@lists.linbit.com>;
	Fri, 31 Aug 2018 16:27:17 +0200 (CEST)
Received: by mail-wr1-f67.google.com with SMTP id j26-v6so11409772wre.2
	for <drbd-announce@lists.linbit.com>;
	Fri, 31 Aug 2018 07:27:17 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Fri, 31 Aug 2018 16:18:55 +0200
Message-ID: <CAHmn2DOsWVrAKJQkZeNv3AOjNwLEX_B3Wyr2T+GLg8s3C+PPVw@mail.gmail.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000cea6f80574bbdfee"
Subject: [DRBD-announce] Linstor v0.6.0 release
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

--000000000000cea6f80574bbdfee
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All!

Linstor v0.6 is out!

First thing to note is that the client command for creating storage pools
was slightly changed, the driver is now the first positional argument e.g.
`linstor storage-pool create lvm drbdnode sp_name`

Adding a backing disk to a diskless node, while it is online, while it
is under IO, while it is primary, is a cool feature that might come handy
in various situations. E.g.

- You want have more read IOPs for a VM
- You want to reduce network-load when your VM reads form a virtual disk
- You want to increase redundancy of your data set

Of course the inverse operation (remove a disk, changing a resource to a
diskless one) while it is online and primary is available with this
release as well.

linstor-server 0.6.0
--------------------
 * Feature: Convert diskless DRBD to diskful online (and reverse)
 * Feature: Add Swordfish driver support
 * Fix hanging resource-definition delete (if it was empty)
 * Fix incorrect lvm thin pool total capacity
 * Fix snapshot names from migrated resource

http://www.linbit.com/downloads/linstor/linstor-server-0.6.0.tar.gz

linstor-client/python-linstor 0.6.0
-----------------------------------
 * Add command for disk to diskless
 * Client accepts multiple controllers
 * Storage pool create command changed
 * Added swordfish driver to storage pools
 * Node list now shows also ports
 * Fixes and updates to the drbdmanage migrate script

http://www.linbit.com/downloads/linstor/python-linstor-0.6.0.tar.gz
http://www.linbit.com/downloads/linstor/linstor-client-0.6.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--
Ren=C3=A9 Peinthor - Software Developer
rene.peinthor@linbit.com

LINBIT | Keeping the Digital World Running
DRBD HA - Disaster Recovery - Software-defined Storage
t / f / in / y / g+

DRBD=C2=AE and LINBIT=C2=AE are registered trademarks of LINBIT, Austria.

--000000000000cea6f80574bbdfee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All!<br><br>Linstor v0.6 is out!<br><br>First thing to =
note is that the client command for creating storage pools<br>was slightly =
changed, the driver is now the first positional argument e.g.<br>`linstor s=
torage-pool create lvm drbdnode sp_name`<br><br>Adding a backing disk to a =
diskless node, while it is online, while it<br>is under IO, while it is pri=
mary, is a cool feature that might come handy<br>in various situations. E.g=
.<br><br>- You want have more read IOPs for a VM<br>- You want to reduce ne=
twork-load when your VM reads form a virtual disk<br>- You want to increase=
 redundancy of your data set<br><br>Of course the inverse operation (remove=
 a disk, changing a resource to a<br>diskless one) while it is online and p=
rimary is available with this<br>release as well.<br><br><font face=3D"mono=
space, monospace">linstor-server 0.6.0<br>--------------------<br>=C2=A0* F=
eature: Convert diskless DRBD to diskful online (and reverse)<br>=C2=A0* Fe=
ature: Add Swordfish driver support<br>=C2=A0* Fix hanging resource-definit=
ion delete (if it was empty)<br>=C2=A0* Fix incorrect lvm thin pool total c=
apacity<br>=C2=A0* Fix snapshot names from migrated resource</font><br><a h=
ref=3D"http://www.linbit.com/downloads/linstor/linstor-server-0.6.0.tar.gz"=
><br>http://www.linbit.com/downloads/linstor/linstor-server-0.6.0.tar.gz</a=
><br><br><font face=3D"monospace, monospace">linstor-client/python-linstor =
0.6.0<br>-----------------------------------<br>=C2=A0* Add command for dis=
k to diskless<br>=C2=A0* Client accepts multiple controllers<br>=C2=A0* Sto=
rage pool create command changed<br>=C2=A0* Added swordfish driver to stora=
ge pools<br>=C2=A0* Node list now shows also ports<br>=C2=A0* Fixes and upd=
ates to the drbdmanage migrate script</font><br><br><a href=3D"http://www.l=
inbit.com/downloads/linstor/python-linstor-0.6.0.tar.gz">http://www.linbit.=
com/downloads/linstor/python-linstor-0.6.0.tar.gz</a><br><a href=3D"http://=
www.linbit.com/downloads/linstor/linstor-client-0.6.0.tar.gz">http://www.li=
nbit.com/downloads/linstor/linstor-client-0.6.0.tar.gz</a><br><br>Linstor P=
PA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd=
9-stack">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</=
a><br><br>Best regards,<div>Rene<br><br>--<br>Ren=C3=A9 Peinthor - Software=
 Developer<br><a href=3D"mailto:rene.peinthor@linbit.com">rene.peinthor@lin=
bit.com</a><br><br>LINBIT | Keeping the Digital World Running<br>DRBD HA - =
Disaster Recovery - Software-defined Storage<br>t / f / in / y / g+<br><br>=
DRBD=C2=AE and LINBIT=C2=AE are registered trademarks of LINBIT, Austria.</=
div></div>

--000000000000cea6f80574bbdfee--
