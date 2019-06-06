Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 2154B1011BFC
	for <drbd-announce@lists.linbit.com>;
	Thu,  6 Jun 2019 15:46:28 +0200 (CEST)
Received: by mail-wm1-f46.google.com with SMTP id t5so2375wmh.3
	for <drbd-announce@lists.linbit.com>;
	Thu, 06 Jun 2019 06:46:28 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 6 Jun 2019 15:46:17 +0200
Message-ID: <CAHmn2DM7Wk3AGmRJZ_HL6UfDtkPogtxAnPX1KseY0=-jBHJYsw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000d478a4058aa7f052"
Subject: [DRBD-announce] python-linstor 0.9.6, linstor-client 0.9.6,
	linstor-opennebula 0.9.5
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

--000000000000d478a4058aa7f052
Content-Type: text/plain; charset="UTF-8"

Hi!

The 3 mentions libraries got mostly bug fixes with this release,
further details on the bugs fixed below:


python-linstor 0.9.6
-----------------------------------
 * Fixed: Incorrect ApiCallResponse output for v0 machine readable
format(object-refs)
 * Fixed: Resource class check for _linstor_name before using it (non
existing resources)
 * Fixed: Resource class only set the storage pool name on the volume if it
isn't diskless
 * Resource class gives better errors on snapshot methods

https://www.linbit.com/downloads/linstor/python-linstor-0.9.6.tar.gz

linstor-client 0.9.6
-----------------------------------
 * Fixed: Correctly check for provider values
 * Storage pool list better handle storage pool errors with upcoming
linstor-server version

https://www.linbit.com/downloads/linstor/linstor-client-0.9.6.tar.gz

linstor-opennebula 0.9.5
-----------------------------------
 * Fixed: System datastore VM instances without a context image
 * Fixed: Always delete temporary snapshot on clone actions with snapshot
clone mode
 * Fixed: Copy datastore used wrong source image
 * Added extended TM_MAD_CONF for Opennebula 5.8 in README

https://www.linbit.com/downloads/connectors/linstor-opennebula-0.9.5.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000d478a4058aa7f052
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>The 3 mentions libraries got mostly=
 bug fixes with this release,</div><div>further details on the bugs fixed b=
elow:</div><div><br></div><div><div><div><font size=3D"1"><span style=3D"fo=
nt-family:monospace,monospace"><br class=3D"m_6287807472185891488gmail-Appl=
e-interchange-newline">python-linstor 0.9.6</span></font></div><div><font s=
ize=3D"1"><span style=3D"font-family:monospace,monospace">-----------------=
------------------</span></font></div><div><font face=3D"monospace, monospa=
ce" size=3D"1">=C2=A0* Fixed: Incorrect ApiCallResponse output for v0 machi=
ne readable format(object-refs)</font></div></div><div><span style=3D"font-=
family:monospace,monospace;font-size:x-small">=C2=A0* Fixed: Resource class=
 check for _linstor_name before using it (non existing resources)</span></d=
iv><div><span style=3D"font-family:monospace,monospace;font-size:x-small">=
=C2=A0* Fixed: Resource class only set the storage pool name on the volume =
if it isn&#39;t diskless</span></div><div><span style=3D"font-family:monosp=
ace,monospace;font-size:x-small">=C2=A0* Resource class gives better errors=
 on snapshot methods</span></div><div><br></div><div><font size=3D"1"><font=
 face=3D"monospace, monospace"><a href=3D"https://www.linbit.com/downloads/=
linstor/python-linstor-0.9.6.tar.gz" target=3D"_blank">https://www.linbit.c=
om/downloads/linstor/python-linstor-0.9.6.tar.gz</a></font></font></div></d=
iv><div><font size=3D"1"><br></font></div><div><div><div><font size=3D"1"><=
span style=3D"font-family:monospace,monospace">linstor-client 0.9.6</span><=
/font></div><div><font size=3D"1"><span style=3D"font-family:monospace,mono=
space">-----------------------------------</span></font></div><div><font fa=
ce=3D"monospace, monospace" size=3D"1">=C2=A0* Fixed: Correctly check for p=
rovider values</font></div></div><div><span style=3D"font-family:monospace,=
monospace;font-size:x-small">=C2=A0* Storage pool list better handle storag=
e pool errors with upcoming linstor-server version</span></div><div><br></d=
iv><div><font size=3D"1"><font face=3D"monospace, monospace"><a href=3D"htt=
ps://www.linbit.com/downloads/linstor/linstor-client-0.9.6.tar.gz" target=
=3D"_blank">https://www.linbit.com/downloads/linstor/linstor-client-0.9.6.t=
ar.gz</a></font></font></div></div><div><font size=3D"1"><br></font></div><=
div><div><font size=3D"1"><span style=3D"font-family:monospace,monospace">l=
instor-opennebula 0.9.5</span></font></div><div><font size=3D"1"><span styl=
e=3D"font-family:monospace,monospace">-----------------------------------</=
span></font></div><div><font face=3D"monospace, monospace" size=3D"1">=C2=
=A0* Fixed: System datastore VM instances without a context image</font></d=
iv></div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* Fixed:=
 Always delete temporary snapshot on clone actions with snapshot clone mode=
</font></div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* Fi=
xed: Copy datastore used wrong source image</font></div><div><font face=3D"=
monospace, monospace" size=3D"1">=C2=A0* Added extended TM_MAD_CONF for Ope=
nnebula 5.8 in README</font></div><div><font face=3D"monospace, monospace" =
size=3D"1"><br></font></div><div><a href=3D"https://www.linbit.com/download=
s/connectors/linstor-opennebula-0.9.5.tar.gz" target=3D"_blank"><font size=
=3D"1" face=3D"courier new, monospace">https://www.linbit.com/downloads/con=
nectors/linstor-opennebula-0.9.5.tar.gz</font></a><font face=3D"monospace, =
monospace" size=3D"1"><br></font></div><div><font face=3D"monospace, monosp=
ace" size=3D"1"><br></font></div><div><font face=3D"monospace, monospace" s=
ize=3D"1"><br></font></div><div><div>Linstor PPA:<br><a href=3D"https://lau=
nchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" t=
arget=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9=
-stack</a><br></div><div><br></div><div>Best regards,</div><div>Rene</div><=
/div><div><font face=3D"monospace, monospace" size=3D"1"><br></font></div><=
div><font size=3D"1"><br></font></div><div><font size=3D"1"><br></font></di=
v></div>

--000000000000d478a4058aa7f052--
