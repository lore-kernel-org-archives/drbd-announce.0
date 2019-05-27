Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 755D81011C03
	for <drbd-announce@lists.linbit.com>;
	Mon, 27 May 2019 16:17:39 +0200 (CEST)
Received: by mail-ot1-f42.google.com with SMTP id r7so14920148otn.6
	for <drbd-announce@lists.linbit.com>;
	Mon, 27 May 2019 07:17:38 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 27 May 2019 16:10:47 +0200
Message-ID: <CAHmn2DNhUMsH5eqFiCPM6vudy6k380mfbRZLTA=RSARHyQzEWg@mail.gmail.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000062d2c0589df1eb6"
Subject: [DRBD-announce] Linstor-server v0.9.10, linstor-client 0.9.5
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

--000000000000062d2c0589df1eb6
Content-Type: text/plain; charset="UTF-8"

Hello!

This is a bug fix release that addresses 2 main issues.

   1. Proxmox plugin is broken because of a bug in the python-linstor API
   2. Linstor doesn't work on distributions if the lvm-utils do not support
   the --reportformat option

linstor-server 0.9.10
---------------------
 * Fixed: lvm not working if the --reportformat option is missing
 * Fixed: Possible DRBD split-brain if a resources is readded on a node
 * Fixed: HTTP server tries to start on ipv4 if ipv6 bind failed

https://www.linbit.com/downloads/linstor/linstor-server-0.9.10.tar.gz

linstor-client/python-linstor 0.9.5
-----------------------------------
 * Fixed: combined query filters are incorrectly concatenated
 * Fixed: keep-alive (interactive) mode
 * High-Level API: Resource class now works with external names

https://www.linbit.com/downloads/linstor/python-linstor-0.9.5.tar.gz
https://www.linbit.com/downloads/linstor/linstor-client-0.9.5.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000062d2c0589df1eb6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello!<div><br></div><div>This is a bug fix release that a=
ddresses 2 main issues.</div><div><ol><li>Proxmox plugin is broken because =
of a bug in the python-linstor API</li><li>Linstor doesn&#39;t work on dist=
ributions if the lvm-utils do not support the --reportformat option</li></o=
l><div><div><div><span style=3D"font-family:monospace,monospace;font-size:x=
-small">linstor-server 0.9.10</span></div><div><div><div><font face=3D"mono=
space, monospace" size=3D"1">---------------------</font></div><div><span s=
tyle=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Fixed: l=
vm not working if the --reportformat option is missing</span></div><div><sp=
an style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Fixe=
d: Possible DRBD split-brain if a resources is readded on a node</span></di=
v><div><span style=3D"font-family:monospace,monospace;font-size:x-small">=
=C2=A0* Fixed: HTTP server tries to start on ipv4 if ipv6 bind failed</span=
></div><div><br></div></div><div><font size=3D"1"><a href=3D"https://www.li=
nbit.com/downloads/linstor/linstor-server-0.9.10.tar.gz">https://www.linbit=
.com/downloads/linstor/linstor-server-0.9.10.tar.gz</a></font></div></div><=
div><br></div><div><div><div><font size=3D"1"><span style=3D"font-family:mo=
nospace,monospace">linstor-client/python-linstor 0.9.5</span></font></div><=
div><font size=3D"1"><span style=3D"font-family:monospace,monospace">------=
-----------------------------</span></font></div><div><font face=3D"monospa=
ce, monospace" size=3D"1">=C2=A0* Fixed: combined query filters are incorre=
ctly=C2=A0concatenated</font></div></div><div><span style=3D"font-family:mo=
nospace,monospace;font-size:x-small">=C2=A0* Fixed: keep-alive (interactive=
) mode</span></div><div><span style=3D"font-family:monospace,monospace;font=
-size:x-small">=C2=A0* High-Level API: Resource class now works with extern=
al names</span></div><div><br></div><div><font size=3D"1"><font face=3D"mon=
ospace, monospace"><a href=3D"https://www.linbit.com/downloads/linstor/pyth=
on-linstor-0.9.5.tar.gz">https://www.linbit.com/downloads/linstor/python-li=
nstor-0.9.5.tar.gz</a></font><br></font></div><div><font size=3D"1"><font f=
ace=3D"monospace, monospace"><a href=3D"https://www.linbit.com/downloads/li=
nstor/linstor-client-0.9.5.tar.gz">https://www.linbit.com/downloads/linstor=
/linstor-client-0.9.5.tar.gz</a></font></font></div></div></div><div><div><=
br class=3D"gmail-m_5788740772863730142gmail-Apple-interchange-newline">Lin=
stor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbi=
t-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~=
linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><div><br></div><div>=
Best regards,</div><div>Rene</div></div></div></div></div>

--000000000000062d2c0589df1eb6--
