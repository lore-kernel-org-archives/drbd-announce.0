Return-Path: <philipp.reisner@linbit.com>
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com
	[209.85.219.172])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 66D394201DD
	for <drbd-announce@lists.linbit.com>;
	Mon,  7 Mar 2022 16:12:51 +0100 (CET)
Received: by mail-yb1-f172.google.com with SMTP id g1so31599243ybe.4
	for <drbd-announce@lists.linbit.com>;
	Mon, 07 Mar 2022 07:12:51 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 7 Mar 2022 16:12:39 +0100
Message-ID: <CADGDV=V3KnZ04o8QanyBA6Ax6wXct4ZR4vs1_i8u0turbYJPvw@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000038fa1805d9a24c94"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.7-rc.1
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

--00000000000038fa1805d9a24c94
Content-Type: text/plain; charset="UTF-8"

Hello,

I am starting the drbd-9.1.7 release cycle early. This time, the most
relevant change is fixing IO request unfreezing on diskless nodes. It
turned out this was broken, now there is a test that examines all these
cases. A number of bugs got fixed in this area.
These are important fixes for users that have "on-no-quorum suspend-io" in
their configs.

At the moment, this is a release candidate. Please give it a try.

9.1.7-rc.1 (api:genl2/proto:110-121/transport:17)
--------
 * fix for a "forgotten" resync after IO was suspended due to lack of quorum
 * refactored IO suspend/resume fixing severl bugs; the worst one could
   lead to premature request completion
 * disable discards on diskless if diskful peers do not support it
 * make demote to secondary a two-phase state transition; that guarantees
that
   after demotion, DRBD will not write to any meta-data in the cluster
 * enable "--force primary" in for no-quorum situations

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.7-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/0065e5810a5458381ccbb99052027abc973611ae

--00000000000038fa1805d9a24c94
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>I am starting the drbd-9.1.7 release cycle e=
arly. This time, the most relevant change is fixing IO request unfreezing o=
n diskless nodes. It turned out this was broken, now there is a test that e=
xamines all these cases. A number of bugs got fixed in this area.<div>These=
 are important fixes for users that have &quot;on-no-quorum suspend-io&quot=
; in their configs.<br><br>At the moment, this is a release candidate. Plea=
se give it a try.<br><br>9.1.7-rc.1 (api:genl2/proto:110-121/transport:17)<=
br>--------<br>=C2=A0* fix for a &quot;forgotten&quot; resync after IO was =
suspended due to lack of quorum<br>=C2=A0* refactored IO suspend/resume fix=
ing severl bugs; the worst one could<br>=C2=A0 =C2=A0lead to premature requ=
est completion<br>=C2=A0* disable discards on diskless if diskful peers do =
not support it<br>=C2=A0* make demote to secondary a two-phase state transi=
tion; that guarantees that<br>=C2=A0 =C2=A0after demotion, DRBD will not wr=
ite to any meta-data in the cluster<br>=C2=A0* enable &quot;--force primary=
&quot; in for no-quorum situations<br><br><a href=3D"https://pkg.linbit.com=
//downloads/drbd/9/drbd-9.1.7-rc.1.tar.gz">https://pkg.linbit.com//download=
s/drbd/9/drbd-9.1.7-rc.1.tar.gz</a><br><a href=3D"https://github.com/LINBIT=
/drbd/commit/0065e5810a5458381ccbb99052027abc973611ae">https://github.com/L=
INBIT/drbd/commit/0065e5810a5458381ccbb99052027abc973611ae</a><br><br><br><=
/div></div>

--00000000000038fa1805d9a24c94--
