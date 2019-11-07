Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id C4F24420343
	for <drbd-announce@lists.linbit.com>;
	Thu,  7 Nov 2019 15:34:49 +0100 (CET)
Received: by mail-wm1-f50.google.com with SMTP id q70so2745762wme.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 07 Nov 2019 06:34:49 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 7 Nov 2019 15:34:37 +0100
Message-ID: <CAHmn2DN6R+H2z4K_uqSxQfRNOXQZ=A7+5Tk7-E0vnWGr3qPJpw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000004821ce0596c291f5"
Subject: [DRBD-announce] linstor-server 1.2.1 release
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

--0000000000004821ce0596c291f5
Content-Type: text/plain; charset="UTF-8"

Hi!

Smaller bugfix release with a few small additions.

linstor-server 1.2.1
--------------------
 * Allow configuration of etcd with tls
 * Use more environment variables to configure Controller or Satellite:
   LS_REST_BIND_ADDRESS
   LS_REST_BIND_ADDRESS_SECURE
   LS_CONFIG_DIRECTORY
   LS_LOG_DIRECTORY
   LS_LOG_LEVEL
   LS_KEEP_RES
 * DRBD resource files will now be backuped
 * Delete old snapshot-restore properties that were never deleted
 * Always skip initial sync on ZFS
 * Fix query-max-volume-size REST call, expected incorrect POST data
 * REST-API at version 1.0.10

https://www.linbit.com/downloads/linstor/linstor-server-1.2.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--0000000000004821ce0596c291f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Smaller bugfix release with a few s=
mall additions.</div><div><br></div><div><div><div><span style=3D"font-fami=
ly:monospace,monospace;font-size:x-small">linstor-server 1.2.1</span></div>=
<div><div><div><font face=3D"monospace, monospace" size=3D"1">-------------=
-------</font></div><div><span style=3D"font-family:monospace,monospace;fon=
t-size:x-small">=C2=A0* Allow configuration of etcd with tls</span></div><d=
iv><span style=3D"font-size:x-small"><font face=3D"monospace">=C2=A0* Use m=
ore environment variables to configure Controller or Satellite:</font></spa=
n></div><div><font size=3D"1" face=3D"monospace">=C2=A0 =C2=A0LS_REST_BIND_=
ADDRESS</font></div><div><font size=3D"1" face=3D"monospace">=C2=A0 =C2=A0L=
S_REST_BIND_ADDRESS_SECURE</font></div><div><font size=3D"1" face=3D"monosp=
ace">=C2=A0 =C2=A0LS_CONFIG_DIRECTORY<br>=C2=A0 =C2=A0LS_LOG_DIRECTORY<br>=
=C2=A0 =C2=A0LS_LOG_LEVEL</font></div><div><font size=3D"1" face=3D"monospa=
ce">=C2=A0 =C2=A0LS_KEEP_RES</font></div><div><font size=3D"1" face=3D"mono=
space">=C2=A0* DRBD resource files will now be backuped</font></div><div><f=
ont size=3D"1" face=3D"monospace">=C2=A0* Delete old snapshot-restore prope=
rties that were never deleted</font></div><div><font size=3D"1" face=3D"mon=
ospace">=C2=A0* Always skip initial sync on ZFS</font></div><div><font size=
=3D"1" face=3D"monospace">=C2=A0* Fix query-max-volume-size REST call, expe=
cted incorrect POST data</font></div><div><font size=3D"1" face=3D"monospac=
e">=C2=A0* REST-API at version 1.0.10</font></div><div><br></div></div><div=
><font size=3D"1" face=3D"monospace"><a href=3D"https://www.linbit.com/down=
loads/linstor/linstor-server-1.2.1.tar.gz" target=3D"_blank">https://www.li=
nbit.com/downloads/linstor/linstor-server-1.2.1.tar.gz</a></font></div></di=
v></div><div><br></div><div><div>Linstor PPA:<br><a href=3D"https://launchp=
ad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" targe=
t=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-sta=
ck</a><br></div><div><br></div><div>Best regards,</div><div>Rene</div></div=
></div></div>

--0000000000004821ce0596c291f5--
