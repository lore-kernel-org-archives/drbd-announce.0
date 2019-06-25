Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 2C5C31028A6B
	for <drbd-announce@lists.linbit.com>;
	Tue, 25 Jun 2019 12:50:34 +0200 (CEST)
Received: by mail-wr1-f48.google.com with SMTP id n4so16109473wrs.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 25 Jun 2019 03:50:34 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 25 Jun 2019 12:50:23 +0200
Message-ID: <CAHmn2DOdC5M9gi1AU7maes10vLqPBQs31K4JQP3E1GLE-MDQmQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000be8f6b058c23b278"
Subject: [DRBD-announce] Linstor-server 0.9.12, python-linstor 0.9.8,
	linstor-client 0.9.8
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

--000000000000be8f6b058c23b278
Content-Type: text/plain; charset="UTF-8"

Hi!

This linstor-server release finally removes the "old" protobuf-API and now
will only
work with the REST-API and will only work with newer clients.
Additionally it has some bug fixes and it is now possible to throttle IO
via cgroups
and has added a /health URL that can be used for kubernets liveness checks.

Here the more detailed changelog:

linstor-server 0.9.12
---------------------
 * Protobuf-API was removed, client 0.9.3 will NOT work anymore
 * Added: modify volume rest uri, REST-API version 1.0.6
 * Added: /health HTTP GET entry point usable for kubernetes liveness checks
 * Allow throttling of IO fia cgroups blkio
 * Enabled NVME on top of LUKS layer
 * Fixed: Access to deleted data errors on satellite on resource delete
 * Fixed: Hostname check on satellites using DRBD
 * Fixed: list error reports if error report is from the future (time
mismatches)
 * Fixed: Allow PrefNic property on nodes
 * Fixed: Incorrect allocation size on lvmthin

https://www.linbit.com/downloads/linstor/linstor-server-0.9.12.tar.gz

python-linstor 0.9.8
--------------------
 * Added: linstor.volume_modify method
 * Fixed: None port output in curl-mode

https://www.linbit.com/downloads/linstor/python-linstor-0.9.8.tar.gz

linstor-client 0.9.8
--------------------
 * Added: volume subcommand with list, list-properties and set-property
 * Fixed: storage pool list properties command
 * Fixed: curl-mode output for list properties commands

https://www.linbit.com/downloads/linstor/linstor-client-0.9.8.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000be8f6b058c23b278
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>This linstor-server release finally=
 removes the &quot;old&quot; protobuf-API and now will only</div><div>work =
with the REST-API and will only work with newer clients.</div><div>Addition=
ally it has some bug fixes and it is now possible to throttle IO via cgroup=
s</div><div>and has added a /health URL that can be used for kubernets live=
ness checks.</div><div><br></div><div>Here the more detailed changelog:</di=
v><div><br></div><div><div><div><span style=3D"font-family:monospace,monosp=
ace;font-size:x-small">linstor-server 0.9.12</span></div><div><div><div><fo=
nt face=3D"monospace, monospace" size=3D"1">---------------------</font></d=
iv><div><span style=3D"font-family:monospace,monospace;font-size:x-small">=
=C2=A0* Protobuf-API was removed, client 0.9.3 will NOT work anymore</span>=
</div><div><span style=3D"font-family:monospace,monospace;font-size:x-small=
">=C2=A0* Added: modify volume rest uri, REST-API version 1.0.6</span></div=
><div><span style=3D"font-family:monospace,monospace;font-size:x-small">=C2=
=A0* Added: /health HTTP GET entry point usable for kubernetes liveness che=
cks</span></div><div><span style=3D"font-family:monospace,monospace;font-si=
ze:x-small">=C2=A0* Allow throttling of IO fia cgroups blkio</span></div><d=
iv><span style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0=
* Enabled NVME on top of LUKS layer</span></div><div><span style=3D"font-fa=
mily:monospace,monospace;font-size:x-small">=C2=A0* Fixed: Access to delete=
d data errors on satellite on resource delete</span></div><div><font face=
=3D"monospace, monospace" size=3D"1">=C2=A0* Fixed: Hostname check on satel=
lites using DRBD</font></div><div><font face=3D"monospace, monospace" size=
=3D"1">=C2=A0* Fixed: list error reports if error report is from the future=
 (time mismatches)</font></div><div><font face=3D"monospace, monospace" siz=
e=3D"1">=C2=A0* Fixed: Allow PrefNic property on nodes</font></div><div><fo=
nt face=3D"monospace, monospace" size=3D"1">=C2=A0* Fixed: Incorrect alloca=
tion size on lvmthin</font></div><div><br></div></div><div><font size=3D"1"=
><a href=3D"https://www.linbit.com/downloads/linstor/linstor-server-0.9.12.=
tar.gz">https://www.linbit.com/downloads/linstor/linstor-server-0.9.12.tar.=
gz</a></font></div></div></div><div><br></div><div><div><div><div><font siz=
e=3D"1"><span style=3D"font-family:monospace,monospace">python-linstor 0.9.=
8</span></font></div><div><font size=3D"1"><span style=3D"font-family:monos=
pace,monospace">--------------------</span></font></div><div><font face=3D"=
monospace, monospace" size=3D"1">=C2=A0* Added: linstor.volume_modify metho=
d</font></div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* F=
ixed: None port output in curl-mode</font></div></div><div><br></div><div><=
font size=3D"1"><font face=3D"monospace, monospace"><a href=3D"https://www.=
linbit.com/downloads/linstor/python-linstor-0.9.8.tar.gz">https://www.linbi=
t.com/downloads/linstor/python-linstor-0.9.8.tar.gz</a></font></font></div>=
</div><div><font size=3D"1"><br></font></div><div><div><div><font size=3D"1=
"><span style=3D"font-family:monospace,monospace">linstor-client 0.9.8</spa=
n></font></div><div><font size=3D"1"><span style=3D"font-family:monospace,m=
onospace">--------------------</span></font></div><div><font face=3D"monosp=
ace, monospace" size=3D"1">=C2=A0* Added: volume subcommand with list, list=
-properties and set-property</font></div><div><font face=3D"monospace, mono=
space" size=3D"1">=C2=A0* Fixed: storage pool list properties command</font=
></div></div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* Fi=
xed: curl-mode output for list properties commands</font></div><div><br></d=
iv><div><font size=3D"1"><font face=3D"monospace, monospace"><a href=3D"htt=
ps://www.linbit.com/downloads/linstor/linstor-client-0.9.8.tar.gz">https://=
www.linbit.com/downloads/linstor/linstor-client-0.9.8.tar.gz</a></font></fo=
nt></div></div></div><div><br></div><div><br></div><div><div>Linstor PPA:<b=
r><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-sta=
ck" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+arc=
hive/ubuntu/linbit-drbd9-stack</a><br></div><div><br></div><div>Best regard=
s,</div><div>Rene</div></div></div></div>

--000000000000be8f6b058c23b278--
