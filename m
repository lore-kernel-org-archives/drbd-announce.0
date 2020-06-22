Return-Path: <philipp.reisner@linbit.com>
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 9BAD542021C
	for <drbd-announce@lists.linbit.com>;
	Mon, 22 Jun 2020 15:48:12 +0200 (CEST)
Received: by mail-io1-f50.google.com with SMTP id q8so19522227iow.7
	for <drbd-announce@lists.linbit.com>;
	Mon, 22 Jun 2020 06:48:12 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 22 Jun 2020 15:48:00 +0200
Message-ID: <CADGDV=XpX3=VWh-9DpdXpmT1W9rCeiutXOtOO2xGxvnF=BqAtw@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000005bba7f05a8ac7e01"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.24-rc1
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

--0000000000005bba7f05a8ac7e01
Content-Type: text/plain; charset="UTF-8"

Hi,

only two weeks after the 9.0.23 release I am already starting the
next release cycle. The main reason is a change that was sitting
in a branch that I wanted to postpone after the 9.0.23
release. It is about making the detection of split-brain
situations more reliable.

So far with all DRBD-9 releases, if you have two nodes primary
and they try to reconnect the abort establishing the connection
at the moment they find out that both are primary, and retry in
10 seconds.  DRBD-8.4 was a bit more elegant in such a
situation. It detected the split-brain first and the two go into
StandAlone and stop trying endlessly. That allows users to hook
special handling into the split-brain handler(s).  This release
restores this capability of drbd-8.4. With that comes a new
protocol version.

The other fix is relevant for LINSTOR users where workload might
run on diskless-primary nodes. The particular corner-case bug
triggered when:

- in a cluster of two storage nodes and one diskless node
- one storage node is primary gets hard rebooted
- the workload is moved to the diskless node while
  the storage node is down (primary role moves)
- the new primary does not issue any writes
- the rebooted storage node connects to the other storage node
  first, before it connects to the diskless node
then it stays "Inconsistent" after the resync.

A workaround applicable to all drbd9 versions before 9.0.24 is to
do a drbdadm disconnect / connect between the two storage nodes.

This is a release candidate, please help testing it.

Changelog:

9.0.24-0rc1 (api:genl2/proto:86-117/transport:14)
--------
 * fix deadlock when connecting drbd-9 to drbd-8.4 and the drbd-9
   side becomes sync-source
 * fix an issue with 3 (or more) node configurations; with a diskless node
   and two storage nodes; if one of the storage nodes was hard rebooted
   and came back and the diskless got primary and did not issue write
   requests and the returning storage node established a connection with
   the surviving storage node first, DRBD failed to upgrade the disk
   state to UpToDate after the resync
 * detect split-brain situations also when both nodes are primary;
   this is how it was in drbd-8.4; up to now drbd-9 did not realize
   the split-brain since it complains about the not allowed dual
   primary first; for this change a new protocol version was necessary
 * verified it compiles with Linux 5.7

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.24-0rc1.tar.gz
https://github.com/LINBIT/drbd/commit/41bee98b3095a06948b9aa48258e9c877e0eadac

Best regards,
 Phil

--0000000000005bba7f05a8ac7e01
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br>only two weeks after the 9.0.23 release I =
am already=C2=A0starting the<br>next release cycle. The main reason is a ch=
ange that was sitting<br>in a branch that I wanted to postpone after the 9.=
0.23<br>release. It is about making the detection of split-brain<br>situati=
ons more reliable.<br><br>So far with all DRBD-9 releases, if you have two =
nodes primary<br>and they try to reconnect the abort establishing the conne=
ction<br>at the moment they find out that both are primary, and retry in<br=
>10 seconds.=C2=A0 DRBD-8.4 was a bit more elegant in such a<br>situation. =
It detected the split-brain first and the two go into<br>StandAlone and sto=
p trying endlessly. That allows users to hook<br>special handling into the =
split-brain handler(s).=C2=A0 This release<br>restores this capability of d=
rbd-8.4. With that comes a new<br>protocol version.<br><br>The other fix is=
 relevant for LINSTOR users where workload might<br>run on diskless-primary=
 nodes. The particular corner-case bug<br>triggered when:<br><br>- in a clu=
ster of two storage nodes and one diskless node<br>- one storage node is pr=
imary gets hard rebooted<br>- the workload is moved to the diskless node wh=
ile<br>=C2=A0 the storage node=C2=A0is down (primary role moves)<br>- the n=
ew primary does not issue any writes=C2=A0<br>- the rebooted storage node c=
onnects to the other storage node<br>=C2=A0 first, before it connects to th=
e diskless node<br>then it stays &quot;Inconsistent&quot; after the resync.=
<br><br>A workaround applicable to all drbd9 versions before 9.0.24 is to<b=
r>do a drbdadm disconnect / connect between the two storage nodes.</div><di=
v><br></div><div>This is a release candidate, please help testing it.</div>=
<div><br></div><div>Changelog:</div><div><br></div><div>9.0.24-0rc1 (api:ge=
nl2/proto:86-117/transport:14)<br>--------<br>=C2=A0* fix deadlock when con=
necting drbd-9 to drbd-8.4 and the drbd-9<br>=C2=A0 =C2=A0side becomes sync=
-source<br>=C2=A0* fix an issue with 3 (or more) node configurations; with =
a diskless node<br>=C2=A0 =C2=A0and two storage nodes; if one of the storag=
e nodes was hard rebooted<br>=C2=A0 =C2=A0and came back and the diskless go=
t primary and did not issue write<br>=C2=A0 =C2=A0requests and the returnin=
g storage node established a connection with<br>=C2=A0 =C2=A0the surviving =
storage node first, DRBD failed to upgrade the disk<br>=C2=A0 =C2=A0state t=
o UpToDate after the resync<br>=C2=A0* detect split-brain situations also w=
hen both nodes are primary;<br>=C2=A0 =C2=A0this is how it was in drbd-8.4;=
 up to now drbd-9 did not realize<br>=C2=A0 =C2=A0the split-brain since it =
complains about the not allowed dual<br>=C2=A0 =C2=A0primary first; for thi=
s change a new protocol version was necessary<br>=C2=A0* verified it compil=
es with Linux 5.7<br></div><div><br></div><div><a href=3D"https://www.linbi=
t.com/downloads/drbd/9.0/drbd-9.0.24-0rc1.tar.gz">https://www.linbit.com/do=
wnloads/drbd/9.0/drbd-9.0.24-0rc1.tar.gz</a><br></div><div><a href=3D"https=
://github.com/LINBIT/drbd/commit/41bee98b3095a06948b9aa48258e9c877e0eadac">=
https://github.com/LINBIT/drbd/commit/41bee98b3095a06948b9aa48258e9c877e0ea=
dac</a><br></div><div><br></div><div>Best regards,</div><div>=C2=A0Phil</di=
v><div><br></div><div><br></div></div>

--0000000000005bba7f05a8ac7e01--
