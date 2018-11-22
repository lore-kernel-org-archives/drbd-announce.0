Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id DDD68101AC67
	for <drbd-announce@lists.linbit.com>;
	Thu, 22 Nov 2018 16:07:26 +0100 (CET)
Received: by mail-wr1-f47.google.com with SMTP id x10so9575947wrs.8
	for <drbd-announce@lists.linbit.com>;
	Thu, 22 Nov 2018 07:07:26 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 22 Nov 2018 16:07:16 +0100
Message-ID: <CAHmn2DP=4h=O5ukTP-Y735LxO9msGB0n-w1sg-P_pPOkZUSqxg@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000790ba8057b423973"
Subject: [DRBD-announce] Linstor-server 0.7.3/linstor-client 0.7.2 release
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

--000000000000790ba8057b423973
Content-Type: text/plain; charset="UTF-8"

Hi Everyone!

We finished another linstor release, with this comes a new snapshot
rollback command and usual fixes.
The snapshot rollback command is used to do in-place rollbacks to the last
snapshot taken.

As always the release highlights:

linstor-server 0.7.3
--------------------
 * Added snapshot rollback API
 * Show SyncTarget percentage in volume state
 * Allow resource creation if the satellite isn't connected
 * Fixed storage pool size check in case of a drbdmanage migration
 * Fixed node reconnect creating error reports
 * Fixed a missing write lock on storage pool definition map
 * Multiple fixes to snapshots
 * Database compatibility fixes to ensure linstor runs on all kind of SQL
databases

http://www.linbit.com/downloads/linstor/linstor-server-0.7.3.tar.gz

linstor-client/python-linstor 0.7.2
-----------------------------------
 * Added snapshot rollback command
 * All object name lookups should be case insensitive now
 * Added warnings for list-properties command, if their is no object with
that name

http://www.linbit.com/downloads/linstor/python-linstor-0.7.2.tar.gz
http://www.linbit.com/downloads/linstor/linstor-client-0.7.2.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000790ba8057b423973
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div d=
ir=3D"ltr">Hi Everyone!<div><br></div><div>We finished another linstor rele=
ase, with this comes a new snapshot rollback command and usual fixes.</div>=
<div>The snapshot rollback command is used to do in-place rollbacks to the =
last snapshot taken.</div><div><br></div><div>As always the release highlig=
hts:</div><div><br></div><div><div><span style=3D"font-family:monospace,mon=
ospace;font-size:x-small">linstor-server 0.7.3</span><br></div><div><div><f=
ont face=3D"monospace, monospace" size=3D"1">--------------------</font></d=
iv><div><font size=3D"1"><font face=3D"monospace, monospace">=C2=A0* Added =
snapshot rollback API</font></font></div><div><font size=3D"1"><font face=
=3D"monospace, monospace">=C2=A0* Show SyncTarget percentage in volume stat=
e</font></font></div><div><font size=3D"1"><font face=3D"monospace, monospa=
ce">=C2=A0* Allow resource creation if the satellite isn&#39;t connected</f=
ont></font></div><div><font size=3D"1"><font face=3D"monospace, monospace">=
=C2=A0* Fixed storage pool size check in case of a drbdmanage migration</fo=
nt></font></div><div><font size=3D"1"><font face=3D"monospace, monospace">=
=C2=A0* Fixed node reconnect creating error reports</font></font></div><div=
><font size=3D"1"><font face=3D"monospace, monospace">=C2=A0* Fixed a missi=
ng write lock on storage pool definition map</font></font></div><div><font =
size=3D"1"><font face=3D"monospace, monospace">=C2=A0* Multiple fixes to sn=
apshots<br></font><span style=3D"font-family:monospace,monospace">=C2=A0* D=
atabase compatibility fixes to ensure linstor runs on all kind of SQL datab=
ases</span></font></div></div></div><div><font size=3D"1"><font face=3D"mon=
ospace, monospace"><br></font></font></div><div><font size=3D"1"><font face=
=3D"monospace, monospace"><a href=3D"http://www.linbit.com/downloads/linsto=
r/linstor-server-0.7.3.tar.gz" target=3D"_blank" rel=3D"noreferrer">http://=
www.linbit.com/downloads/linstor/linstor-server-0.7.3.tar.gz</a></font><br>=
</font></div><div><font size=3D"1"><span style=3D"font-family:monospace,mon=
ospace"><br></span></font></div><div><font size=3D"1"><span style=3D"font-f=
amily:monospace,monospace">linstor-client/python-linstor 0.7.2</span></font=
></div><div><font size=3D"1"><span style=3D"font-family:monospace,monospace=
">-----------------------------------</span></font></div><div><span style=
=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Added snapsh=
ot rollback command</span><font size=3D"1"><font face=3D"monospace, monospa=
ce"><br></font></font></div><div><font size=3D"1"><font face=3D"monospace, =
monospace">=C2=A0* All object name lookups=C2=A0should be case insensitive =
now</font></font></div><div><font size=3D"1"><span style=3D"font-family:mon=
ospace,monospace">=C2=A0* Added warnings for list-properties command, if th=
eir is no object with that name</span></font></div><div><font face=3D"monos=
pace, monospace" size=3D"1"><br></font></div><div><font face=3D"monospace, =
monospace" size=3D"1"><a href=3D"http://www.linbit.com/downloads/linstor/py=
thon-linstor-0.7.2.tar.gz" target=3D"_blank" rel=3D"noreferrer">http://www.=
linbit.com/downloads/linstor/python-linstor-0.7.2.tar.gz</a><br></font></di=
v><div><a href=3D"http://www.linbit.com/downloads/linstor/linstor-client-0.=
7.2.tar.gz" target=3D"_blank" rel=3D"noreferrer"><font face=3D"monospace, m=
onospace" size=3D"1">http://www.linbit.com/downloads/linstor/linstor-client=
-0.7.2.tar.gz</font></a><br></div><div><br></div><div>Linstor PPA:<br><a hr=
ef=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" tar=
get=3D"_blank" rel=3D"noreferrer">https://launchpad.net/~linbit/+archive/ub=
untu/linbit-drbd9-stack</a><br></div><div><br></div><div>Best regards,</div=
><div>Rene</div></div></div></div></div></div>

--000000000000790ba8057b423973--
