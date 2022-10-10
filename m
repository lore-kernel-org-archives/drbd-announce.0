Return-Path: <philipp.reisner@linbit.com>
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com
	[209.85.160.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D93704204B5
	for <drbd-announce@lists.linbit.com>;
	Mon, 10 Oct 2022 15:51:09 +0200 (CEST)
Received: by mail-oa1-f52.google.com with SMTP id
	586e51a60fabf-134072c15c1so9294550fac.2
	for <drbd-announce@lists.linbit.com>;
	Mon, 10 Oct 2022 06:51:09 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 10 Oct 2022 15:50:56 +0200
Message-ID: <CADGDV=Vhux4VE2oRDMbwrMf-gmxFCWQMPjTfcF1=ydOeXvTW1w@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000009080ca05eaae736d"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.2.0
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

--0000000000009080ca05eaae736d
Content-Type: text/plain; charset="UTF-8"

Hello,

I am proud and glad to announce drbd-9.2.0. It is a new feature release,
bringing:

1) Lower latency for mirrored write requests
Every mirrored write request gets completed one scheduler context switch
earlier. This is a result of better integration with the networking stack.

2) Lower contention between application IO and resync IO
While a resync runs, DRBD used to "lock out" all application IO in areas of
128MB while the resync was active within such 128MByte resync-extents. We
got rid of the resync-extents, the IO lock-out is not as small as the actual
requests are.

3) Much better resync performance on thinly provisioned backends
We coalesce trim/discard operations originating from a resync operation on
thinly provisioned backend devices. As trim/discard can be costly (compared
to regular writes), this can speed up resync one to two orders of magnitude.

4) Support for network namespaces
By binding DRBD's connections to the namespace they get created from, we
enable the Project Piraeus (LINSTOR/DRBD to Kubernetes integration) to put
the replication network traffic into the overlay/container network, instead
the host network.

5) A native RDMA/verbs/Infiniband/RoCE transport
The transport_rdma module allows you to use Infiniband/RoCE instead of
TCP-IP over Ethernet for DRBD. It brings zero-copy receive, lower CPU usage,
and lower latency.

Apart from these features, it is compatible with existing drbd-9.0 or
drbd-9.1 in configuration, meta-data, and network protocol.

Attention might be necessary regarding resource naming. drbd-9.2 accepts
only [0-9A-Za-z.+_-]* as resource names. If you depend on the old behaviour,
it can be brought back with `echo 0 >
/sys/module/drbd/parameters/strict_names`.

We will continue to maintain drbd-9.1 until the end of September 2023.

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.0.tar.gz
https://github.com/LINBIT/drbd/commit/71e60591f3d7ea05034bccef8ae362c17e6aa4d1

--0000000000009080ca05eaae736d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>I am proud and glad to announce drbd-9.2.0. =
It is a new feature release,<br>bringing:<br><br>1) Lower latency for mirro=
red write requests<br>Every mirrored write request gets completed one sched=
uler context switch<br>earlier. This is a result of better integration with=
 the networking stack.<br><br>2) Lower contention between application IO an=
d resync IO<br>While a resync runs, DRBD used to &quot;lock out&quot; all a=
pplication IO in areas of<br>128MB while the resync was active within such =
128MByte resync-extents. We<br>got rid of the resync-extents, the IO lock-o=
ut is not as small as the actual<br>requests are.<br><br>3) Much better res=
ync performance on thinly provisioned backends<br>We coalesce trim/discard =
operations originating from a resync operation on<br>thinly provisioned bac=
kend devices. As trim/discard can be costly (compared<br>to regular writes)=
, this can speed up resync one to two orders of magnitude.<br><br>4) Suppor=
t for network namespaces<br>By binding DRBD&#39;s connections to the namesp=
ace they get created from, we<br>enable the Project Piraeus (LINSTOR/DRBD t=
o Kubernetes integration) to put<br>the replication network traffic into th=
e=C2=A0overlay/container network, instead<div>the host network.<br><br>5) A=
 native RDMA/verbs/Infiniband/RoCE transport<br>The transport_rdma module a=
llows you to use Infiniband/RoCE instead of<br>TCP-IP over Ethernet for DRB=
D. It brings zero-copy receive, lower CPU usage,<br>and lower latency.<br><=
br>Apart from these features, it is compatible with existing drbd-9.0 or<br=
>drbd-9.1 in configuration, meta-data, and network protocol.<br><br>Attenti=
on might be necessary regarding resource naming. drbd-9.2 accepts<br>only [=
0-9A-Za-z.+_-]* as resource names. If you depend on the old behaviour,<br>i=
t can be brought back with `echo 0 &gt; /sys/module/drbd/parameters/strict_=
names`.<br><br>We will continue to maintain drbd-9.1 until the end of Septe=
mber 2023.<br><br><a href=3D"https://pkg.linbit.com//downloads/drbd/9/drbd-=
9.2.0.tar.gz">https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.0.tar.gz</a=
><br><a href=3D"https://github.com/LINBIT/drbd/commit/71e60591f3d7ea05034bc=
cef8ae362c17e6aa4d1">https://github.com/LINBIT/drbd/commit/71e60591f3d7ea05=
034bccef8ae362c17e6aa4d1</a><br><div><br></div></div></div>

--0000000000009080ca05eaae736d--
