Return-Path: <philipp.reisner@linbit.com>
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id C607C4203D7
	for <drbd-announce@lists.linbit.com>;
	Tue,  2 Jun 2020 21:33:50 +0200 (CEST)
Received: by mail-io1-f43.google.com with SMTP id d7so12132133ioq.5
	for <drbd-announce@lists.linbit.com>;
	Tue, 02 Jun 2020 12:33:50 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Tue, 2 Jun 2020 21:33:38 +0200
Message-ID: <CADGDV=Vo0aTNwKH-NTKs7u=_sb0rj2oVZ6rkQt5EUi3=uaVAFg@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000a149bc05a71efd7d"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.23-0rc3
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

--000000000000a149bc05a71efd7d
Content-Type: text/plain; charset="UTF-8"

Hi,

The week after rc2 brought more reports and last-minute than expected. I
better give it another week to make sure it is of good quality when I
declare it as
final.

Here the changes relative to rc2:
9.0.23-0rc3 (api:genl2/proto:86-116/transport:14)
--------
 * fix a deadlock (regression introduced in 9.0.22) that can happen when
   new current UUID is generated while a connection gets established
 * Do not create a new data generation if the node has
   'allow-remote-read = no' set, is primary, and the local disk fails
   (because it has no access to good data anymore)
 * fixup for the continuation of initial resync work (introduced in rc2)

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.23-0rc3.tar.gz

best regards.
 Phil

--000000000000a149bc05a71efd7d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div><br></div><div>The week after rc2 brought more=
 reports and last-minute than expected. I better give it another week to ma=
ke sure it is of good quality when I declare it as<br></div><div>final.</di=
v><div><br></div><div>Here the changes relative to rc2:</div><div>9.0.23-0r=
c3 (api:genl2/proto:86-116/transport:14)<br>--------<br>=C2=A0* fix a deadl=
ock (regression introduced in 9.0.22) that can happen when<br>=C2=A0 =C2=A0=
new current UUID is generated while a connection gets established<br>=C2=A0=
* Do not create a new data generation if the node has<br>=C2=A0 =C2=A0&#39;=
allow-remote-read =3D no&#39; set, is primary, and the local disk fails<br>=
=C2=A0 =C2=A0(because it has no access to good data anymore)<br>=C2=A0* fix=
up for the continuation of initial resync work (introduced in rc2)<br></div=
><div><br></div><div><a href=3D"https://www.linbit.com/downloads/drbd/9.0/d=
rbd-9.0.23-0rc3.tar.gz">https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.=
23-0rc3.tar.gz</a><br></div><div><br></div><div>best regards.</div><div>=C2=
=A0Phil</div></div>

--000000000000a149bc05a71efd7d--
