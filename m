Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 73F3A1011BFC
	for <drbd-announce@lists.linbit.com>;
	Thu, 23 May 2019 14:36:42 +0200 (CEST)
Received: by mail-wr1-f50.google.com with SMTP id f10so6106575wre.7
	for <drbd-announce@lists.linbit.com>;
	Thu, 23 May 2019 05:36:42 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 23 May 2019 14:36:30 +0200
Message-ID: <CAHmn2DMLsBNtjru_kh4zBLg9ReGtzaQwV8c_5nrjC_Gbmqa6=w@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000008278db05898d55ec"
Subject: [DRBD-announce] Linstor-server v0.9.9, linstor-client 0.9.4
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

--0000000000008278db05898d55ec
Content-Type: text/plain; charset="UTF-8"

Hi!

The main purpose of this release is to switch the client finally to the new
REST-API, therefore we had to bump the REST-API version again and add some
missing functionality.

The client machine readable v0 output is nearly the same, just some child
UUID objects are removed from the output, but we still recommend any script
writer to directly use the REST-API and skip the client for such tasks.

Our protobuf API is now deprecated and will probably removed in one of the
following releases.

linstor-server 0.9.9
--------------------
 * REST-API v1.0.4:
   - Added /v1/views/storage-pools overview
   - Added UUID for main objects
   - Enable gzip compression if requested
 * Added WaitTimeoutAfterCreate property
 * Fixed: repeatedly created error logs for version mismatch on satellites
 * Fixed ZFS volume resize
 * Fixed out of date usable size reporting
 * Removed DISKLESS provider dependency on DRBD

https://www.linbit.com/downloads/linstor/linstor-server-0.9.9.tar.gz

linstor-client/python-linstor 0.9.4
-----------------------------------
 * API/Client now uses REST-API
 * Added curl command output mode
 * Updated to latest drbd options
 * DRBDManage migrate generator now uses resource transactions
 * Package support for RHEL8

https://www.linbit.com/downloads/linstor/python-linstor-0.9.4.tar.gz
https://www.linbit.com/downloads/linstor/linstor-client-0.9.4.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--0000000000008278db05898d55ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>The main purpose of this release is=
 to switch the client finally to the new</div><div>REST-API, therefore we h=
ad to bump the REST-API version again and add some missing functionality.</=
div><div><br></div><div>The client machine readable v0 output is nearly the=
 same, just some child UUID objects are removed from the output, but we sti=
ll recommend any script writer to directly use the REST-API and skip the cl=
ient for such tasks.</div><div><br></div><div>Our protobuf API is now depre=
cated and will probably removed in one of the following releases.</div><div=
><br></div><div><div><span style=3D"font-family:monospace,monospace;font-si=
ze:x-small">linstor-server 0.9.9</span></div><div><div><div><font face=3D"m=
onospace, monospace" size=3D"1">--------------------</font></div><div><span=
 style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* REST-A=
PI v1.0.4:</span></div><div><span style=3D"font-family:monospace,monospace;=
font-size:x-small">=C2=A0 =C2=A0- Added /v1/views/storage-pools overview</s=
pan></div><div><span style=3D"font-family:monospace,monospace;font-size:x-s=
mall">=C2=A0 =C2=A0- Added UUID for main objects</span></div><div><span sty=
le=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0 =C2=A0- Ena=
ble gzip compression if requested</span></div><div><span style=3D"font-fami=
ly:monospace,monospace;font-size:x-small">=C2=A0* Added WaitTimeoutAfterCre=
ate property</span></div><div><font face=3D"monospace, monospace" size=3D"1=
">=C2=A0* Fixed: repeatedly=C2=A0created error logs for version mismatch on=
 satellites</font></div><div><font face=3D"monospace, monospace" size=3D"1"=
>=C2=A0* Fixed ZFS volume resize</font></div><div><font face=3D"monospace, =
monospace" size=3D"1">=C2=A0* Fixed out of date usable size reporting</font=
></div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* Removed =
DISKLESS provider dependency on DRBD</font></div><div><br></div></div><div>=
<font size=3D"1"><a href=3D"https://www.linbit.com/downloads/linstor/linsto=
r-server-0.9.9.tar.gz">https://www.linbit.com/downloads/linstor/linstor-ser=
ver-0.9.9.tar.gz</a></font></div></div><div><br></div><div><div><div><font =
size=3D"1"><span style=3D"font-family:monospace,monospace">linstor-client/p=
ython-linstor 0.9.4</span></font></div><div><font size=3D"1"><span style=3D=
"font-family:monospace,monospace">-----------------------------------</span=
></font></div><div><span style=3D"font-family:monospace,monospace;font-size=
:x-small">=C2=A0* API/Client now uses REST-API</span></div></div><div><span=
 style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Added =
curl command output mode</span></div><div><span style=3D"font-family:monosp=
ace,monospace;font-size:x-small">=C2=A0* Updated to latest drbd options</sp=
an></div><div><span style=3D"font-family:monospace,monospace;font-size:x-sm=
all">=C2=A0* DRBDManage migrate generator now uses resource transactions</s=
pan></div><div><span style=3D"font-family:monospace,monospace;font-size:x-s=
mall">=C2=A0* Package support for RHEL8</span></div><div><br></div><div><fo=
nt size=3D"1"><font face=3D"monospace, monospace"><a href=3D"https://www.li=
nbit.com/downloads/linstor/python-linstor-0.9.4.tar.gz">https://www.linbit.=
com/downloads/linstor/python-linstor-0.9.4.tar.gz</a></font><br></font></di=
v><div><font size=3D"1"><font face=3D"monospace, monospace"><a href=3D"http=
s://www.linbit.com/downloads/linstor/linstor-client-0.9.4.tar.gz">https://w=
ww.linbit.com/downloads/linstor/linstor-client-0.9.4.tar.gz</a></font></fon=
t></div></div></div><div><div><br class=3D"gmail-Apple-interchange-newline"=
>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/l=
inbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.n=
et/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><div><br></div><=
div>Best regards,</div><div>Rene</div></div></div>

--0000000000008278db05898d55ec--
