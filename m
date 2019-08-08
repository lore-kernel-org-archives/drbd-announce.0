Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 1E82D101AC43
	for <drbd-announce@lists.linbit.com>;
	Thu,  8 Aug 2019 15:00:58 +0200 (CEST)
Received: by mail-wm1-f53.google.com with SMTP id e8so3649414wme.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 08 Aug 2019 06:00:58 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 8 Aug 2019 14:55:37 +0200
Message-ID: <CAHmn2DMjN=Li0L10_nfD3PWsRYQB6cqsDByksZ0SsFdQWUaGpA@mail.gmail.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000a1dbb9058f9a93c4"
Subject: [DRBD-announce] Linstor 1.0.0 release
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

--000000000000a1dbb9058f9a93c4
Content-Type: text/plain; charset="UTF-8"

Hi!

We had finally enough courage to tag this release 1.0.0.
There is one new shiny new feature called "resource groups", but apart
from that
only bug fixes were made.

* Resource groups
A resource group is a parent object of a resource definition and all
property changes
made on a resource group will be inherited by its resource definition
children.
The resource group also stores settings for auto-place rules and can spawn
a resource definition depending on the stored rules.
Here is a example:

```
linstor resource-group create my_group --place-count 3
linstor volume-group create my_group

linstor resource-group spawn-resources my_group myresource 2G
```

Some more release details:

linstor-server 1.0.0
--------------------
 * Added resource groups/volume groups
 * REST-API version 1.0.8
 * Fixed incorrect HTTP initialization if rest bind address was given by cli
 * Fixed rollback in props container
 * Fixed sysfs throttling with nvme diskless
 * Allow log level to be set in linstor.toml or cli
 * External command timeout is now configurable

https://www.linbit.com/downloads/linstor/linstor-server-1.0.0.tar.gz

python-linstor 1.0.0
--------------------
 * Added resource groups/volume groups methods

https://www.linbit.com/downloads/linstor/python-linstor-1.0.0.tar.gz

linstor-client 1.0.0
--------------------
 * Added resource groups/volume groups commands
 * Table output has now support for multiline rows

https://www.linbit.com/downloads/linstor/linstor-client-1.0.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000a1dbb9058f9a93c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>We had finally enough courage to ta=
g this release 1.0.0.</div><div>There is one new shiny new feature called &=
quot;resource groups&quot;, but apart from=C2=A0that</div><div>only bug fix=
es were made.</div><div><br></div><div>* Resource groups</div><div>A resour=
ce group is a parent object of a resource definition and all property chang=
es</div><div>made on a resource group will be inherited by its resource def=
inition children.</div><div>The resource group also stores settings for aut=
o-place rules and can spawn a resource definition depending on the stored r=
ules.</div><div>Here is a example:</div><div><br></div><div>```</div><div><=
font face=3D"monospace">linstor resource-group create my_group --place-coun=
t 3</font></div><div><font face=3D"monospace">linstor volume-group create m=
y_group</font></div><div><br></div><div><font face=3D"monospace">linstor re=
source-group spawn-resources my_group myresource 2G</font></div><div>```</d=
iv><div><br></div><div>Some more release details:</div><div><br></div><div>=
<div><div><span style=3D"font-family:monospace,monospace;font-size:x-small"=
>linstor-server 1.0.0</span></div><div><div><div><font face=3D"monospace, m=
onospace" size=3D"1">--------------------</font></div><div><span style=3D"f=
ont-family:monospace,monospace;font-size:x-small">=C2=A0* Added resource gr=
oups/volume groups</span></div><div><font face=3D"monospace, monospace" siz=
e=3D"1">=C2=A0* REST-API version 1.0.8</font></div><div><span style=3D"font=
-family:monospace,monospace;font-size:x-small">=C2=A0* Fixed incorrect HTTP=
 initialization if rest bind address was given by cli</span><br></div><div>=
<span style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* F=
ixed rollback in props container</span></div><div><span style=3D"font-famil=
y:monospace,monospace;font-size:x-small">=C2=A0* Fixed sysfs throttling wit=
h nvme diskless</span></div><div><span style=3D"font-family:monospace,monos=
pace;font-size:x-small">=C2=A0* Allow log level to be set in linstor.toml o=
r cli</span></div><div><span style=3D"font-family:monospace,monospace;font-=
size:x-small">=C2=A0* External command timeout is now configurable</span></=
div><div><br></div></div><div><font size=3D"1" face=3D"monospace"><a href=
=3D"https://www.linbit.com/downloads/linstor/linstor-server-1.0.0.tar.gz">h=
ttps://www.linbit.com/downloads/linstor/linstor-server-1.0.0.tar.gz</a></fo=
nt></div></div></div><div><br></div><div><div><div><div><font size=3D"1"><s=
pan style=3D"font-family:monospace,monospace">python-linstor 1.0.0</span></=
font></div><div><font size=3D"1"><span style=3D"font-family:monospace,monos=
pace">--------------------</span></font></div><div><font face=3D"monospace,=
 monospace" size=3D"1">=C2=A0* Added resource groups/volume groups methods<=
/font></div></div><div><br></div><div><font size=3D"1"><font face=3D"monosp=
ace, monospace"><a href=3D"https://www.linbit.com/downloads/linstor/python-=
linstor-1.0.0.tar.gz">https://www.linbit.com/downloads/linstor/python-linst=
or-1.0.0.tar.gz</a></font></font></div></div><div><font size=3D"1"><br></fo=
nt></div><div><div><div><font size=3D"1"><span style=3D"font-family:monospa=
ce,monospace">linstor-client 1.0.0</span></font></div><div><font size=3D"1"=
><span style=3D"font-family:monospace,monospace">--------------------</span=
></font></div><div><span style=3D"font-family:monospace,monospace;font-size=
:x-small">=C2=A0* Added resource groups/volume groups commands</span></div>=
<div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* Table output ha=
s now support for multiline rows</font></div></div><div><br></div><div><fon=
t size=3D"1"><font face=3D"monospace, monospace"><a href=3D"https://www.lin=
bit.com/downloads/linstor/linstor-client-1.0.0.tar.gz">https://www.linbit.c=
om/downloads/linstor/linstor-client-1.0.0.tar.gz</a></font></font></div></d=
iv></div><div><br></div><div><br></div><div><div>Linstor PPA:<br><a href=3D=
"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"n=
oreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/=
linbit-drbd9-stack</a><br></div><div><br></div><div>Best regards,</div><div=
>Rene</div></div></div></div>

--000000000000a1dbb9058f9a93c4--
