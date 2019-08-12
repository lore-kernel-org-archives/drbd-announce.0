Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 9C88B101AC41
	for <drbd-announce@lists.linbit.com>;
	Mon, 12 Aug 2019 09:51:37 +0200 (CEST)
Received: by mail-wr1-f46.google.com with SMTP id r1so4617926wrl.7
	for <drbd-announce@lists.linbit.com>;
	Mon, 12 Aug 2019 00:51:37 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 12 Aug 2019 09:51:25 +0200
Message-ID: <CAHmn2DO3JMkD3Bvrpr83s6EDYeiu2smE8Qun+3nLXPs7yeHNMA@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000001d7f50058fe6cba7"
Subject: [DRBD-announce] linstor-client 1.0.1 release
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

--0000000000001d7f50058fe6cba7
Content-Type: text/plain; charset="UTF-8"

Hi!

There was a small bug in 1.0.0 introduced, that broke the utf8 output
if the locale wasn't specified (usually in docker containers).
This small update fixes this issue.

linstor-client 1.0.1
--------------------
 * Fixed table exception with unspecified locales

https://www.linbit.com/downloads/linstor/linstor-client-1.0.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--0000000000001d7f50058fe6cba7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>There was a small bug in 1.0.0 intr=
oduced, that broke the utf8 output</div><div>if the locale wasn&#39;t speci=
fied (usually in docker containers).</div><div>This small update fixes this=
 issue.</div><div><font face=3D"monospace"><br></font></div><div><font face=
=3D"monospace" size=3D"1">linstor-client 1.0.1<br>--------------------<br>=
=C2=A0* Fixed table exception with unspecified locales</font><br></div><div=
><font face=3D"monospace"><br></font></div><div><div><div><div><font size=
=3D"1"><font face=3D"monospace, monospace"><a href=3D"https://www.linbit.co=
m/downloads/linstor/linstor-client-1.0.1.tar.gz">https://www.linbit.com/dow=
nloads/linstor/linstor-client-1.0.1.tar.gz</a></font></font></div></div></d=
iv><div><br></div><div><br></div><div><div>Linstor PPA:<br><a href=3D"https=
://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"norefer=
rer" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit=
-drbd9-stack</a><br></div><div><br></div><div>Best regards,</div><div>Rene<=
/div></div></div></div>

--0000000000001d7f50058fe6cba7--
