Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 8E16142064D
	for <drbd-announce@lists.linbit.com>;
	Mon, 21 Dec 2020 14:22:24 +0100 (CET)
Received: by mail-wr1-f44.google.com with SMTP id r3so11069356wrt.2
	for <drbd-announce@lists.linbit.com>;
	Mon, 21 Dec 2020 05:22:24 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 21 Dec 2020 14:22:13 +0100
Message-ID: <CAHmn2DPPAqEXCvNoA_tQ7jLz-ZqWHRtV4oz0k0xuRxG0zcM4jw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000041ad5705b6f95913"
Subject: [DRBD-announce] python-linstor, linstor-client 1.6.0 release
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

--00000000000041ad5705b6f95913
Content-Type: text/plain; charset="UTF-8"

Hi,

This release brings the client and python-linstor to linstor-server
REST-API 1.6.0 compatibility.

python-linstor 1.6.0
--------------------
 * Added node_restore() method
 * Added addition_place_count params for auto_place
 * Node response object now has flags()

https://www.linbit.com/downloads/linstor/python-linstor-1.6.0.tar.gz

linstor-client v1.6.0
---------------------
 * node list now shows DELETING and EVICTED nodes
 * Added diskless placement and additional placement count for auto-place
 * Added node restore command for evicted nodes
 * depend on python-linstor v1.6.0

https://www.linbit.com/downloads/linstor/linstor-client-1.6.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--00000000000041ad5705b6f95913
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div><br></div><div>This release brings the client =
and python-linstor to linstor-server REST-API 1.6.0 compatibility.</div><di=
v><br></div><div><div><font face=3D"monospace">python-linstor 1.6.0<br>----=
----------------<br>=C2=A0* Added node_restore() method<br>=C2=A0* Added ad=
dition_place_count params for auto_place<br>=C2=A0* Node response object no=
w has flags()</font><br></div><div><div><div><div><br></div><div><font size=
=3D"1"><font face=3D"monospace, monospace"><a href=3D"https://www.linbit.co=
m/downloads/linstor/python-linstor-1.6.0.tar.gz">https://www.linbit.com/dow=
nloads/linstor/python-linstor-1.6.0.tar.gz</a></font></font></div></div><di=
v><font size=3D"1"><br></font></div><div><div><font face=3D"monospace">lins=
tor-client v1.6.0<br>---------------------<br>=C2=A0* node list now shows D=
ELETING and EVICTED nodes<br>=C2=A0* Added diskless placement and additiona=
l placement count for auto-place<br>=C2=A0* Added node restore command for =
evicted nodes<br>=C2=A0* depend on python-linstor v1.6.0</font><br></div><d=
iv><br></div><div><font size=3D"1"><font face=3D"monospace, monospace"><a h=
ref=3D"https://www.linbit.com/downloads/linstor/linstor-client-1.6.0.tar.gz=
">https://www.linbit.com/downloads/linstor/linstor-client-1.6.0.tar.gz</a><=
/font></font></div></div></div><div><br></div><div>Linstor PPA:<br></div><d=
iv><div><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drb=
d9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbi=
t/+archive/ubuntu/linbit-drbd9-stack</a><br></div><div><br></div><div>Best =
regards,</div><div>Rene</div></div></div></div></div>

--00000000000041ad5705b6f95913--
