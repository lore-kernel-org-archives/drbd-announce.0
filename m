Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 75335420218
	for <drbd-announce@lists.linbit.com>;
	Mon,  6 Dec 2021 23:04:42 +0100 (CET)
Received: by mail-wr1-f53.google.com with SMTP id j3so25404751wrp.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 06 Dec 2021 14:04:42 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 6 Dec 2021 23:04:30 +0100
Message-ID: <CADGDV=XfWjDivVaurZWjHCiFKb+YTKUNoFMkrXpmGfkqsRFDww@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000008f415a05d2817162"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.2.0-rc.1, drbd-9.1.5-rc.1, drbd-9.0.32-0rc1
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

--0000000000008f415a05d2817162
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Nikolaus/Saint Nicholas brings you the first triple release of DRBD.

For 9.0 we got a dividend from the WinDRBD effort. There was an
access-after-free bug hiding in the code, that is no issue when DRBD is
running in the Linux kernel since the Linux kernel does not un-map the
addresses after freeing objects from a mem-pool. With WinDRBD this is
different, after analyzing the bug, we fixed it in the Linux DRBD of course
(which is the upstream for WinDRBD). As announced earlier this Year the
9.0.32 release will be the final release of the 9.0 branch.

DRBD-9.1 gets the bug fixes from the 9.0 branch, and a locking regression
was fixed, specific to the 9.1 branch. From now on 9.1 is the branch that
receives bug fixes only.

In DRBD-9.2 we merged 3 exciting changes:

 * Ack processing in TCP/RDMA softirq context. This reduces the latency of
   mirrored write requests. The faster your NVMe-SSD is, the higher is the
   effect of reducing IO latency by removing two invocations of the Linux
   process scheduler. In a quick test I got these improvements:
     17=C2=B5s for 4kiB block writes (455.93=C2=B5s -> 439.28=C2=B5s)
     239=C2=B5s for 64kiB block writes (1813.66=C2=B5s -> 1579.62=C2=B5s)

 * Reducing the granularity of lockout between application IO and resync
   IO. Before this change, any 128MB chunk of a DRBD device could only do
   either application IO or resync IO. This was completely removed, now the
   lockout between those two is exactly as big as the IO requests are. This
   is an important improvement for intense workloads on fast (NVMe) drives,
   making resync and critical database IO coexist nicely and letting both
   make fair progress.

 * Add the RDMA-transport code. It is a transport implementation for RDMA -
   InfiniBand - RoCE - iWarp networks (the RDMA/verbs API). It supports loa=
d
   balancing between multiple paths and fault tolerance for the DRBD
   connection.
   ATTENTION: The rdma-transport is "tech preview" at the moment.

Ohh, and drbd-9.2 is completely drop-in compatible with 9.1.

Apart from all those features, I want to point out that our continuous
integration reached unprecedented coverage. It runs 64 tests on each and
every commit, and it is what makes these massive changes, the ack processin=
g
in softirq context and the better coordination between resync and
application IO, possible. One of the next steps: We need to enable automati=
c
testing of the rdma-transport in the CI system.

Please help test these release candidates.

When everything goes according to the plan, the final releases will come ou=
t
next week.

https://pkg.linbit.com/downloads/drbd/9.0/drbd-9.0.32-0rc1.tar.gz
https://pkg.linbit.com/downloads/drbd/9/drbd-9.1.5-rc.1.tar.gz
https://pkg.linbit.com/downloads/drbd/9/drbd-9.2.0-rc.1.tar.gz

best regards,
 Philipp

--0000000000008f415a05d2817162
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>Nikolaus/Saint Nicholas brings you the first=
 triple release of DRBD.<br><br>For 9.0 we got a dividend from the WinDRBD =
effort. There was an<br>access-after-free bug hiding in the code, that is n=
o issue when DRBD is<br>running in the Linux kernel since the Linux kernel =
does not un-map the<br>addresses after freeing objects from a mem-pool. Wit=
h WinDRBD this is<br>different, after analyzing the bug, we fixed it in the=
 Linux DRBD of course<br>(which is the upstream for WinDRBD). As announced =
