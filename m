Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D18174203D4
	for <drbd-announce@lists.linbit.com>;
	Tue, 10 Sep 2019 17:08:15 +0200 (CEST)
Received: by mail-wr1-f43.google.com with SMTP id a11so11242128wrx.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 10 Sep 2019 08:08:15 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 10 Sep 2019 17:07:59 +0200
Message-ID: <CAHmn2DP80J=azuw341gnnXvZm3TKBwO9v+aCy+LcTGkr1JcSKA@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000c097310592344599"
Subject: [DRBD-announce] linstor-server 1.1.1 release
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

--000000000000c097310592344599
Content-Type: text/plain; charset="UTF-8"

Hi!

Mainly a bugfix release, for some minor reported bugs from our customers.

linstor-server 1.1.1
--------------------
 * Node reconnect now also reconnect failed nodes
 * Fixed dmstats command calling
 * Reduced classpath for better process view
 * Added exception handling for device handler (killing satellite in some
cases)
 * Correctly cleanup(remove from database) on retry-task operations
 * NVME fixed ArrayIndexOutOfBoundsException if there are external NVME
resources
 * Added user name to log entries
 * Fixed incomplete migration for external names

https://www.linbit.com/downloads/linstor/linstor-server-1.1.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000c097310592344599
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Mainly a bugfix release, for some m=
inor reported bugs from our customers.</div><div><div><br></div><div><div><=
span style=3D"font-family:monospace,monospace;font-size:x-small">linstor-se=
rver 1.1.1</span></div><div><div><div><font face=3D"monospace, monospace" s=
ize=3D"1">--------------------</font></div><div><span style=3D"font-family:=
monospace,monospace;font-size:x-small">=C2=A0* Node reconnect now also reco=
nnect failed nodes</span></div><div><font face=3D"monospace, monospace" siz=
e=3D"1">=C2=A0* Fixed dmstats command calling</font></div><div><span style=
=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Reduced clas=
spath for better process view</span><br></div><div><span style=3D"font-fami=
ly:monospace,monospace;font-size:x-small">=C2=A0* Added exception handling =
for device handler (killing satellite in some cases)</span></div><div><span=
 style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Correc=
tly cleanup(remove from database) on retry-task operations</span></div><div=
><span style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* =
NVME fixed ArrayIndexOutOfBoundsException if there are external NVME resour=
ces</span></div><div><span style=3D"font-family:monospace,monospace;font-si=
ze:x-small">=C2=A0* Added user name to log entries</span></div><div><span s=
tyle=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Fixed in=
complete migration for external names</span></div><div><br></div></div><div=
><font size=3D"1" face=3D"monospace"><a href=3D"https://www.linbit.com/down=
loads/linstor/linstor-server-1.1.1.tar.gz" target=3D"_blank">https://www.li=
nbit.com/downloads/linstor/linstor-server-1.1.1.tar.gz</a></font></div></di=
v></div><div><br></div><div><div>Linstor PPA:<br><a href=3D"https://launchp=
ad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" targe=
t=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-sta=
ck</a><br></div><div><br></div><div>Best regards,</div><div>Rene</div></div=
></div></div>

--000000000000c097310592344599--
