Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 6ECCB420385
	for <drbd-announce@lists.linbit.com>;
	Wed,  4 Mar 2020 13:20:11 +0100 (CET)
Received: by mail-wm1-f49.google.com with SMTP id g134so1818829wme.3
	for <drbd-announce@lists.linbit.com>;
	Wed, 04 Mar 2020 04:20:11 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 4 Mar 2020 13:19:00 +0100
Message-ID: <CAHmn2DPGsOS=3NZ_eXcOSs64fH9N9KiV-WX3NFeTQ=bp0wKQqw@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000007d5ac605a0066d8f"
Subject: [DRBD-announce] linstor-server 1.4.3 release
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

--0000000000007d5ac605a0066d8f
Content-Type: text/plain; charset="UTF-8"

Hi All!

This bug fix release also lifts a restriction with etcd server, by now we
always
required to set the max-transaction to at least 1024 for etcd database.
This restriction
is now obsolete and the default of 128 should also work.
Apart from this we fixed quite a few bugs.

linstor-server 1.4.3
--------------------
 * Removed etcd transaction restriction
 * Better logging settings for Linstor related logs
 * SQL removed ON DELETE constraints
 * Better physical-storage error checks
 * Auto place can triggered again to re-autoplace depending on resource
group settings
 * Property setters will now report what was changed
 * ETCD fix incorrect property access
 * Tiebreaker fixed takeover into diskless pools
 * Fixed a rare race condition in HashMaps on satellite
 * Flyway will no longer migrate if a newer database was detected
 * Fixed rollback in transactional list/set
 * Filethin provider correctly report allocated size
 * New /controller/config rest-api
 * Rest-API update to version 1.0.14

https://www.linbit.com/downloads/linstor/linstor-server-1.4.3.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000007d5ac605a0066d8f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All!<div><br></div><div>This bug fix release also lifts=
 a restriction with etcd server, by now we always</div><div>required to set=
 the max-transaction to at least 1024 for etcd database. This restriction</=
div><div>is now obsolete and the default of 128 should also work.</div><div=
>Apart from this we fixed quite a few bugs.<br><div><br></div><div><span st=
yle=3D"font-family:monospace,monospace;font-size:x-small">linstor-server 1.=
4.3</span></div><div><div><div><font face=3D"monospace, monospace" size=3D"=
1">--------------------</font></div><div><span style=3D"font-family:monospa=
ce,monospace;font-size:x-small">=C2=A0* Removed etcd transaction=C2=A0restr=
iction</span></div></div><div><span style=3D"font-family:monospace,monospac=
e;font-size:x-small">=C2=A0* Better logging settings for Linstor related lo=
gs</span></div><div><span style=3D"font-family:monospace,monospace;font-siz=
e:x-small">=C2=A0* SQL removed ON DELETE constraints</span></div><div><span=
 style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Better=
 physical-storage error checks</span></div><div><span style=3D"font-family:=
monospace,monospace;font-size:x-small">=C2=A0* Auto place can triggered aga=
in to re-autoplace depending on resource group settings</span></div><div><s=
pan style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Pro=
perty setters will now report what was changed</span></div><div><span style=
=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* ETCD fix inc=
orrect property access</span></div><div><span style=3D"font-family:monospac=
e,monospace;font-size:x-small">=C2=A0* Tiebreaker fixed takeover into diskl=
ess pools</span></div><div><span style=3D"font-family:monospace,monospace;f=
ont-size:x-small">=C2=A0* Fixed a rare race condition in HashMaps on satell=
ite</span></div><div><span style=3D"font-family:monospace,monospace;font-si=
ze:x-small">=C2=A0* Flyway will no longer migrate if a newer database was d=
etected</span></div><div><span style=3D"font-family:monospace,monospace;fon=
t-size:x-small">=C2=A0* Fixed rollback in transactional list/set</span></di=
v><div><span style=3D"font-family:monospace,monospace;font-size:x-small">=
=C2=A0* Filethin provider correctly report allocated size</span></div><div>=
<span style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* N=
ew /controller/config rest-api</span></div><div><span style=3D"font-family:=
monospace,monospace;font-size:x-small">=C2=A0* Rest-API update to version 1=
.0.14</span></div><div><font face=3D"monospace" size=3D"1"><br></font></div=
><div><font size=3D"1" face=3D"monospace"><a href=3D"https://www.linbit.com=
/downloads/linstor/linstor-server-1.4.3.tar.gz">https://www.linbit.com/down=
loads/linstor/linstor-server-1.4.3.tar.gz</a></font></div></div><div><br></=
div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+arc=
hive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https:=
//launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><=
div><br></div><div>Cheers,</div><div>Rene</div></div></div>

--0000000000007d5ac605a0066d8f--
