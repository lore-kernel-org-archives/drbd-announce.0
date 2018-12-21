Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 24719103B4C1
	for <drbd-announce@lists.linbit.com>;
	Fri, 21 Dec 2018 13:59:35 +0100 (CET)
Received: by mail-wm1-f48.google.com with SMTP id f188so5615432wmf.5
	for <drbd-announce@lists.linbit.com>;
	Fri, 21 Dec 2018 04:59:35 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Fri, 21 Dec 2018 13:59:24 +0100
Message-ID: <CAHmn2DMh41J-7kue-9QLhhm_zDjVbzs6E149kVFDGsZqPysg4g@mail.gmail.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000a89cf9057d87d15d"
Subject: [DRBD-announce] Linstor-server v0.7.5
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

--000000000000a89cf9057d87d15d
Content-Type: text/plain; charset="UTF-8"

Hi!

This is just a minor bug fix release, we found a nasty file descriptor
resource leak linked to the "error-report list" command that could lead to
socket accept errors and the new migrate disk feature didn't work in all
situations.

linstor-server 0.7.5
--------------------
 * Fixed folder descriptor leak
 * Fix migrate disk command in certain circumstances
 * Fix node lost if node had snapshots

http://www.linbit.com/downloads/linstor/linstor-server-0.7.5.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000a89cf9057d87d15d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi!<div><br></div><div>This is just a min=
or bug fix release, we found a nasty file descriptor resource leak linked t=
o the &quot;error-report list&quot; command that could lead to socket accep=
t errors and the new migrate disk feature didn&#39;t work in all situations=
.</div><div><br></div><div><div><span style=3D"font-family:monospace,monosp=
ace;font-size:x-small">linstor-server 0.7.5</span><br></div><div><div><font=
 face=3D"monospace, monospace" size=3D"1">--------------------</font></div>=
<div><font size=3D"1"><font face=3D"monospace, monospace">=C2=A0* Fixed fol=
der descriptor leak</font></font></div><div><font size=3D"1"><font face=3D"=
monospace, monospace">=C2=A0* Fix migrate disk command in certain=C2=A0</fo=
nt></font><font face=3D"monospace, monospace" size=3D"1">circumstances</fon=
t></div><div><font size=3D"1"><font face=3D"monospace, monospace">=C2=A0* F=
ix node lost if node had snapshots</font></font></div></div></div><div><br>=
</div><div><a href=3D"http://www.linbit.com/downloads/linstor/linstor-serve=
r-0.7.5.tar.gz"><font size=3D"1">http://www.linbit.com/downloads/linstor/li=
nstor-server-0.7.5.tar.gz</font></a><br></div><div><br></div><div><div>Lins=
tor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit=
-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~l=
inbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><div><br></div><div>B=
est regards,</div><div>Rene</div></div></div></div>

--000000000000a89cf9057d87d15d--
