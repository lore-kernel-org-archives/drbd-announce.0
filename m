Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 419EE42011A
	for <drbd-announce@lists.linbit.com>;
	Thu, 16 Jan 2020 10:54:57 +0100 (CET)
Received: by mail-wm1-f45.google.com with SMTP id p9so3037786wmc.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 16 Jan 2020 01:54:57 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 16 Jan 2020 10:53:46 +0100
Message-ID: <CAHmn2DN=R0SLKotW4j7B7c2x3Vaw9wXOMGX=qpbVSokBkA4cgA@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000beeee2059c3ecd55"
Subject: [DRBD-announce] linstor-server 1.4.1 release
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

--000000000000beeee2059c3ecd55
Content-Type: text/plain; charset="UTF-8"

Hi!

This is a bugfix release for users having problems upgrading from an older
version,
we should have fixed most migration issues.

linstor-server 1.4.1
--------------------
 * Fixed incorrect column name in migration
 * Fixed migration of tcpPort and minorNr of snapshots
 * Fixed incorrect Pair<> compareTo method
 * Fixed FILE provider isSnapshotSupported
 * Fixed setActive bool in node-netinterface API handler

https://www.linbit.com/downloads/linstor/linstor-server-1.4.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000beeee2059c3ecd55
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>This is a bugfix release for users =
having problems upgrading from an older version,</div><div>we should have f=
ixed most migration issues.</div><div><br></div><div><span style=3D"font-fa=
mily:monospace,monospace;font-size:x-small">linstor-server 1.4.1</span></di=
v><div><div><div><font face=3D"monospace, monospace" size=3D"1">-----------=
---------</font></div><div><span style=3D"font-family:monospace,monospace;f=
ont-size:x-small">=C2=A0* Fixed incorrect column name in migration</span></=
div></div><div><span style=3D"font-family:monospace,monospace;font-size:x-s=
mall">=C2=A0* Fixed migration of tcpPort and minorNr of snapshots</span></d=
iv><div><span style=3D"font-family:monospace,monospace;font-size:x-small">=
=C2=A0* Fixed incorrect Pair&lt;&gt; compareTo method</span></div><div><spa=
n style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Fixed=
 FILE provider isSnapshotSupported</span></div><div><span style=3D"font-fam=
ily:monospace,monospace;font-size:x-small">=C2=A0* Fixed setActive bool in =
node-netinterface API handler</span></div><div><font face=3D"monospace" siz=
e=3D"1"><br></font></div><div><font size=3D"1" face=3D"monospace"><a href=
=3D"https://www.linbit.com/downloads/linstor/linstor-server-1.4.1.tar.gz">h=
ttps://www.linbit.com/downloads/linstor/linstor-server-1.4.1.tar.gz</a></fo=
nt></div></div><div><br></div><div><div>Linstor PPA:<br><a href=3D"https://=
launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer=
" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-dr=
bd9-stack</a></div></div><div><br></div><div>Cheers,</div><div>Rene</div></=
div>

--000000000000beeee2059c3ecd55--
