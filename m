Return-Path: <philipp.reisner@linbit.com>
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com
	[209.85.128.176])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 47D5C420170
	for <drbd-announce@lists.linbit.com>;
	Wed, 28 Sep 2022 10:58:29 +0200 (CEST)
Received: by mail-yw1-f176.google.com with SMTP id
	00721157ae682-3529c491327so28763327b3.13
	for <drbd-announce@lists.linbit.com>;
	Wed, 28 Sep 2022 01:58:29 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Wed, 28 Sep 2022 10:58:17 +0200
Message-ID: <CADGDV=UEDGfFFS2yEx9=7c14n7QWzAcE_HnOkuof6mWw-RcZmg@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000dbbaa005e9b8f6c8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.2.0-rc.8
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

--000000000000dbbaa005e9b8f6c8
Content-Type: text/plain; charset="UTF-8"

Hello,

Finally, the RDMA transport got the long necessary attention. Now it tests
successfully on RHEL9 clones. And, BTW, we enabled also all of the regular
tests, that test network interruption via iptables also for the RDMA
transport. (iptables can only fetch RoCE packets with rdma_rxe, the
software-
only RoCE driver)

This RC comes a bit delayed since I wanted to include the interesting
fixes/improvements to the quorum code. (These changes originate from the
drbd-9.1 branch.) They fix quorum at the moment a fresh node joins a quorate
but incomplete partition.

Unless someone finds a show-stopper within a week, this is the last release
candidate before the 9.2.0 final release.

A short reminder, the other advantages of drbd-9.2 over 9.1 are:
 * lower latency for mirrored write requests
 * lower contention between application IO and resync IO
 * much better resync performance on thinly provisioned backends
 * support for network namespaces
 * an RDMA transport

Please help test this pre-release.

9.2.0-rc.8 (api:genl2/proto:110-121/transport:18)
--------
 * fix the RDMA transport to work on more recent kernels (like RHEL9)
 * improve transmit timeout handling of the RDMA transport
 * register DRBD has pernet device for namespace management
 * merged fixes from the drbd-9.1 branch, including
  - request handling (9.1.11)
  - fix quorum when fresh nodes join a quorate but incomplete partition
  - minor state handling fixes/improvements

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.0-rc.8.tar.gz
https://github.com/LINBIT/drbd/commit/55eca3ae75cd91b83c0eefc205c9560de2408c49

--000000000000dbbaa005e9b8f6c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>Finally, the RDMA transport got the long nec=
essary attention. Now it tests<br>successfully on RHEL9 clones. And, BTW, w=
e enabled also all of the regular<br>tests, that test network interruption =
via iptables also for the RDMA<br>transport. (iptables can only fetch RoCE =
packets with rdma_rxe, the software-<div>only RoCE driver)<br><br>This RC c=
omes a bit delayed since I wanted to include the interesting<br>fixes/impro=
vements to the quorum code. (These changes originate from the<br>drbd-9.1 b=
ranch.) They fix quorum at the moment a fresh node joins a quorate<br>but i=
ncomplete partition.<br><br>Unless someone finds a show-stopper within a we=
ek, this is the last release<br>candidate before the 9.2.0 final release.<b=
r><br>A short reminder, the other advantages of drbd-9.2 over 9.1 are:<br>=
=C2=A0* lower latency for mirrored write requests<br>=C2=A0* lower contenti=
on between application IO and resync IO<br>=C2=A0* much better resync perfo=
rmance on thinly provisioned backends<br>=C2=A0* support for network namesp=
aces<br>=C2=A0* an RDMA transport<br><br>Please help test this pre-release.=
<br><br>9.2.0-rc.8 (api:genl2/proto:110-121/transport:18)<br>--------<br>=
=C2=A0* fix the RDMA transport to work on more recent kernels (like RHEL9)<=
br>=C2=A0* improve transmit timeout handling of the RDMA transport<br>=C2=
=A0* register DRBD has pernet device for namespace management<br>=C2=A0* me=
rged fixes from the drbd-9.1 branch, including<br>=C2=A0 - request handling=
 (9.1.11)<br>=C2=A0 - fix quorum when fresh nodes join a quorate but incomp=
lete partition<br>=C2=A0 - minor state handling fixes/improvements<br><br><=
div><a href=3D"https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.0-rc.8.tar=
.gz">https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.0-rc.8.tar.gz</a><br=
><a href=3D"https://github.com/LINBIT/drbd/commit/55eca3ae75cd91b83c0eefc20=
5c9560de2408c49">https://github.com/LINBIT/drbd/commit/55eca3ae75cd91b83c0e=
efc205c9560de2408c49</a><br></div></div></div>

--000000000000dbbaa005e9b8f6c8--
