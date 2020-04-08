Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id A9F694203E8
	for <drbd-announce@lists.linbit.com>;
	Wed,  8 Apr 2020 18:47:18 +0200 (CEST)
Received: by mail-wm1-f45.google.com with SMTP id f20so144353wmh.3
	for <drbd-announce@lists.linbit.com>;
	Wed, 08 Apr 2020 09:47:18 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 8 Apr 2020 18:47:07 +0200
Message-ID: <CAHmn2DPanF+nf_vQSNu8TLZeL+G11H0UPE5sk337jcJniNdB4w@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000cafe4305a2ca407e"
Subject: [DRBD-announce] python-linstor, linstor-client 1.0.15 release
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

--000000000000cafe4305a2ca407e
Content-Type: text/plain; charset="UTF-8"

Hi!

New client release brings support for dm-cache layer and a bunch of fixes
for resource group
commands, it is now also finally possible to use size suffixes for drbd
options.

python-linstor 1.0.15
---------------------
 * Fix resource-group modify, removing options
 * Support resource group spawn with external name
 * Add dm-cache layer support

https://www.linbit.com/downloads/linstor/python-linstor-1.0.15.tar.gz

linstor-client 1.0.15
---------------------
 * Fix resource usage color output (light green again)
 * Fix drbd-option command with byte like values, size unit (Gib, Mib) can
now be used again
 * Fix resource group list properties
 * Fix modifying of resource group values
 * Fix locale detection bug for node describe command
 * Add external name option to resource group spawn

https://www.linbit.com/downloads/linstor/linstor-client-1.0.15.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000cafe4305a2ca407e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>New client release brings support f=
or dm-cache layer and a bunch of fixes for resource group</div><div>command=
s, it is now also finally possible to use size suffixes for drbd options.</=
div><div><div><br></div><div><span style=3D"font-family:monospace,monospace=
;font-size:x-small">python-linstor 1.0.15</span><br></div><div><div><div><d=
iv><div><font size=3D"1"><span style=3D"font-family:monospace,monospace">--=
-------------------</span></font></div><div><font face=3D"monospace" size=
=3D"1">=C2=A0* Fix resource-group modify, removing options</font></div></di=
v><div><font face=3D"monospace" size=3D"1">=C2=A0* Support resource group s=
pawn with external name</font></div><div><font face=3D"monospace" size=3D"1=
">=C2=A0* Add dm-cache layer support</font></div><div><br></div><div><font =
size=3D"1"><font face=3D"monospace, monospace"><a href=3D"https://www.linbi=
t.com/downloads/linstor/python-linstor-1.0.15.tar.gz">https://www.linbit.co=
m/downloads/linstor/python-linstor-1.0.15.tar.gz</a></font></font></div></d=
iv><div><font size=3D"1"><br></font></div><div><div><div><font size=3D"1"><=
span style=3D"font-family:monospace,monospace">linstor-client 1.0.15</span>=
</font></div><div><font size=3D"1"><span style=3D"font-family:monospace,mon=
ospace">---------------------</span></font></div><div><font face=3D"monospa=
ce"><span style=3D"font-size:x-small">=C2=A0*</span><font size=3D"1">=C2=A0=
Fix resource usage color output (light green again)</font></font></div></di=
v><div><font face=3D"monospace"><font size=3D"1">=C2=A0* Fix drbd-option co=
mmand with byte like values, size unit (Gib, Mib) can now be used again</fo=
nt></font></div><div><font face=3D"monospace"><font size=3D"1">=C2=A0* Fix =
resource group list properties</font></font></div><div><font face=3D"monosp=
ace"><font size=3D"1">=C2=A0* Fix modifying of resource group values</font>=
</font></div><div><font face=3D"monospace"><font size=3D"1">=C2=A0* Fix loc=
ale detection bug for node describe command</font></font></div><div><font f=
ace=3D"monospace"><font size=3D"1">=C2=A0* Add external name option to reso=
urce group spawn</font></font></div><div><br></div><div><font size=3D"1"><f=
ont face=3D"monospace, monospace"><a href=3D"https://www.linbit.com/downloa=
ds/linstor/linstor-client-1.0.15.tar.gz">https://www.linbit.com/downloads/l=
instor/linstor-client-1.0.15.tar.gz</a></font></font></div></div></div><div=
><br></div><div>Linstor PPA:<br></div><div><div><a href=3D"https://launchpa=
d.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=
=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stac=
k</a><br></div><div><br></div><div>Best regards,</div><div>Rene</div></div>=
</div></div></div>

--000000000000cafe4305a2ca407e--
