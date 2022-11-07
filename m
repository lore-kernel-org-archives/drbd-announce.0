Return-Path: <philipp.reisner@linbit.com>
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com
	[209.85.219.173])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 08A5B4201A5
	for <drbd-announce@lists.linbit.com>;
	Mon,  7 Nov 2022 21:06:38 +0100 (CET)
Received: by mail-yb1-f173.google.com with SMTP id 131so10554165ybl.3
	for <drbd-announce@lists.linbit.com>;
	Mon, 07 Nov 2022 12:06:38 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 7 Nov 2022 21:06:26 +0100
Message-ID: <CADGDV=WJFBerhvBr=i3WA9vP_=OnOJW+q5SN9Q0xZTm03CSHLQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000002a7d005ece6f688"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.12-rc.1 & drbd-9.2.1-rc.1
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

--00000000000002a7d005ece6f688
Content-Type: text/plain; charset="UTF-8"

Hello,

The most outstanding improvement is supporting thinly provisioned backing
devices with discard granularities larger than 128MiB. Here I mean with
supporting, that during a resync we make sure not to cause unnecessary
allocations in the backing block device, and merging the discard requests
for good resync performance.
Previously DRBD was only dealing with discard granularities of up to 1MiB.

The LVM tools create big chunksizes in thinpools for large pools. The
chunksize is then what determines the discard granularity. ZFS on the other
hand always stays with 8k, and it consumes too much space for its metadata
on large pools. The middle ground would be optimal. We will write an article
on these chunksize considerations. Also mentioning how to set these settings
with LVM-thin and ZFS.

On top of that, we have a bunch of fixes and lots of progress with upstream
kernel compatibility.

This is a release candidate, please help testing.
9.2.1-rc.1 (api:genl2/proto:110-121/transport:18)
--------
 * fix spurious PingAck timeout, a regression of ack-processing in bottom
half
   (introduced with 9.2.0)
 * support merging of discards during resync even if the discard granularity
   of the backing device is larger than 128MiB
 * merged changes from the drbd-9.1 branch, including
  - fix a race that could result in connection attempts getting aborted
    with the message "sock_recvmsg returned -11"
  - rate limit messages in case the peer can not write the backing storage
    and it does not finish the necessary state transitions
  - reduced the receive timeout during connecting to the intended 5 seconds
    (ten times ping-ack timeout)
  - losing the connection at a specific point in time during establishing
    a connection could cause a transition to StandAlone; fixed that, so
    that it keeps trying to connect
  - fix a race that could lead to a fence-peer handler being called
    unexpectedly when the fencing policy is changed at the moment before
    promoting

9.1.12-rc.1 (api:genl2/proto:110-121/transport:17)
--------
 * fix a race that could result in connection attempts getting aborted
   with the message "sock_recvmsg returned -11"
 * rate limit messages in case the peer can not write the backing storage
   and it does not finish the necessary state transitions
 * reduced the receive timeout during connecting to the intended 5 seconds
   (ten times ping-ack timeout)
 * losing the connection at a specific point in time during establishing
   a connection could cause a transition to StandAlone; fixed that, so
   that it keeps trying to connect
 * fix a race that could lead to a fence-peer handler being called
   unexpectedly when the fencing policy is changed at the moment before
   promoting

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.12-rc.1.tar.gz
https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.1-rc.1.tar.gz

https://github.com/LINBIT/drbd/commit/ff1a902fa721b0e8ca30a7a134b4308ecb0af90c
https://github.com/LINBIT/drbd/commit/e4966f94dc36c803a85f5e49b79428ef592beb83

--00000000000002a7d005ece6f688
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br></div><div><br>The most outstanding improve=
ment is supporting thinly provisioned backing<br>devices with discard granu=
larities larger than 128MiB. Here I mean with<br>supporting, that during a =
resync we make sure not to cause unnecessary<br>allocations in the backing =
block device, and merging the discard requests<br>for good resync performan=
ce.<br>Previously DRBD was only dealing with discard granularities of up to=
 1MiB.<br><br>The LVM tools create big chunksizes in thinpools for large po=
