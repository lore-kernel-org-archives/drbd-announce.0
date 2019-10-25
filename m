Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 111B2420008
	for <drbd-announce@lists.linbit.com>;
	Fri, 25 Oct 2019 14:08:36 +0200 (CEST)
Received: by mail-wm1-f48.google.com with SMTP id c22so1777739wmd.1
	for <drbd-announce@lists.linbit.com>;
	Fri, 25 Oct 2019 05:08:36 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Fri, 25 Oct 2019 14:08:25 +0200
Message-ID: <CAHmn2DMW+1Wc7-7D3+k_0nQxe8r3RPmnDu7Hghq6MNqH_mnmPw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000007294410595bb02c9"
Subject: [DRBD-announce] python-linstor, linstor-client 1.0.5 release
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

--0000000000007294410595bb02c9
Content-Type: text/plain; charset="UTF-8"

Hi!

Unfortunately the 1.0.4 release of python-linstor had bad error checking
for controller responses, which broke the opennebula plugin. This release
fixes this issue and also adds compatibility
code for volume definition list from old controller versions.
Additionally also the client learnt the new zstd compression method for the
latest drbd-proxy.

python-linstor 1.0.5
--------------------
 * Fixed volume_dfn_list on controller with API < 1.0.10
 * Fixed incorrect error checks in the resource high level API

https://www.linbit.com/downloads/linstor/python-linstor-1.0.5.tar.gz

linstor-client 1.0.5
--------------------
 * Added support for zstd proxy compression
 * Fixed missing global argument filters for certificate arguments

https://www.linbit.com/downloads/linstor/linstor-client-1.0.5.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--0000000000007294410595bb02c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Unfortunately the 1.0.4 release of =
python-linstor had bad error checking for controller responses, which broke=
 the opennebula plugin. This release fixes this issue and also adds compati=
bility</div><div>code for volume definition=C2=A0list from old controller v=
ersions.</div><div>Additionally also the client learnt the new zstd compres=
sion method for the latest drbd-proxy.</div><div><br></div><div><div><div><=
div><div><font size=3D"1"><span style=3D"font-family:monospace,monospace">p=
ython-linstor 1.0.5</span></font></div><div><font size=3D"1"><span style=3D=
"font-family:monospace,monospace">--------------------</span></font></div><=
div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* Fixed volume_dfn=
_list on controller with API &lt; 1.0.10</font></div></div><div><font face=
=3D"monospace, monospace" size=3D"1">=C2=A0* Fixed incorrect error checks i=
n the resource high level API</font></div><div><br></div><div><font size=3D=
"1"><font face=3D"monospace, monospace"><a href=3D"https://www.linbit.com/d=
ownloads/linstor/python-linstor-1.0.5.tar.gz">https://www.linbit.com/downlo=
ads/linstor/python-linstor-1.0.5.tar.gz</a></font></font></div></div><div><=
font size=3D"1"><br></font></div><div><div><div><font size=3D"1"><span styl=
e=3D"font-family:monospace,monospace">linstor-client 1.0.5</span></font></d=
iv><div><font size=3D"1"><span style=3D"font-family:monospace,monospace">--=
------------------</span></font></div><div><font face=3D"monospace"><span s=
tyle=3D"font-size:x-small">=C2=A0*</span><font size=3D"1">=C2=A0Added suppo=
rt for zstd proxy compression</font></font></div><div><font face=3D"monospa=
ce, monospace" size=3D"1">=C2=A0* Fixed missing global argument filters for=
 certificate arguments</font></div></div><div><br></div><div><font size=3D"=
1"><font face=3D"monospace, monospace"><a href=3D"https://www.linbit.com/do=
wnloads/linstor/linstor-client-1.0.5.tar.gz">https://www.linbit.com/downloa=
ds/linstor/linstor-client-1.0.5.tar.gz</a></font></font></div></div></div><=
div><br></div><div><br></div><div><div>Linstor PPA:<br><a href=3D"https://l=
aunchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer"=
 target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drb=
d9-stack</a><br></div><div><br></div><div>Best regards,</div><div>Rene</div=
></div></div></div>

--0000000000007294410595bb02c9--
