Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 90520101AC67
	for <drbd-announce@lists.linbit.com>;
	Mon, 25 Mar 2019 16:24:15 +0100 (CET)
Received: by mail-wm1-f48.google.com with SMTP id h18so9571218wml.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 25 Mar 2019 08:24:15 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 25 Mar 2019 16:17:19 +0100
Message-ID: <CAHmn2DMnrT18KvCg6MaPkDokZKH05FwkZwPeqGFrVaig8YX3MA@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000fb98e20584ecb3e3"
Subject: [DRBD-announce] Linstor-server v0.9.2, linstor-client 0.9.1 release
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

--000000000000fb98e20584ecb3e3
Content-Type: text/plain; charset="UTF-8"

Hello Linstor and DRBD community!

It's a long time since the last Linstor release, because we have been very
busy with developing new Linstor features.

There are 2 big new features with this Linstor release:

   - REST API:
   Linstor now comes with a REST API that will per default listen on port
   3370
   on localhost. Documentation is currently hosted on swagger and
   will be steadily improved:
   https://app.swaggerhub.com/apis-docs/Linstor/Linstor/1.0.0
   - Configurable storage stack per volume:
   Linstor can now create lvm or zfs volumes without an DRBD on top of it,
   default behavior is still to create storage + DRBD as it has been.
   To create a storage only resource just pass layer list argument
   on resource-definition create command:
   `linstor resource-definition create rsc --layer-list storage`

   Find more background information in this blog entry:
   https://www.linbit.com/en/linstor-grows-beyond-drbd/


In the very unlikely case that you would have a encrypted and non encrypted
volume-definition within the same resource definition, data-loss will
happen if you upgrade, it is possible to upgrade such system, for
information on how to contact us.

Other noteworthy fixes and features are listed in usual product log:

linstor-server 0.9.2
--------------------
 * REST API
 * Resource layers allowing volumes without DRBD
 * Multiple network paths, configure more than one network path for DRBD
 * Retry on failed resources, satellites will now retry to deploy resource
on failure

http://www.linbit.com/downloads/linstor/linstor-server-0.9.2.tar.gz

linstor-client/python-linstor 0.9.1
-----------------------------------
 * Global compatibility machine readable output, v0 (old) is default
 * Resource definition can now store an unrestricted user name (external
name)
 * Client fixes to work with python3
 * Improvements on the higher level API Resource object

https://www.linbit.com/downloads/linstor/python-linstor-0.9.1.tar.gz
https://www.linbit.com/downloads/linstor/linstor-client-0.9.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000fb98e20584ecb3e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Linstor and DRBD community!<div><br></div><div>It&#3=
9;s a long time since the last Linstor release, because we have been very b=
usy with developing new Linstor features.</div><div><br></div><div>There ar=
e 2 big new features with this Linstor release:</div><div><ul><li style=3D"=
margin-left:15px">REST API:<br>Linstor now comes with a REST API that will =
per default listen on port 3370<br>on localhost. Documentation is currently=
 hosted on swagger and<br>will be steadily improved:=C2=A0<a href=3D"https:=
//app.swaggerhub.com/apis-docs/Linstor/Linstor/1.0.0" target=3D"_blank">htt=
ps://app.swaggerhub.com/apis-docs/Linstor/Linstor/1.0.0</a></li><li style=
=3D"margin-left:15px">Configurable storage stack per volume:<br>Linstor can=
 now create lvm or zfs volumes without an DRBD on top of it,<br>default beh=
avior is still to create storage + DRBD as it has been.<br>To create a stor=
age only resource just pass layer list argument=C2=A0<br>on resource-defini=
tion create command:<br>`linstor resource-definition create rsc --layer-lis=
t storage`<br><br>Find more background information in this blog entry:<br><=
a href=3D"https://www.linbit.com/en/linstor-grows-beyond-drbd/" rel=3D"nore=
ferrer" target=3D"_blank">https://www.linbit.com/en/linstor-grows-beyond-dr=
bd/</a><br></li></ul><div><br></div><div>In the very unlikely case that you=
 would have a encrypted and non encrypted</div></div><div>volume-definition=
 within the same resource definition, data-loss will happen if you upgrade,=
 it is possible to upgrade such system, for information on how to contact u=
s.</div><div><br></div><div>Other noteworthy fixes and features are listed =
in usual product log:</div><div><br></div><div><div><div><span style=3D"fon=
t-family:monospace,monospace;font-size:x-small">linstor-server 0.9.2</span>=
<br></div><div><div><font face=3D"monospace, monospace" size=3D"1">--------=
------------</font></div><div><font size=3D"1"><font face=3D"monospace, mon=
ospace">=C2=A0* REST API</font></font></div><div><font size=3D"1"><font fac=
e=3D"monospace, monospace">=C2=A0* Resource layers allowing volumes without=
 DRBD</font></font></div><div><font size=3D"1"><font face=3D"monospace, mon=
ospace">=C2=A0* Multiple network paths, configure more than one network pat=
h for DRBD</font></font></div></div></div><div><font size=3D"1"><font face=
=3D"monospace, monospace">=C2=A0* Retry on failed resources, satellites wil=
l now retry to deploy resource on failure</font></font></div><div><br></div=
><div><font size=3D"1"><a href=3D"http://www.linbit.com/downloads/linstor/l=
instor-server-0.9.2.tar.gz" target=3D"_blank">http://www.linbit.com/downloa=
ds/linstor/linstor-server-0.9.2.tar.gz</a></font></div></div><div><br></div=
><div><div><font size=3D"1"><span style=3D"font-family:monospace,monospace"=
>linstor-client/python-linstor 0.9.1</span></font></div><div><font size=3D"=
1"><span style=3D"font-family:monospace,monospace">------------------------=
-----------</span></font></div><div><span style=3D"font-family:monospace,mo=
nospace;font-size:x-small">=C2=A0* Global compatibility machine readable ou=
tput, v0 (old) is default</span></div></div><div><span style=3D"font-family=
:monospace,monospace;font-size:x-small">=C2=A0* Resource definition can now=
 store an unrestricted user name (external name)</span></div><div><span sty=
le=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Client fix=
es to work with python3</span></div><div><span style=3D"font-family:monospa=
ce,monospace;font-size:x-small">=C2=A0* Improvements on the higher level AP=
I Resource object</span></div><div><font size=3D"1"><span style=3D"font-fam=
ily:monospace,monospace"><br></span></font></div><div><font size=3D"1"><fon=
t face=3D"monospace, monospace"><a href=3D"https://www.linbit.com/downloads=
/linstor/python-linstor-0.9.1.tar.gz" target=3D"_blank">https://www.linbit.=
com/downloads/linstor/python-linstor-0.9.1.tar.gz</a></font><br></font></di=
v><div><font size=3D"1"><font face=3D"monospace, monospace"><a href=3D"http=
s://www.linbit.com/downloads/linstor/linstor-client-0.9.1.tar.gz" target=3D=
"_blank">https://www.linbit.com/downloads/linstor/linstor-client-0.9.1.tar.=
gz</a><br></font></font></div><div><br></div><div><div>Linstor PPA:<br><a h=
ref=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" re=
l=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/u=
buntu/linbit-drbd9-stack</a><br></div><div><br></div><div>Best regards,</di=
v><div>Rene</div></div></div>

--000000000000fb98e20584ecb3e3--
