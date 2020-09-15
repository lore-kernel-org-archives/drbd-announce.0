Return-Path: <philipp.reisner@linbit.com>
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B35CF420BC2
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Sep 2020 14:21:54 +0200 (CEST)
Received: by mail-io1-f53.google.com with SMTP id y74so3734660iof.12
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Sep 2020 05:21:54 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Tue, 15 Sep 2020 14:20:42 +0200
Message-ID: <CADGDV=VGosYqnnL1poLWhb20bchH40akJnddY_aJErojQaCqPg@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000acc57a05af592eb8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.25-rc1
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

--000000000000acc57a05af592eb8
Content-Type: text/plain; charset="UTF-8"

Hi,

The main reason to do a release is that with 9.0.25 the overhead submitting
IO got smaller. On some specific hardware the fio results go from IOPS=229k,
BW=896MiB/s to IOPS=370k, BW=1445MiB/s (single DRBD device).
Especially with multiple or many DRBD devices on a single server, the
improvement
might be significant.
Other than that there are a number of bug fixes. None of the fixed bugs was
especially spectacular. Generally speaking update will be recommended
as soon as we have the final release.

This is a release candidate, please help testing it.

Changelog:
9.0.25-0rc1 (api:genl2/proto:86-117/transport:14)
--------
 * fix a race condition between receiving UUIDs and finishing a resync
   that can lead to a false-positive split-brain detection later on
 * fix access after free of peer_req objects, that only happened when
   a resync target node is paused sync source at the same time
 * fix abortion of local state changes in case they can not proceed due
   to loss of connection
 * fix corner cases with reconciliation resync and parallel promote
 * fix an issue establishing a connection when the multipath feature is
   used to connect to a stacked resource without a dedicated service IP
 * fix sometimes a peer-disk state to another resync-target staying Outdated
   after two resyncs from the same sync source node finish
 * fix an (unlikely) deadlock while establishing a connection
 * deactivate the kref_debug code, it has performance implications
 * Introduce the "disconnected" hander; it receives the last connection
   state in the environment variable DRBD_CSTATE

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.25-0rc1.tar.gz
https://github.com/LINBIT/drbd/commit/bd41626d3fdc7b6f575532020ff9ce1c9c4bf29b

best regards,
 Phil

--000000000000acc57a05af592eb8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>The main reason to do a release is that with 9.=
0.25 the overhead submitting<br>IO got smaller. On some specific hardware t=
he fio results go from IOPS=3D229k,<div>BW=3D896MiB/s to IOPS=3D370k, BW=3D=
1445MiB/s (single DRBD device).<br></div><div>Especially with multiple or m=
any DRBD devices on a single server, the improvement</div><div>might be sig=
nificant.</div><div>Other than that there are a number=C2=A0of bug fixes. N=
one=C2=A0of the fixed bugs was=C2=A0</div><div>especially spectacular. Gene=
rally speaking update will be recommended</div><div>as soon as we have the =
final release.</div><div><br>This is a release candidate, please help testi=
ng it.<br><br>Changelog:<br>9.0.25-0rc1 (api:genl2/proto:86-117/transport:1=
4)<br>--------<br>=C2=A0* fix a race condition between receiving UUIDs and =
finishing a resync<br>=C2=A0 =C2=A0that can lead to a false-positive split-=
brain detection later on<br>=C2=A0* fix access after free of peer_req objec=
ts, that only happened when<br>=C2=A0 =C2=A0a resync target node is paused =
sync source at the same time<br>=C2=A0* fix abortion of local state changes=
 in case they can not proceed due<br>=C2=A0 =C2=A0to loss of connection<br>=
=C2=A0* fix corner cases with reconciliation resync and parallel promote<br=
>=C2=A0* fix an issue establishing a connection when the multipath feature =
is<br>=C2=A0 =C2=A0used to connect to a stacked resource without a dedicate=
d service IP<br>=C2=A0* fix sometimes a peer-disk state to another resync-t=
arget staying Outdated<br>=C2=A0 =C2=A0after two resyncs from the same sync=
 source node finish<br>=C2=A0* fix an (unlikely) deadlock while establishin=
g a connection<br>=C2=A0* deactivate the kref_debug code, it has performanc=
e implications<br>=C2=A0* Introduce the &quot;disconnected&quot; hander; it=
 receives the last connection<br>=C2=A0 =C2=A0state in the environment vari=
able DRBD_CSTATE<br><br><a href=3D"https://www.linbit.com/downloads/drbd/9.=
0/drbd-9.0.25-0rc1.tar.gz">https://www.linbit.com/downloads/drbd/9.0/drbd-9=
.0.25-0rc1.tar.gz</a><br><a href=3D"https://github.com/LINBIT/drbd/commit/b=
d41626d3fdc7b6f575532020ff9ce1c9c4bf29b">https://github.com/LINBIT/drbd/com=
mit/bd41626d3fdc7b6f575532020ff9ce1c9c4bf29b</a><br><br>best regards,<br>=
=C2=A0Phil</div></div>

--000000000000acc57a05af592eb8--
