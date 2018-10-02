Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 88F611012864
	for <drbd-announce@lists.linbit.com>;
	Tue,  2 Oct 2018 11:31:57 +0200 (CEST)
Received: by mail-wr1-f42.google.com with SMTP id u12-v6so1366003wrr.4
	for <drbd-announce@lists.linbit.com>;
	Tue, 02 Oct 2018 02:31:57 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 2 Oct 2018 11:31:45 +0200
Message-ID: <CAHmn2DP=1coFezorZenuo=0emeu3ax2vFVPG8gO0MzHsMATc6A@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000c4412905773b9702"
Subject: [DRBD-announce] Linstor-server v0.6.5, Linstor-client 0.6.2 release
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

--000000000000c4412905773b9702
Content-Type: text/plain; charset="UTF-8"

Hi Everyone!

This mostly a bugfix release, one change that needs mentioning is that
all delete commands will now wait until the resource is actually deleted on
the satellites.


linstor-server 0.6.5
--------------------
 * Fix: Thin drivers often didn't correctly skip the initial sync
 * Fix: ZFSThin is now correctly marked as thin driver
 * Fix: Added Controller node could produce null pointer exceptions
 * Fix: ConcurrentModificationException if Satellites went offline
 * Fix: Satellite and Controller have different command line parsers now
 * Fix: Resource that run on a broken storage pool can now be deleted
 * Fix: If a Satellites has a broken storage pool it won't fail anymore
reporting other storage pools

<http://www.linbit.com/downloads/linstor/linstor-server-0.6.0.tar.gz>
http://www.linbit.com/downloads/linstor/linstor-server-0.6.5.tar.gz

linstor-client/python-linstor 0.6.2
-----------------------------------
 * Delete commands are now all synchronous by default
 * Fix: controller set-properties didn't use --aux option
 * List commands will now show any additional api reply messages
 * Fix: linstor error-report show if terminal doesn't support utf-8

http://www.linbit.com/downloads/linstor/python-linstor-0.6.2.tar.gz
http://www.linbit.com/downloads/linstor/linstor-client-0.6.2.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000c4412905773b9702
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Ever=
yone!<div><br></div><div>This mostly a bugfix release, one change that need=
s mentioning is that</div><div>all delete commands will now wait until the =
resource is actually deleted on the satellites.</div><div><br></div><div><b=
r></div><div><font face=3D"monospace, monospace" size=3D"1">linstor-server =
0.6.5<br>--------------------</font></div><div><font size=3D"1"><font face=
=3D"monospace, monospace">=C2=A0* Fix: Thin drivers often didn&#39;t correc=
tly skip the initial sync<br></font><span style=3D"font-family:monospace,mo=
nospace">=C2=A0* Fix: ZFSThin is now correctly marked as thin driver</span>=
<font face=3D"monospace, monospace"><br></font></font></div><div><font face=
=3D"monospace, monospace" size=3D"1">=C2=A0* Fix: Added Controller node cou=
ld produce null pointer exceptions</font></div><div><font size=3D"1"><span =
style=3D"font-family:monospace,monospace">=C2=A0* Fix: ConcurrentModificati=
onException if Satellites went offline</span><br></font></div><div><font fa=
ce=3D"monospace, monospace" size=3D"1">=C2=A0* Fix: Satellite and Controlle=
r have different command line parsers now</font></div><div><font face=3D"mo=
nospace, monospace" size=3D"1">=C2=A0* Fix: Resource that run on a broken s=
torage pool can now be deleted</font></div><div><font face=3D"monospace, mo=
nospace"><font size=3D"1">=C2=A0* Fix: If a Satellites has a broken storage=
 pool it won&#39;t fail anymore reporting other storage pools</font></font>=
</div><div><a href=3D"http://www.linbit.com/downloads/linstor/linstor-serve=
r-0.6.0.tar.gz" target=3D"_blank"><br></a><a href=3D"http://www.linbit.com/=
downloads/linstor/linstor-server-0.6.5.tar.gz">http://www.linbit.com/downlo=
ads/linstor/linstor-server-0.6.5.tar.gz</a><br><br><font face=3D"monospace,=
 monospace" size=3D"1">linstor-client/python-linstor 0.6.2<br>-------------=
----------------------<br>=C2=A0* Delete commands are now all synchronous b=
y default<br>=C2=A0* Fix: controller set-properties didn&#39;t use --aux op=
tion<br>=C2=A0* List commands will now show any additional api reply messag=
es<br></font></div><div><font face=3D"monospace, monospace" size=3D"1">=C2=
=A0* Fix: linstor error-report show if terminal doesn&#39;t support utf-8</=
font></div><div><font face=3D"monospace, monospace" size=3D"1"><br></font><=
/div><div><font face=3D"arial, helvetica, sans-serif"><a href=3D"http://www=
.linbit.com/downloads/linstor/python-linstor-0.6.2.tar.gz" style=3D"">http:=
//www.linbit.com/downloads/linstor/python-linstor-0.6.2.tar.gz</a><br></fon=
t></div><div><font face=3D"arial, helvetica, sans-serif"><a href=3D"http://=
www.linbit.com/downloads/linstor/linstor-client-0.6.2.tar.gz">http://www.li=
nbit.com/downloads/linstor/linstor-client-0.6.2.tar.gz</a></font><br></div>=
<div><br></div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbi=
t/+archive/ubuntu/linbit-drbd9-stack" target=3D"_blank">https://launchpad.n=
et/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><div><br></div><=
div>Best regards,</div><div>Rene</div><div><br></div><div><br></div></div><=
/div></div></div>

--000000000000c4412905773b9702--