earlier this Year the<br>9.0.32 release will be the final release of the 9.=
0 branch.<br><br>DRBD-9.1 gets the bug fixes from the 9.0 branch, and a loc=
king regression<br>was fixed, specific to the 9.1 branch. From now on 9.1 i=
s the branch that<br>receives bug fixes only.<br><br>In DRBD-9.2 we merged =
3 exciting changes:<br><br>=C2=A0* Ack processing in TCP/RDMA softirq conte=
xt. This reduces the latency of<br>=C2=A0 =C2=A0mirrored write requests. Th=
e faster your NVMe-SSD is, the higher is the<br>=C2=A0 =C2=A0effect of redu=
cing IO latency by removing two invocations of the Linux<br>=C2=A0 =C2=A0pr=
ocess scheduler. In a quick test I got these improvements:<br>=C2=A0 =C2=A0=
 =C2=A017=C2=B5s for 4kiB block writes (455.93=C2=B5s -&gt; 439.28=C2=B5s)<=
br>=C2=A0 =C2=A0 =C2=A0239=C2=B5s for 64kiB block writes (1813.66=C2=B5s -&=
gt; 1579.62=C2=B5s)<br><br>=C2=A0* Reducing the granularity of lockout betw=
een application IO and resync<br>=C2=A0 =C2=A0IO. Before this change, any 1=
28MB chunk of a DRBD device could only do<br>=C2=A0 =C2=A0either applicatio=
n IO or resync IO. This was completely removed, now the<br>=C2=A0 =C2=A0loc=
kout between those two is exactly as big as the IO requests are. This<br>=
=C2=A0 =C2=A0is an important improvement for intense workloads on fast (NVM=
e) drives,<br>=C2=A0 =C2=A0making resync and critical database IO coexist n=
icely and letting both<br>=C2=A0 =C2=A0make fair progress.<br><br>=C2=A0* A=
dd the RDMA-transport code. It is a transport implementation for RDMA -<br>=
=C2=A0 =C2=A0InfiniBand - RoCE - iWarp networks (the RDMA/verbs API). It su=
pports load<br>=C2=A0 =C2=A0balancing between multiple paths and fault tole=
rance for the DRBD<br>=C2=A0 =C2=A0connection.<br>=C2=A0 =C2=A0ATTENTION: T=
he rdma-transport is &quot;tech preview&quot; at the moment.<br><br>Ohh, an=
d drbd-9.2 is completely drop-in compatible with 9.1.<br><br>Apart from all=
 those features, I want to point out that our continuous<br>integration rea=
ched unprecedented coverage. It runs 64 tests on each and<br>every commit, =
and it is what makes these massive changes, the ack processing<br>in softir=
q context and the better coordination between resync and<br>application IO,=
 possible. One of the next steps: We need to enable automatic<br>testing of=
 the rdma-transport in the CI system.<br><br>Please help test these release=
 candidates.<br><br>When everything goes according to the plan, the final r=
eleases will come out<br>next week.<br><br><a href=3D"https://pkg.linbit.co=
m/downloads/drbd/9.0/drbd-9.0.32-0rc1.tar.gz">https://pkg.linbit.com/downlo=
ads/drbd/9.0/drbd-9.0.32-0rc1.tar.gz</a><div><a href=3D"https://pkg.linbit.=
com/downloads/drbd/9/drbd-9.1.5-rc.1.tar.gz">https://pkg.linbit.com/downloa=
ds/drbd/9/drbd-9.1.5-rc.1.tar.gz</a></div><div><a href=3D"https://pkg.linbi=
t.com/downloads/drbd/9/drbd-9.2.0-rc.1.tar.gz">https://pkg.linbit.com/downl=
oads/drbd/9/drbd-9.2.0-rc.1.tar.gz</a></div><div><br></div><div>best regard=
s,</div><div>=C2=A0Philipp<br><br></div></div>

--0000000000008f415a05d2817162--
