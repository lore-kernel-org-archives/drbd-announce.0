Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B62824202B5
	for <drbd-announce@lists.linbit.com>;
	Thu, 14 May 2020 16:54:55 +0200 (CEST)
Received: by mail-wr1-f44.google.com with SMTP id l11so4582527wru.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 14 May 2020 07:54:55 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 14 May 2020 16:54:43 +0200
Message-ID: <CAHmn2DO6-O0SeyuV4otnK+3+D_xfYdqgFcN=-D6sCcN6giU7Pg@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000002b56be05a59ce127"
Subject: [DRBD-announce] linstor-server 1.7.1 release
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

--0000000000002b56be05a59ce127
Content-Type: text/plain; charset="UTF-8"

Hi!

Bug-fix release for a first round of reported bugs we could fix this week.
A feature that was actually ready with 1.7.0, but had a little bug so we
didn't
announce it yet, will be available now in this release:
Linstor can now be configured to automatically enable drbd proxy.
For more details see chapter 2.11.1 in the Linstor User's Guide.

linstor-server 1.7.1
--------------------
 * Make volume-definition create synchronous
 * Fixed illegal characters for autoplacer weights
 * Fixed bug on startup when fetching thin storage pools
 * Fixed auto enabling DRBD-proxy

https://www.linbit.com/downloads/linstor/linstor-server-1.7.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000002b56be05a59ce127
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Bug-fix release for a first round o=
f reported bugs we could fix this week.</div><div>A feature that was actual=
ly ready with 1.7.0, but had a little=C2=A0bug so we didn&#39;t</div><div>a=
nnounce=C2=A0it yet, will be available=C2=A0now in this release:</div><div>=
Linstor can now be configured to automatically enable drbd proxy.<br>For mo=
re details see chapter 2.11.1 in the Linstor User&#39;s Guide.<br></div><di=
v><div><font face=3D"monospace"><br></font></div><div><font face=3D"monospa=
ce">linstor-server 1.7.1<br>--------------------<br>=C2=A0* Make volume-def=
inition create synchronous<br>=C2=A0* Fixed illegal characters for autoplac=
er weights<br>=C2=A0* Fixed bug on startup when fetching thin storage pools=
<br>=C2=A0* Fixed auto enabling DRBD-proxy</font><br></div><div><div><font =
face=3D"monospace" size=3D"1"><br></font></div><div><font size=3D"1" face=
=3D"monospace"><a href=3D"https://www.linbit.com/downloads/linstor/linstor-=
server-1.7.1.tar.gz">https://www.linbit.com/downloads/linstor/linstor-serve=
r-1.7.1.tar.gz</a></font></div></div><div><br></div><div><div>Linstor PPA:<=
br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-st=
ack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+ar=
chive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,<=
/div><div>Rene</div></div></div>

--0000000000002b56be05a59ce127--
