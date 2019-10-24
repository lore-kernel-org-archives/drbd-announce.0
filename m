Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id C3F5E4203FB
	for <drbd-announce@lists.linbit.com>;
	Thu, 24 Oct 2019 16:18:02 +0200 (CEST)
Received: by mail-wm1-f43.google.com with SMTP id c22so2797681wmd.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 24 Oct 2019 07:18:02 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 24 Oct 2019 16:10:20 +0200
Message-ID: <CAHmn2DPakB=eesnC-EQJRvWOBeur0VEAA-_yQt9mXZmHr_tO7A@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000a2698c0595a898b3"
Subject: [DRBD-announce] python-linstor, linstor-client 1.0.4 release
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

--000000000000a2698c0595a898b3
Content-Type: text/plain; charset="UTF-8"

Hi!

This client release fixed a few bugs and changed(breaking) a few filter
options
all of them should have now short-forms in lower case.
The new auto-tiebreaker resources will not show per default in the list
output
until `-a` is specified.


python-linstor 1.0.4
--------------------
 * Add resource group support for high level API
 * Add controller filter support

https://www.linbit.com/downloads/linstor/python-linstor-1.0.4.tar.gz

linstor-client 1.0.4
--------------------
 * Show failed Volumes in volume list output
 * Add `-a`, `--all` flag for showing all resources
 * Fix broken `-m` on prop list commands

https://www.linbit.com/downloads/linstor/linstor-client-1.0.4.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000a2698c0595a898b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>This client release fixed a few bug=
s and changed(breaking) a few filter options</div><div>all of them should h=
ave now short-forms in lower case.</div><div>The new auto-tiebreaker resour=
ces will not show per default in the list output</div><div>until `-a` is sp=
ecified.</div><div><br></div><div><br></div><div><div><div><div><div><font =
size=3D"1"><span style=3D"font-family:monospace,monospace">python-linstor 1=
.0.4</span></font></div><div><font size=3D"1"><span style=3D"font-family:mo=
nospace,monospace">--------------------</span></font></div><div><font face=
=3D"monospace, monospace" size=3D"1">=C2=A0* Add resource group support for=
 high level API</font></div></div><div><font face=3D"monospace, monospace" =
size=3D"1">=C2=A0* Add controller filter support</font></div><div><br></div=
><div><font size=3D"1"><font face=3D"monospace, monospace"><a href=3D"https=
://www.linbit.com/downloads/linstor/python-linstor-1.0.4.tar.gz">https://ww=
w.linbit.com/downloads/linstor/python-linstor-1.0.4.tar.gz</a></font></font=
></div></div><div><font size=3D"1"><br></font></div><div><div><div><font si=
ze=3D"1"><span style=3D"font-family:monospace,monospace">linstor-client 1.0=
.4</span></font></div><div><font size=3D"1"><span style=3D"font-family:mono=
space,monospace">--------------------</span></font></div><div><font face=3D=
"monospace"><span style=3D"font-size:x-small">=C2=A0*</span><font size=3D"1=
">=C2=A0Show failed Volumes in volume list output</font></font><span style=
=3D"font-family:monospace,monospace"><font size=3D"1">=C2=A0</font></span><=
/div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* Add `-a`, =
`--all` flag for showing all resources</font></div></div><div><font face=3D=
"monospace, monospace" size=3D"1">=C2=A0* Fix broken `-m` on prop list comm=
ands</font></div><div><br></div><div><font size=3D"1"><font face=3D"monospa=
ce, monospace"><a href=3D"https://www.linbit.com/downloads/linstor/linstor-=
client-1.0.4.tar.gz">https://www.linbit.com/downloads/linstor/linstor-clien=
t-1.0.4.tar.gz</a></font></font></div></div></div><div><br></div><div><br><=
/div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+ar=
chive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https=
://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><d=
iv><br></div><div>Best regards,</div><div>Rene</div></div></div></div>

--000000000000a2698c0595a898b3--
