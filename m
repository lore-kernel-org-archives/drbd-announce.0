Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id B5FD41011BF6
	for <drbd-announce@lists.linbit.com>;
	Tue, 11 Jun 2019 14:34:00 +0200 (CEST)
Received: by mail-wr1-f51.google.com with SMTP id p11so12831804wre.7
	for <drbd-announce@lists.linbit.com>;
	Tue, 11 Jun 2019 05:34:00 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 11 Jun 2019 14:33:49 +0200
Message-ID: <CAHmn2DM4_D1S0kRZE-J2fNdKFY7_f40E6xxkpEgZdkhTPEdgZQ@mail.gmail.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000db4abb058b0b8260"
Subject: [DRBD-announce] Linstor-server 0.9.11
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

--000000000000db4abb058b0b8260
Content-Type: text/plain; charset="UTF-8"

Hello!

This release adds automatic log archiving for error-reports that are older
than 2 months, fixes bugs with "broken" storage pools and a bug that
prevented creating
resources.

linstor-server 0.9.11
---------------------
 * New: Archive logs that are older than 2 months
 * Improved controller and satellite startup by ~800ms
 * Better error reporting on REST-API errors
 * Fixed: Unable to create new resource if there are resource-definitions
without resources (introduced with 0.9.0)
 * Fixed: Full-sync will not fail on broken storage pools
 * Fixed: Storage pool error will be reported in new `reports` field
          on storage-pool objects (REST-API 1.0.5)
 * Fixed: Null pointer exception on snapshots with storage-only snapshots

https://www.linbit.com/downloads/linstor/linstor-server-0.9.11.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000db4abb058b0b8260
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello!<div><br></div><div>This release adds automatic log =
archiving for error-reports that are older than 2 months, fixes bugs with &=
quot;broken&quot; storage pools and a bug that prevented creating</div><div=
>resources.</div><div><br></div><div><div><span style=3D"font-family:monosp=
ace,monospace;font-size:x-small">linstor-server 0.9.11</span></div><div><di=
v><div><font face=3D"monospace, monospace" size=3D"1">---------------------=
</font></div><div><span style=3D"font-family:monospace,monospace;font-size:=
x-small">=C2=A0* New: Archive logs that are older than 2 months</span></div=
><div><span style=3D"font-family:monospace,monospace;font-size:x-small">=C2=
=A0* Improved controller and satellite startup by ~800ms</span></div><div><=
span style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Be=
tter error reporting on REST-API errors</span><br></div><div><span style=3D=
"font-family:monospace,monospace;font-size:x-small">=C2=A0* Fixed: Unable t=
o create new resource if there are resource-definitions without resources (=
introduced with 0.9.0)</span></div><div><span style=3D"font-family:monospac=
e,monospace;font-size:x-small">=C2=A0* Fixed: Full-sync will not fail on br=
oken storage pools</span></div><div><span style=3D"font-family:monospace,mo=
nospace;font-size:x-small">=C2=A0* Fixed: Storage pool error will be report=
ed in new `reports` field</span></div><div><span style=3D"font-family:monos=
pace,monospace;font-size:x-small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 on sto=
rage-pool objects (REST-API 1.0.5)</span></div><div><span style=3D"font-fam=
ily:monospace,monospace;font-size:x-small">=C2=A0* Fixed: Null pointer exce=
ption on snapshots with storage-only snapshots</span></div><div><br></div><=
/div><div><font size=3D"1"><a href=3D"https://www.linbit.com/downloads/lins=
tor/linstor-server-0.9.11.tar.gz">https://www.linbit.com/downloads/linstor/=
linstor-server-0.9.11.tar.gz</a></font></div></div></div><div><br></div><di=
v><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ub=
untu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launc=
hpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><div><br><=
/div><div>Best regards,</div><div>Rene</div></div></div>

--000000000000db4abb058b0b8260--
