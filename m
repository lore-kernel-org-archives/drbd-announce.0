Return-Path: <joel.colledge@linbit.com>
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 664FC101AC43
	for <drbd-announce@lists.linbit.com>;
	Mon,  5 Aug 2019 17:13:50 +0200 (CEST)
Received: by mail-io1-f42.google.com with SMTP id z3so26902589iog.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 05 Aug 2019 08:13:50 -0700 (PDT)
MIME-Version: 1.0
From: Joel Colledge <joel.colledge@linbit.com>
Date: Mon, 5 Aug 2019 17:06:17 +0200
Message-ID: <CAGNP_+VFL7jwvjBk-0nKAXpvD8oHXyywp4y3dK-u_HNTGsrwVA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-10.0.0a1
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

Hi,

The first drbd-10.0 alpha release is out. We are working on some major
new features in DRBD, so we have created a drbd-9.0 stable branch and
upcoming releases from master will belong to the drbd-10.0 series.

The main changes for drbd-10.0 so far are:
* Reduced lock contention. The wide-reaching "req_lock" has been
removed and replaced by more fine-grained synchronization. This
improves DRBD performance in highly concurrent usage scenarios.
Initial testing indicates a 50% improvement in throughput with a
highly concurrent workload.
* No wire compatibility with DRBD 8 or below. This is necessary for
other planned changes.

New features in development:
* Request forwarding. DRBD will be able to send data to peers with
which it has no direct connection. The main use-case for this is
disaster recovery with multiple nodes at each site. The data will only
be sent once to the other site, reducing the bandwidth demands on the
long-distance replication link.
* PMEM journaling. DRBD can already access its metadata in a PMEM
optimized fashion. That will be extended to using a PMEM device as a
write-back cache. This should dramatically improve performance in
latency-sensitive scenarios. It is also a necessary prerequisite for
erasure coding.
* Erasure coding. DRBD will be able to erasure code and distribute its
data. This provides the same functionality as RAID5/6, but with an
arbitrary number of parity nodes. The result is lower disk usage with
similar redundancy characteristics.

Note for building from source: Both master and drbd-9.0 now use spatch
from the Coccinelle project to transform the source code to build
against distribution/older kernels. This replaces previous compat
based on conditional compilation. The major benefit is that the DRBD
sources match up with the mainline kernel much more closely, which is
an important step towards upgrading DRBD in the mainline kernel from
8.4 to 9.0+.

Please help testing, and share your experience on the mailing list. Do
not complain if it fails in your production environment. It is not
intended for that. The =E2=80=9Ca=E2=80=9D in the version string stands for=
 =E2=80=9Calpha=E2=80=9D.

We have not yet released any binary packages for drbd-10.0.

Best regards,
Joel
