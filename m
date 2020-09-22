Return-Path: <philipp.reisner@linbit.com>
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com
	[209.85.166.182])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 15062420C3F
	for <drbd-announce@lists.linbit.com>;
	Tue, 22 Sep 2020 21:08:28 +0200 (CEST)
Received: by mail-il1-f182.google.com with SMTP id x18so15954483ila.7
	for <drbd-announce@lists.linbit.com>;
	Tue, 22 Sep 2020 12:08:28 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Tue, 22 Sep 2020 21:08:15 +0200
Message-ID: <CADGDV=UnF_BjwjrrAE6q2bRgdoj9MSfah2W1-zvqePK2BFmk9Q@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000134b8c05afebb162"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.25
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

--000000000000134b8c05afebb162
Content-Type: text/plain; charset="UTF-8"

Hi,

Here is the final release! It has been busy hours before the release as
some last minute fixes came in.

It is worth noting that performance increases with this release. The IO
submission overhead was reduced in general and even more if there are
multiple or many (busy) DRBD devices on a server. That helps especially
with read requests.

None of the fixed bugs was especially spectacular. Nevertheless I recommend
every DRBD-9 user to upgrade to this 9.0.25 release.

A number of tests were added to the test-suite and the team built with that
a gitlab based CI loop for DRBD. It is great!

Changelog:
9.0.25-1 (api:genl2/proto:86-117/transport:14)
--------
 * fix a missed resync after regaining quorum if a node gets disconnected
   while (or shortly before) losing quorum
 * fix a race condition between receiving UUIDs and finishing a resync
   that can lead to a false-positive split-brain detection later on
 * fix access after free of peer_req objects, that only happened when
   a resync target node is paused sync source at the same time
 * fix abortion of local state changes in case they can not proceed due
   to loss of connection
 * fix corner cases with reconciliation resync and parallel promote
 * fix a race that can lead to a stuck resync when a resync goes
   into pause (e.g. because the resync source becomes a resync target
   from another node)
 * fix an issue establishing a connection when the multipath feature is
   used to connect to a stacked resource without a dedicated service IP
 * fix sometimes a peer-disk state to another resync-target staying Outdated
   after two resyncs from the same sync source node finish
 * fix transition to paused-resync-state when an other connection continues
   its resync operation
 * fix an (unlikely) deadlock while establishing a connection
 * deactivate the kref_debug code, it has performance implications
 * Introduce the "disconnected" hander; it receives the last connection
   state in the environment variable DRBD_CSTATE


https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.25-1.tar.gz
https://github.com/LINBIT/drbd/commit/1053e9f98123e8293e9f2897af654b40cde0d24c
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

cheers,
 Phil

--000000000000134b8c05afebb162
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>Here is the final release! It has been busy hou=
rs before the release as some last minute fixes came in.<br><br>It is worth=
 noting that performance increases with this release. The IO submission ove=
rhead was reduced in general and even more if there are multiple or many (b=
usy) DRBD devices on a server. That helps especially with read requests.<br=
><br>None of the fixed bugs was especially spectacular. Nevertheless I reco=
mmend every DRBD-9 user to upgrade to this 9.0.25 release.<br><br>A number =
of tests were added to the test-suite and the team built with that a gitlab=
 based CI loop for DRBD. It is great!<br><br>Changelog:<br>9.0.25-1 (api:ge=
nl2/proto:86-117/transport:14)<br>--------<br>=C2=A0* fix a missed resync a=
fter regaining quorum if a node gets disconnected<br>=C2=A0 =C2=A0while (or=
 shortly before) losing quorum<br>=C2=A0* fix a race condition between rece=
iving UUIDs and finishing a resync<br>=C2=A0 =C2=A0that can lead to a false=
-positive split-brain detection later on<br>=C2=A0* fix access after free o=
f peer_req objects, that only happened when<br>=C2=A0 =C2=A0a resync target=
 node is paused sync source at the same time<br>=C2=A0* fix abortion of loc=
al state changes in case they can not proceed due<br>=C2=A0 =C2=A0to loss o=
f connection<br>=C2=A0* fix corner cases with reconciliation resync and par=
allel promote<br>=C2=A0* fix a race that can lead to a stuck resync when a =
resync goes<br>=C2=A0 =C2=A0into pause (e.g. because the resync source beco=
mes a resync target<br>=C2=A0 =C2=A0from another node)<br>=C2=A0* fix an is=
sue establishing a connection when the multipath feature is<br>=C2=A0 =C2=
=A0used to connect to a stacked resource without a dedicated service IP<br>=
=C2=A0* fix sometimes a peer-disk state to another resync-target staying Ou=
tdated<br>=C2=A0 =C2=A0after two resyncs from the same sync source node fin=
ish<br>=C2=A0* fix transition to paused-resync-state when an other connecti=
on continues<br>=C2=A0 =C2=A0its resync operation<br>=C2=A0* fix an (unlike=
ly) deadlock while establishing a connection<br>=C2=A0* deactivate the kref=
_debug code, it has performance implications<br>=C2=A0* Introduce the &quot=
;disconnected&quot; hander; it receives the last connection<br>=C2=A0 =C2=
=A0state in the environment variable DRBD_CSTATE<br><br><br><a href=3D"http=
s://www.linbit.com/downloads/drbd/9.0/drbd-9.0.25-1.tar.gz">https://www.lin=
bit.com/downloads/drbd/9.0/drbd-9.0.25-1.tar.gz</a><br><a href=3D"https://g=
ithub.com/LINBIT/drbd/commit/1053e9f98123e8293e9f2897af654b40cde0d24c">http=
s://github.com/LINBIT/drbd/commit/1053e9f98123e8293e9f2897af654b40cde0d24c<=
/a><br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd=
9-stack">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</=
a><div><br></div><div>cheers,</div><div>=C2=A0Phil</div></div>

--000000000000134b8c05afebb162--
