Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
	[209.85.208.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 6DA2B42096A
	for <drbd-announce@lists.linbit.com>;
	Thu,  9 Dec 2021 18:42:37 +0100 (CET)
Received: by mail-ed1-f53.google.com with SMTP id g14so21299010edb.8
	for <drbd-announce@lists.linbit.com>;
	Thu, 09 Dec 2021 09:42:37 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 9 Dec 2021 18:39:36 +0100
Message-ID: <CAHmn2DMjA9foMASk4qnGH1TwmxEX9GT+Pfr=hNOXf4F=s-3BGw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000b8276405d2ba17e5"
Subject: [DRBD-announce] linstor-server release 1.17.0
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

--000000000000b8276405d2ba17e5
Content-Type: text/plain; charset="UTF-8"

Hi!

This is actually more of a bugfix release with just a minor feature.
And that feature is a new API to on purpose evacuate a node in linstor.

linstor-server 1.17.0
---------------------
 * Nodes can now be evacuated on purpose
 * Browsing the controller port, will now redirect to the /ui if installed
 * Check for all DRBD to be updated before allow resize
 * Do not send crypt key before node authentication
 * Autoplace do not count evicted resources
 * Fixed CRD volume definition loading errors
 * Fixed node reconnector deadlock
 * API-Version 1.12.0

https://pkg.linbit.com//downloads/linstor/linstor-server-1.17.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000b8276405d2ba17e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>This is actually more of=
 a bugfix release with just a minor feature.</div><div>And that feature is =
a new API to on purpose evacuate a node in linstor.</div><div><br></div><di=
v><font face=3D"monospace">linstor-server 1.17.0<br>---------------------<b=
r>=C2=A0* Nodes can now be evacuated on purpose<br>=C2=A0* Browsing the con=
troller port, will now redirect to the /ui if installed<br>=C2=A0* Check fo=
r all DRBD to be updated before allow resize<br>=C2=A0* Do not send crypt k=
ey before node authentication<br>=C2=A0* Autoplace do not count evicted res=
ources<br>=C2=A0* Fixed CRD volume definition loading errors<br>=C2=A0* Fix=
ed node reconnector deadlock<br>=C2=A0* API-Version 1.12.0</font><br></div>=
<div><br></div><div><a href=3D"https://pkg.linbit.com//downloads/linstor/li=
nstor-server-1.17.0.tar.gz" target=3D"_blank">https://pkg.linbit.com//downl=
oads/linstor/linstor-server-1.17.0.tar.gz</a><br></div><div><br></div><div>=
Linstor PPA:<br></div><div><div><div><div><a href=3D"https://launchpad.net/=
~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_b=
lank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><=
/div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></div></div>=
</div>

--000000000000b8276405d2ba17e5--