ols. The<br>chunksize is then what determines the discard granularity. ZFS =
on the other<br>hand always stays with 8k, and it consumes too much space f=
or its metadata<br>on large pools. The middle ground would be optimal. We w=
ill write an article<br>on these chunksize considerations. Also mentioning =
how to set these settings<br>with LVM-thin and ZFS.<br><br>On top of that, =
we have a bunch of fixes and lots of progress with upstream<br>kernel compa=
tibility.<br><br>This is a release candidate, please help testing.<br></div=
><div>9.2.1-rc.1 (api:genl2/proto:110-121/transport:18)<br>--------<br>=C2=
=A0* fix spurious PingAck timeout, a regression of ack-processing in bottom=
 half<br>=C2=A0 =C2=A0(introduced with 9.2.0)<br>=C2=A0* support merging of=
 discards during resync even if the discard granularity<br>=C2=A0 =C2=A0of =
the backing device is larger than 128MiB<br>=C2=A0* merged changes from the=
 drbd-9.1 branch, including<br>=C2=A0 - fix a race that could result in con=
nection attempts getting aborted<br>=C2=A0 =C2=A0 with the message &quot;so=
ck_recvmsg returned -11&quot;<br>=C2=A0 - rate limit messages in case the p=
eer can not write the backing storage<br>=C2=A0 =C2=A0 and it does not fini=
sh the necessary state transitions<br>=C2=A0 - reduced the receive timeout =
during connecting to the intended 5 seconds<br>=C2=A0 =C2=A0 (ten times pin=
g-ack timeout)<br>=C2=A0 - losing the connection at a specific point in tim=
e during establishing<br>=C2=A0 =C2=A0 a connection could cause a transitio=
n to StandAlone; fixed that, so<br>=C2=A0 =C2=A0 that it keeps trying to co=
nnect<br>=C2=A0 - fix a race that could lead to a fence-peer handler being =
called<br>=C2=A0 =C2=A0 unexpectedly when the fencing policy is changed at =
the moment before<br>=C2=A0 =C2=A0 promoting<br></div><div><br></div><div>9=
.1.12-rc.1 (api:genl2/proto:110-121/transport:17)<br>--------<br>=C2=A0* fi=
x a race that could result in connection attempts getting aborted<br>=C2=A0=
 =C2=A0with the message &quot;sock_recvmsg returned -11&quot;<br>=C2=A0* ra=
te limit messages in case the peer can not write the backing storage<br>=C2=
=A0 =C2=A0and it does not finish the necessary state transitions<br>=C2=A0*=
 reduced the receive timeout during connecting to the intended 5 seconds<br=
>=C2=A0 =C2=A0(ten times ping-ack timeout)<br>=C2=A0* losing the connection=
 at a specific point in time during establishing<br>=C2=A0 =C2=A0a connecti=
on could cause a transition to StandAlone; fixed that, so<br>=C2=A0 =C2=A0t=
hat it keeps trying to connect<br>=C2=A0* fix a race that could lead to a f=
ence-peer handler being called<br>=C2=A0 =C2=A0unexpectedly when the fencin=
g policy is changed at the moment before<br>=C2=A0 =C2=A0promoting<br><br><=
a href=3D"https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.12-rc.1.tar.gz"=
>https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.12-rc.1.tar.gz</a><br><a=
 href=3D"https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.1-rc.1.tar.gz">h=
ttps://pkg.linbit.com//downloads/drbd/9/drbd-9.2.1-rc.1.tar.gz</a><br><br><=
a href=3D"https://github.com/LINBIT/drbd/commit/ff1a902fa721b0e8ca30a7a134b=
4308ecb0af90c">https://github.com/LINBIT/drbd/commit/ff1a902fa721b0e8ca30a7=
a134b4308ecb0af90c</a><br><a href=3D"https://github.com/LINBIT/drbd/commit/=
e4966f94dc36c803a85f5e49b79428ef592beb83">https://github.com/LINBIT/drbd/co=
mmit/e4966f94dc36c803a85f5e49b79428ef592beb83</a><br><br><br></div></div>

--00000000000002a7d005ece6f688--
